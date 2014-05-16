package com.threestar

class RegisterController {

    private static final double PAYMENT_AMOUNT = 10000;

    def index() {
        redirect(action: "process")
    }

    def processFlow = {
        register {
            on("verify") {
                if (!params.invitedBy) {
                    flow.message = "Must have the phone number that send the invitation."
                    return error()
                }
                def invitedBy = User.findByPhoneNumber(params.invitedBy)
                if (!invitedBy) {
                    flow.message = "We could NOT find anyone has that phone number in our system."
                    return error()
                }

                def invitation = Invitation.findByPhoneNumberAndCountryCodeAndStatus(
                        params.phoneNumber, params.countryCode, 'ORD')
                if (!invitation) {
                    flow.message = "We could NOT see any invitation for your phone number."
                    return error()
                }
                flow.invitation = invitation

                def parent = invitation.invitedBy
                if (!parent) {
                    flow.message = "We could NOT see anyone sent this invitation."
                    return error()
                }
                if (parent.phoneNumber != params.invitedBy) {
                    flow.message = params.invitedBy + "has NOT sent this invitation. Please double check."
                    return error()
                }
                def payments = invitation.payments
                if (!payments) {
                    payments = []
                    while (parent) {
                        def payment = new Payment(amount: parent.level * PAYMENT_AMOUNT, status: 'PENDING',
                                payTo: parent.username, invitation: invitation)
                        payment.save(flush: true)
                        payments.add(payment)
                        println(parent.username + "-" + parent.level + "-" + parent.phoneNumber)
                        // looking for up line
                        parent = User.findByUsername(parent.parentId)
                    }
                }
                [payments: payments]
            }.to "payment"
            on("request").to "sendRequest"
            on("error").to "register"
            on(Exception).to "register"
        }

        payment {
            on("verify").to "register"
            on("confirm") {
                // TODO: check if all payments has been completed then generated a code, save to invitation table and send it to user
            }.to "signup"
            on("error").to "payment"
            on(Exception).to "payment"
        }

        signup {
            on("submit") {
                if (!params.username) {
                    flow.message = "Username is required"
                    return error()
                }
                def u = User.findAllByUsername(params.username)
                if (u.size() > 0) {
                    flow.message = "Username is unavailable. Please choose another."
                    return error()
                }

                if (params.password != params.repassword) {
                    flow.message = "Password not match"
                    return error()
                }
                // check verification code
                def invitation = Invitation.findByCodeAndPhoneNumberAndCountryCode(
                        params.verifyCode, flow.invitation.phoneNumber, flow.invitation.countryCode)
                if (!invitation) {
                    flow.message = "Invalid verification code. Please double check."
                    return error()
                }

                // create user to login
                def user = new User(username: params.username, password: params.password,
                    phoneNumber: flow.invitation.phoneNumber, level: invitation.invitedBy.level + 1,
                    parentId: invitation.invitedBy.username, enabled: true, countryCode: flow.invitation.countryCode,
                    accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
                UserRole.create(user, userRole, true)
            } .to "complete"
            on("error").to "signup"
            on("previous").to "payment"
        }

        complete {
            on("finish").to "login"
        }

        sendRequest {
            redirect(controller: "public", action: "join")
        }

        login {
            redirect(controller: "auth", action: "login")
        }
    }
}

package com.threestar

class RegisterController {

    private static final double PAYMENT_AMOUNT = 10000;

    def index() {
        redirect(action: "process")
    }

    def processFlow = {
        register {
            on("verify") {
                def invitation = Invitation.findAllByPhoneNumberAndInvitedByAndCountryCodeAndStatus(params.phoneNumber,
                        params.invitedBy, params.countryCode, 'ORD')
                if (invitation.size() < 1) {
                    flow.message = "Not phone number in our system"
                    return error()
                }
                def parentPhoneNumber = invitation[0].invitedBy
                def parent = User.findByPhoneNumber(parentPhoneNumber);
                if (parent == null) {
                    flow.message = "No User found"
                    return error()
                }
                def payments = [:]
                payments.put(parent.username, parent.level * PAYMENT_AMOUNT)
                def parentId = parent.parentId
                while (parentId != null && parentId != '') {
                    def nextLevel = User.findByParentId(parentId)
                    if (nextLevel != null) {
                        payments.put(nextLevel.username, nextLevel.level * PAYMENT_AMOUNT)
                        parentId = nextLevel.parentId
                    }
                }
                [paymenst: payments]
            }.to "payment"
            on("request").to "sendRequest"
            on("error").to "complete"
            on(Exception).to "complete"
        }

        payment {
            on("previous").to "register"
            on("success").to "complete"
            on("error").to "complete"
            on(Exception).to "complete"
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

package com.threestar

class PublicController {

    def index() {}

    def about() {
        render(view: "about")
    }

    def faq() {
        render(view: "faq")
    }

    def contact() {
        render(view: "contact")
    }

    def join() {
        def step = '1';
        if (params.step)
            step = params.step
        render(view: "join", model: [step: step])
    }

    def reqInvitation() {
        def adminPhone = grailsApplication.metadata.'admin.phoneNumber'
        def invitation = new Invitation(phoneNumber: params.phoneNumber, countryCode: params.countryCode,
                code: '000000', invitedBy: User.findByPhoneNumber(adminPhone), status: 'REQ')
        if (!invitation.hasErrors()) {
            invitation.save(flush: true)
            if (!invitation.hasErrors()) {
                flash.message = "Your request has been sent to administrator for processing. We will contact you via SMS."
            }
        }
        render(view: "join", model: [bean: invitation])
    }
}

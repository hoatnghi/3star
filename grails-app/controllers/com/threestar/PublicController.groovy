package com.threestar

class PublicController {
	
	def springSecurityService

    def index() { }
	
	def about() {
		render (view : "about")
	}
	
	def faq() {
		render (view : "faq")
	}
	
	def contact() {
		render (view : "contact")
	}

    def join() {
        def step = '1';
        if (params.step)
            step = params.step
        render (view : "join", model: [step: step])
    }

    def reqInvitation() {
        def step = params.step
        log.debug("*************" + step + "***********************")
        def bean
        if (step == '1') {
            def invitation = new Invitation(phoneNumber: params.phoneNumber, countryCode: params.countryCode,
                    code: '000000', invitedBy: 'admin', status: 'REQ')

            if (!invitation.hasErrors()) {
                invitation.save(flush: true)
                if (!invitation.hasErrors()) {
                    step = '2'
                    flash.message = "Your request has been sent to administrator for processing. We will contact you via SMS."
                } else {
                    bean = invitation
                }
            }
        }

        render(view: "join", model: [bean: bean, step: step])
    }
}

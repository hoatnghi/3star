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
        def invitation = new Invitation(phoneNumber: params.phoneNumber, countryCode: params.countryCode,
                code: '000000', invitedBy: '0000000000', status: 'REQ')
        if (!invitation.hasErrors()) {
            invitation.save(flush: true)
            if (!invitation.hasErrors()) {
                flash.message = "Your request has been sent to administrator for processing. We will contact you via SMS."
            }
        }
        render(view: "join", model: [bean: invitation])
    }

    def register () {
        def step = params.step
        log.debug("out" + step);
            log.debug(step.getClass())


        switch ( step ) {
            case "1":
                log.debug("step1")
                def invitation = Invitation.findAllByPhoneNumberAndCountryCodeAndInvitedBy(params.phoneNumber,
                        params.countryCode, params.invitedBy)
                if (invitation.size() == 1) {
                    // Move to step 2 to process
                    log.debug("step1 ...2")
                    step = "2"
                }
                break;
            case "2":
                log.debug("step2")
                step = "3"
                break;
            case "3":
                log.debug("step3")
                step = "4"
                break;
            case "4":
                log.debug("step4")
                step = "5"
                break;
            default:
                step = "1";
        }

        render (view: "register", model: [step: step])
    }
}

package com.threestar

import grails.plugin.springsecurity.annotation.Secured;

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class SecureController {

    def index() { }
	
	def profile() {
		render (view : "profile")
	}
	
	def message() {
		render (view : "message")
	}

    def invite() {
        render (view: "invite")
    }

    def sendInvitation() {
        if (!params.phoneNumber) {
            flash.message = "Phone Number is required"
        }
        def invitation = new Invitation(phoneNumber: params.phoneNumber, countryCode: params.countryCode,
                code: '000000', invitedBy: User.findByUsername(request.getRemoteUser()), status: 'ORD')
        if (!invitation.hasErrors()) {
            invitation.save(flush: true)
            if (!invitation.hasErrors()) {
                flash.message = "Your request has been sent to administrator for processing. We will contact you via SMS."
            }
        }
        render(view: "invite", model: [bean: invitation])
    }
}

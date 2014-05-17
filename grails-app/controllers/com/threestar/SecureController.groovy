package com.threestar

import com.threestar.utils.InvitationUtil
import grails.plugin.springsecurity.annotation.Secured;

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class SecureController {

    /**
     * Dependency injection for the springSecurityService.
     */
    def springSecurityService

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
        try {
            InvitationUtil.createInvitation(params.phoneNumber, countryCode: params.countryCode,
                    User.findByUsername(request.getRemoteUser()))
            flash.message = "Your request has been sent for processing."
        } catch (Exception ex) {
            flash.message = ex.message
        }
        render(view: "invite")
    }

    def changePassword() {
        render (view: "changePass")
    }

    def processPassword() {

        String username = request.getRemoteUser()
        String password = params.currPass
        String newPassword = params.newPass
        String newPassword2 = params.confirmPass
        if (!password || !newPassword || !newPassword2 || newPassword != newPassword2) {
            flash.message = 'Please enter your current password and a valid new password'
            render view: 'changePass'
            return
        }

        def passwordEncoder = springSecurityService.passwordEncoder

        User user = User.findByUsername(username)
        if (!passwordEncoder.isPasswordValid(user.password, password, null /*salt*/)) {
            flash.message = 'Current password is incorrect'
            render view: 'changePass'
            return
        }

        if (passwordEncoder.isPasswordValid(user.password, newPassword, null /*salt*/)) {
            flash.message = 'Please choose a different password from your current one'
            render view: 'changePass'
            return
        }

        user.password = newPassword
        user.passwordExpired = false
        user.save() // if you have password constraints check them here

        flash.message = 'Your password has been changed.'
        render view: 'changePass'
    }
}

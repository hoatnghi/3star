package com.threestar

import com.threestar.utils.InvitationUtil
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AdminController {

    def review() {
        def requests = Request.list();
        render(view: "review", model: [requests: requests])
    }

    def approveRequest() {
        if (request.isXhr()) {
            def p = Request.findByPhoneNumber(params.phoneNumber)
            if (p) {
                def inviteUser = params.invitedBy
                // if not assigned, set yourself
                if (!inviteUser)
                    inviteUser = request.getRemoteUser()
                log.debug(inviteUser)
                InvitationUtil.createInvitation(p.phoneNumber, p.countryCode, User.findByUsername(inviteUser))
                p.delete()
                // TODO send SMS message
                render("Completed")
            } else {
                renderErrors("error", "Unable to find ")
            }
        }
    }
}

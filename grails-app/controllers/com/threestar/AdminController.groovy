package com.threestar

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AdminController {

    def review() {
        def invite = Invitation.findAllByStatusAndInvitedBy('REQ', '0000000000')
        render(view: "review", model: [invitation: invite])
    }

    def approveRequest() {
        if (request.isXhr()) {
            def p = Invitation.findAllByPhoneNumber(params.phoneNumber)
            if (p.size() == 1) {
                def invite = p.get(0)
                invite.status = 'ORD'
                // TODO send SMS message
                invite.save(flush: true)
                render(invite.status)
            }
        }
    }
}

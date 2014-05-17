package com.threestar.utils

import com.threestar.Invitation
import com.threestar.Payment
import com.threestar.Request
import com.threestar.Role
import com.threestar.User
import com.threestar.UserRole

/**
 * Created by haiquach on 5/17/14.
 */
class InvitationUtil {

    private static final double PAYMENT_AMOUNT = 10000;

    def static createInvitation(def phoneNumber, def countryCode, User invitedBy) {
        def errorInviteMsg = 'Unable to save invitation'
        def invitation = new Invitation(phoneNumber: phoneNumber, countryCode: countryCode,
                code: '000000', invitedBy: invitedBy, status: 'ORD')
        if (invitation.hasErrors()) {
            throw new MissingPropertyException(errorInviteMsg);
        }
        invitation.save(flush: true)
        if (invitation.hasErrors()) {
            throw new MissingPropertyException(errorInviteMsg);
        }

        def parent = invitedBy
        def payments = []
        while (parent) {
            def payment = new Payment(amount: parent.level * PAYMENT_AMOUNT, status: 'PENDING',
                    payTo: parent.username, invitation: invitation).save(flush: true)
            payments.add(payment)
            // looking for up line
            parent = User.findByUsername(parent.parentId)
        }
        return invitation
    }

    def static checkInvitation(def phoneNumber, def countryCode) {
        return Invitation.findByPhoneNumberAndCountryCode(phoneNumber, countryCode)
    }

    def static checkRequest(def phoneNumber, def countryCode) {
        return Request.findByPhoneNumberAndCountryCode(phoneNumber, countryCode)
    }

    def static checkUser(def phoneNumber, def countryCode) {
        return User.findByPhoneNumberAndCountryCode(phoneNumber, countryCode)
    }

    def static completeInvitation(def username, def password, def phoneNumber, def countryCode,
                                  def level, def parentId) {
        // create user to login
        def user = new User(username: username, password: password, phoneNumber: phoneNumber, level: level,
                parentId: parentId, enabled: true, countryCode: countryCode,
                accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        def role = Role.findByAuthority('ROLE_USER')
        println(role)
        UserRole.create(user, role, true)
    }
}

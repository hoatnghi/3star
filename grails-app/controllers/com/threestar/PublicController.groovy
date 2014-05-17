package com.threestar

import com.threestar.utils.InvitationUtil

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
        def phoneNumber = params.phoneNumber
        def countryCode = params.countryCode
        if (InvitationUtil.checkRequest(phoneNumber, countryCode)) {
            flash.message = "Your request has already been in our queue. Please wait for the process."
        }
        if (InvitationUtil.checkInvitation(phoneNumber, countryCode)) {
            flash.message = "Your phone number has been invited. Please process your payments."
        }
        if (InvitationUtil.checkUser(phoneNumber, countryCode)) {
            flash.message = "You has been the valid user in our system."
        }
        def request = new Request(phoneNumber: phoneNumber, countryCode: countryCode, requestDate: new Date())
                .save(flush: true)

        render(view: "join", model: [bean: request])
    }
}

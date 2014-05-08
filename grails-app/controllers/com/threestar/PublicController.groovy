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

    def sendContact() {

    }

    def join() {
        render(view: "join")
    }

    def joinRequest() {

    }
}

package com.threestar

class PublicController {
	
	def springSecurityService

    def index() { }
	
	def login() {
		render (view : "login")
	}
	
	def faq() {
		render (view : "faq")
	}
	
	def contact() {
		render (view : "contact")
	}
}

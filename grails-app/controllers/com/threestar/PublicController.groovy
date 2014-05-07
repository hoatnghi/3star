package com.threestar

class PublicController {
	
	def springSecurityService

    def index() { }
	
	def faq() {
		log.debug("abc")
		log.debug TSUser.list()
		def pass = springSecurityService.encodePassword('password')
		log.debug(pass)
		render (view : "faq")
	}
	
	def contact() {
		render (view : "contact")
	}
}

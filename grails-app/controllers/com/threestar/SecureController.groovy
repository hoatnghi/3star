package com.threestar

import grails.plugin.springsecurity.annotation.Secured;

@Secured(['ROLE_ADMIN'])
class SecureController {

    def index() { }
	
	def profile() {
		render (view : "profile")
	}
	
	def message() {
		render (view : "message")
	}
}

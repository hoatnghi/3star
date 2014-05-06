package com.threestar

class SecureController {

    def index() { }
	
	def profile() {
		render (view : "profile")
	}
	
	def message() {
		render (view : "message")
	}
}

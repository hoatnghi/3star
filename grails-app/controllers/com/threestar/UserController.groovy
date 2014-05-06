package com.threestar

import com.threestart.User;

/**
 * User controller
 * 
 * @author Hai Quach
 */
class UserController {
	
    def login = {}
	
	def handleLogin = {
		def uid = params.userId;
		if (uid == "userid") {
			def user = new User()
			user.userId = 'userid'
			user.firstname = 'admin'
			session.user = user;
			redirect(uri: '/')
			return
		}
		
		def user = User.findByUserId(params.userId)
		if (!user) {
			flash.message = "User not found for userId: ${params.userId}"
			redirect(action:'login')
		}
		else {
			session.user = user
			redirect(uri: '/')
		}
	}
		
	def logout = {
		if(session.user) {
			session.user = null
			redirect(uri: '/')
		}
	}
}

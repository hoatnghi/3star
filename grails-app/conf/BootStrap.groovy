import com.threestar.TSUser;
import com.threestar.TSRole;
import com.threestar.TSUserTSRole;

class BootStrap {

    def init = { servletContext ->
		if (!TSUser.count()) {
			/*The default password is 'password'*/
			def password = 'admin'
			def user = new TSUser(username: 'admin', password: password, enabled: true,
				accountExpired: false , accountLocked: false, passwordExpired: false)
					.save(flush: true)
			log.debug user.errors
			def adminRole = new TSRole(authority : 'ROLE_ADMIN').save(flush: true, insert: true)
			def userRole = new TSRole(authority : 'ROLE_USER').save(flush: true, insert: true)
			
			/*create the first user role map*/
			TSUserTSRole.create(user , adminRole , true)
		}
		
    }
	
    def destroy = {
    }
}

import com.threestar.TSUser;
import com.threestar.TSRole;
import com.threestar.TSUserTSRole;

class BootStrap {

    def init = { servletContext ->
		/*The default password is 'password'*/
		def password = 'admin'
		def user = new TSUser(username: 'admin', password: password, enabled: true,
			accountExpired: false , accountLocked: false, passwordExpired: false)
				.save(flush: true)
		log.debug user.errors
		def role = new TSRole(authority : 'ADMIN_ROLE').save(flush: true, insert: true)
		
		/*create the first user role map*/
		TSUserTSRole.create(user , role , true)
		
    }
	
    def destroy = {
    }
}

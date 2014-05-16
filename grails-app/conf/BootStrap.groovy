import com.threestar.User;
import com.threestar.Role;
import com.threestar.UserRole;

class BootStrap {

    def init = { servletContext ->
        if (!User.count()) {
            /*The default password is 'password'*/
            def password = 'admin'
            def user = new User(username: 'admin', password: password, phoneNumber: '0000000000', level: 1,
                    parentId: 'NOBODY', enabled: true, countryCode: '256',
                    accountExpired: false, accountLocked: false, passwordExpired: false)
                    .save(flush: true)
            def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true, insert: true)
            def userRole = new Role(authority: 'ROLE_USER').save(flush: true, insert: true)

            /*create the first user role map*/
            UserRole.create(user, adminRole, true)
        }
    }

    def destroy = {
    }
}

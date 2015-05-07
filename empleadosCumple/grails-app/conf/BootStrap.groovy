
import empleadosCumple.*

class BootStrap {

    def init = { servletContext ->

      def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
      def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

      def jp = new User(username: 'jp', password: 'jp')
      jp.save(flush: true)

      def wo = new User(username: 'wo', password: 'wo')
      wo.save(flush: true)

      def aa = new User(username: 'aa', password: 'aa')
      aa.save(flush: true)

      UserRole.create jp, adminRole, true
      UserRole.create wo, adminRole, true
      UserRole.create aa, userRole, true

      assert User.count() == 3
      assert Role.count() == 2
      assert UserRole.count() == 3

    }

}

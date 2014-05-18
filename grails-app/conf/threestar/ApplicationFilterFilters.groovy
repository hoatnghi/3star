package threestar

class ApplicationFilterFilters {
    static def uriMap = ["/public/"];

    def filters = {
        all(controller:'*', action:'*') {
            before = {
                // No need for ajax call
                if (!request.isXhr()) {
                    def context = request.servletContext.getContextPath()
                    if (request.forwardURI.equals(request.servletContext.getContextPath() + "/"))
                        request.setAttribute("home", true)
                    else if (request.forwardURI.equals(request.servletContext.getContextPath() + "/secure/profile"))
                        request.setAttribute("profile", true)
                    else if (request.forwardURI.equals(request.servletContext.getContextPath() + "/secure/message"))
                        request.setAttribute("message", true)
                    else if (request.forwardURI.equals(request.servletContext.getContextPath() + "/secure/invite"))
                        request.setAttribute("invite", true)
                    else if (request.forwardURI.equals(request.servletContext.getContextPath() + "/secure/downline"))
                        request.setAttribute("downline", true)
                    else if (request.forwardURI.equals(request.servletContext.getContextPath() + "/admin/review"))
                        request.setAttribute("review", true)
                }
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}

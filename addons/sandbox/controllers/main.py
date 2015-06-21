from openerp import http

class Sandbox(http.Controller):

    @http.route('/api/sandbox/', auth='public')
    def index(self, **kw):
        return http.Response("Hello, world", content_type="application/json")

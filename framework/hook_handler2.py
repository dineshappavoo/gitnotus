#!/usr/bin/env python
import web

urls = ('/.*', 'hooks')

app = web.application(urls, globals())

class hooks:
    def POST(self):
        data = web.data()
        print
        print 'DATA RECEIVED:'
        print data
        print
        return 'OK'

if __name__ == '__main__':
    app.run()
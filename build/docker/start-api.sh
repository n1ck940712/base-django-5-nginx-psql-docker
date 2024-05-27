#!/bin/bash

APP_NAME=project-test
cd /srv/project-test/

exec uwsgi --hook-master-start "unix_signal:15 gracefully_kill_them_all" --ini "/srv/$APP_NAME/uwsgi.ini" --touch-reload "/srv/$APP_NAME/uwsgi.ini"

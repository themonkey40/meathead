##############################
# DEPS
#
gems:
	bundle install

##############################
# HELPERS
#

compass: gems
	bundle exec compass watch -c config/compass.rb

runserver: gems
	rails server

compile-static: gems
	bundle exec compass compile -c config/compass.rb
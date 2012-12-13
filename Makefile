default:
	@echo "install"
	@echo "up"
	@echo "down"
	@echo "reload"
	@echo "ssh"

install:
	gem install bundler
	bundle install
	bundle exec vagrant box add squeeze64_puppet27 http://andrew.mcnaughty.com/downloads/squeeze64_puppet27.box
	bundle exec vagrant init squeeze64_puppet27

up:
	bundle exec vagrant up

down:
	bundle exec vagrant halt

reload:
	bundle exec vagrant reload

ssh:
	bundle exec vagrant ssh

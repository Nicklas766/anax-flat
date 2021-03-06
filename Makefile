#!/usr/bin/make -f
#
<<<<<<< HEAD
# Makefile for course repos
#
=======
# Build website with environment
#
#

# Detect OS
OS = $(shell uname -s)

# Defaults
ECHO = echo

# Make adjustments based on OS
# http://stackoverflow.com/questions/3466166/how-to-check-if-running-in-cygwin-mac-or-linux/27776822#27776822
ifneq (, $(findstring CYGWIN, $(OS)))
	ECHO = /bin/echo -e
endif
>>>>>>> ee016876aff5cb83faa59818ca83280e8e4cf3cb

# Colors and helptext
NO_COLOR	= \033[0m
ACTION		= \033[32;01m
OK_COLOR	= \033[32;01m
ERROR_COLOR	= \033[31;01m
WARN_COLOR	= \033[33;01m
<<<<<<< HEAD
HELPTEXT 	= /bin/echo -e "$(ACTION)--->" `egrep "^\# target: $(1) " Makefile | sed "s/\# target: $(1)[ ]\+- / /g"` "$(NO_COLOR)"

# Add local bin path for test tools
PATH_ORIG = "$(PATH)"
PATH := "$(PWD)/bin:$(PWD)/vendor/bin:$(PWD)/node_modules/.bin:$(PATH)"



# target: help                    - Displays help.
.PHONY:  help
help:
	@$(call HELPTEXT,$@)
	@echo "Usage:"
	@echo " make [target] ..."
	@echo "target:"
	@egrep "^# target:" Makefile | sed 's/# target: / /g'



# target: install                 - Install needed utilities locally.
.PHONY: install
install: automated-tests-prepare
	@$(call HELPTEXT,$@)



# target: check                   - Check installed utilities.
.PHONY: check
check: automated-tests-check
	@$(call HELPTEXT,$@)




# target: test                    - Install test tools & run tests.
.PHONY: test
test: automated-tests-prepare automated-tests-check automated-tests-run dbwebb-testrepo
	@$(call HELPTEXT,$@)



# target: build-prepare           - Prepare the build directory.
.PHONY: build-prepare
build-prepare:
	@$(call HELPTEXT,$@)
	install -d build
	install -d bin/pip



# target: clean                   - Remove all generated files.
.PHONY:  clean
clean:
	@$(call HELPTEXT,$@)
	rm -rf build
	rm -f npm-debug.log



# target: clean-me                - Remove me-directory.
.PHONY:  clean-me
clean-me:
	@$(call HELPTEXT,$@)
	rm -rf me



# target: clean-all               - Remove all installed files.
.PHONY:  clean-all
clean-all: clean
	@$(call HELPTEXT,$@)
	rm -rf bin
	rm -rf node_modules
	rm -rf vendor



# target: dbwebb-install          - Download and install dbwebb-cli.
.PHONY: dbwebb-install
dbwebb-install: build-prepare
	@$(call HELPTEXT,$@)
	wget --quiet -O bin/dbwebb https://raw.githubusercontent.com/mosbth/dbwebb-cli/master/dbwebb2
	chmod 755 bin/dbwebb
	export PATH=$(PATH) && dbwebb config create noinput && dbwebb --version
	export PATH=$(PATH_ORIG)



# target: dbwebb-testrepo         - Test course repo.
.PHONY: dbwebb-testrepo
dbwebb-testrepo: dbwebb-install
	@$(call HELPTEXT,$@)
	export PATH=$(PATH) && dbwebb --silent --local testrepo
	export PATH=$(PATH_ORIG)



# target: dbwebb-validate-install - Download and install dbwebb-validate.
.PHONY: dbwebb-validate-install
dbwebb-validate-install: build-prepare
	@$(call HELPTEXT,$@)
	wget --quiet -O bin/dbwebb-validate https://raw.githubusercontent.com/mosbth/dbwebb-cli/master/dbwebb2-validate
	chmod 755 bin/dbwebb-validate
	export PATH=$(PATH) && dbwebb-validate --version
	export PATH=$(PATH_ORIG)



# target: dbwebb-validate-check   - Check version and environment for dbwebb-validate.
.PHONY: dbwebb-validate-check
dbwebb-validate-check:
	@$(call HELPTEXT,$@)
	export PATH=$(PATH) && dbwebb-validate --version && dbwebb-validate --check
	export PATH=$(PATH_ORIG)



# target: dbwebb-validate-run     - Run tests with dbwebb-validate.
.PHONY: dbwebb-validate-run
dbwebb-validate-run:
	@$(call HELPTEXT,$@)
	export PATH=$(PATH) && dbwebb-validate --publish --publish-to build/webroot/ example
	export PATH=$(PATH_ORIG)



# target: npm-install-dev         - Install npm packages for development.
.PHONY: npm-install-dev
npm-install-dev: build-prepare
	@$(call HELPTEXT,$@)
	if [ -f package.json ]; then npm install --only=dev; fi



# target: npm-update-dev          - Update npm packages for development.
.PHONY: npm-update-dev
npm-update-dev:
	@$(call HELPTEXT,$@)
	if [ -f package.json ]; then npm update --only=dev; fi



# target: composer-install-dev    - Install composer packages for development.
.PHONY: composer-install-dev
composer-install-dev: build-prepare
	@$(call HELPTEXT,$@)
	if [ -f composer.json ]; then composer install; fi



# target: composer-update-dev     - Update composer packages for development.
.PHONY: composer-update-dev
composer-update-dev:
	@$(call HELPTEXT,$@)
	if [ -f composer.json ]; composer update; fi



# target: tools-install-dev       - Install tools for development.
.PHONY: tools-install-dev
tools-install-dev: build-prepare composer-install-dev npm-install-dev
	@$(call HELPTEXT,$@)



# target: tools-update-dev        - Update tools for development.
.PHONY: tools-update-dev
tools-update-dev: composer-update-dev npm-update-dev
	@$(call HELPTEXT,$@)



# target: automated-tests-prepare - Prepare for automated tests.
.PHONY: automated-tests-prepare
automated-tests-prepare: build-prepare dbwebb-validate-install dbwebb-install npm-install-dev composer-install-dev
	@$(call HELPTEXT,$@)



# target: automated-tests-check   - Check version and environment for automated tests.
.PHONY: automated-tests-check
automated-tests-check: dbwebb-validate-check
	@$(call HELPTEXT,$@)



# target: automated-tests-run     - Run all automated tests.
.PHONY: automated-tests-run
automated-tests-run: dbwebb-validate-run dbwebb-testrepo
	@$(call HELPTEXT,$@)


# target: dbwebb-validate         - Execute dbwebb validate with arg1=what.
.PHONY: dbwebb-validate
dbwebb-validate:
	@$(call HELPTEXT,$@)
	bin/dbwebb-validate --publish --publish-to build/webroot/ $(arg1)
=======

# Which makefile am I in?
WHERE-AM-I = $(CURDIR)/$(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST))
THIS_MAKEFILE := $(call WHERE-AM-I)

# Echo some nice helptext based on the target comment
HELPTEXT = $(ECHO) "$(ACTION)--->" `egrep "^\# target: $(1) " $(THIS_MAKEFILE) | sed "s/\# target: $(1)[ ]*-[ ]* / /g"` "$(NO_COLOR)"



# Theme
#LESS 		 = theme/style_anax-flat.less
#LESS_OPTIONS = --strict-imports --include-path=theme/mos-theme/style/
#FONT_AWESOME = theme/font-awesome/fonts/
LESS 		 = theme/style.less
LESS_OPTIONS = --strict-imports --include-path=theme/modules/
NPMBIN       = theme/node_modules/.bin



# target: help                - Displays help.
.PHONY:  help
help:
	@$(call HELPTEXT,$@)
	@$(ECHO) "Usage:"
	@$(ECHO) " make [target] ..."
	@$(ECHO) "target:"
	@egrep "^# target:" Makefile | sed 's/# target: / /g'



# target: clean-cache         - Clean the cache, might need sudo.
.PHONY: clean-cache
clean-cache:
	@$(call HELPTEXT,$@)

	@$(ECHO) "$(ACTION)Remove and re-create the directory for the cache items$(NO_COLOR)"
	[ ! -d cache ] || rm -rf cache/ 
	install -d -m 777 cache/cimage cache/anax



# target: cimage-create       - Update and create basis for cimage.
.PHONY: cimage-create

define CIMAGE_CONF
<?php
return [
	'mode'         => 'development',
	'image_path'   =>  __DIR__ . '/../img/',
	'cache_path'   =>  __DIR__ . '/../../cache/cimage/',
];
endef
export CIMAGE_CONF

cimage-create:
	@$(call HELPTEXT,$@)

	@$(ECHO) "$(ACTION)Copy from CImage$(NO_COLOR)"
	install -d htdocs/cimage
	rsync -a vendor/mos/cimage/webroot/imgd.php htdocs/cimage/imgd.php
	rsync -a vendor/mos/cimage/icc/ htdocs/cimage/icc/
	@echo "$$CIMAGE_CONF" > htdocs/cimage/imgd_config.php



# target: site-build          - Copy default structure from Anax Flat.
.PHONY: site-build
site-build: cimage-create
	@$(call HELPTEXT,$@)

	@$(ECHO) "$(ACTION)Copy from anax-flat$(NO_COLOR)"
	rsync -a vendor/mos/anax-flat/htdocs/ htdocs/
	rsync -a vendor/mos/anax-flat/config/ config/
	rsync -a vendor/mos/anax-flat/content/ content/
	rsync -a vendor/mos/anax-flat/view/ view/

	@$(ECHO) "$(ACTION)Create the directory for the cache items$(NO_COLOR)"
	install -d -m 777 cache/cimage cache/anax



# target: site-update         - Make composer update and copy latest files.
.PHONY: site-update
site-update:
	@$(call HELPTEXT,$@)
	composer update

	@$(ECHO) "$(ACTION)Copy Makefile$(NO_COLOR)"
	rsync -av vendor/mos/anax-flat/Makefile .



# target: prepare-build       - Clear and recreate the build directory.
.PHONY: prepare-build
prepare-build:
	@$(call HELPTEXT,$@)
	rm -rf build
	install -d build/css build/lint



# target: less                - Compiling LESS stylesheet.
.PHONY: less
less: prepare-build
	@$(call HELPTEXT,$@)
	$(NPMBIN)/lessc $(LESS_OPTIONS) $(LESS) build/css/style.css
	$(NPMBIN)/lessc --clean-css $(LESS_OPTIONS) $(LESS) build/css/style.min.css
	cp build/css/style.min.css htdocs/css/
	#@cp build/css/style.css htdocs/css/

	#@rsync -a $(FONT_AWESOME) htdocs/fonts/



# target: less-lint           - Linting LESS/CSS stylesheet.
.PHONY: less-lint
less-lint: less
	@$(call HELPTEXT,$@)
	$(NPMBIN)/lessc --lint $(LESS_OPTIONS) $(LESS) > build/lint/style.less
	- $(NPMBIN)/csslint build/css/style.css > build/lint/style.css
	ls -l build/lint/
>>>>>>> ee016876aff5cb83faa59818ca83280e8e4cf3cb

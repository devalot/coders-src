##############################################################################
SCRIPTS = $(shell ls *.rb | grep -v test_)

##############################################################################
.PHONEY: all test clean
all test clean:
	@ :

##############################################################################
define TEST_SCRIPT
.PHONEY: test_$(1)
test: test_$(1)
test_$(1):
ifeq ($(wildcard test_$(1).rb),)
	ruby test_syntax.rb $(1).rb
else
	ruby -rubygems test_$(1).rb
endif
endef

##############################################################################
$(foreach s,$(SCRIPTS),$(eval $(call TEST_SCRIPT,$(s:.rb=))))

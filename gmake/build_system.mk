include gmake/tools.mk

build_rules=$(eval include $(abspath gmake/rules.mk))

ifndef MODULE_PATH
MODULE_PATH=$(dir ${CURDIR})
endif

define include_submodule_rules
MODULE_PATH=${MODULE_PATH}${محور}/
include $${MODULE_PATH}$1/Makefile
MODULE_PATH=$(dir $(patsubst %/,%,${MODULE_PATH}))
endef

define include_submodules
$(foreach m,$1,$(eval $(call include_submodule_rules,${m})))
endef

#!/usr/bin/env make -f
include gmake/build_system.mk

محور=تعريب
متفرّعات=فيزياء

$(call include_submodules,${متفرّعات})

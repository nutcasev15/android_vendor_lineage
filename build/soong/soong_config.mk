# Insert new variables inside the Lineage structure
lineage_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '"Lineage": {'; \
	echo '    "Needs_text_relocations": $(if $(filter true,$(TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS)),true,false),'; \
	echo '    "Pre_ion_x86": $(if $(filter true,$(BOARD_USES_PRE_ION_X86)),true,false)'; \
	echo '},'; \
	echo '') > $(SOONG_VARIABLES_TMP)

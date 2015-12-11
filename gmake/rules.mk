BOOK=${OUTPUT_DIR}/${كتاب}.${OUTPUT_EXT}
BOOK_SRC=$(wildcard $(addprefix ${MODULE_PATH}${محور}/,$(addsuffix .${INPUT_EXT},${كتاب} *)))

all:${BOOK}

${BOOK}:${BOOK_SRC}
	mkdir -p $(dir $@)
	cd $(dir $<) && ${LATEX} --output-directory=$(patsubst %/,%,$(abspath $(dir $@))) $(notdir $<)

clean:
	${RM} -r ${OUTPUT_DIR}

.PHONY: all clean

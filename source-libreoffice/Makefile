SOURCE:=https://github.com/LibreOffice/core

.PHONY: get-sources
get-sources:
	(cd source/ && git pull) || git clone $(SOURCE) source --depth 1

.PHONY: extract
extract:
	find source/ -regextype posix-extended \
		 -regex '.*\.(pdf|docx|doc|xlsx|xls|pptx|ppt|odt|ods|odp|odg)' \
		 -exec cp {} ../all_documents/ \;

.PHONY: clean
clean:
	rm -rf source/

.PHONY: all
all: get-sources extract clean

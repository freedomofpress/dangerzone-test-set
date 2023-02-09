SOURCE:=https://github.com/0ca/corpus_pdfs

.PHONY: get-sources
get-sources:
	(cd source/ && git pull) || git clone $(SOURCE) source --depth 1

.PHONY: extract
extract:
	find source/ -type f -name "*.pdf" \
		 -exec cp {} ../all_documents/ \;

.PHONY: clean
clean:
	rm -rf source/

.PHONY: all
all: get-sources extract clean

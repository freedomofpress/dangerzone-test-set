SUBDIRS := $(wildcard source-*/.)

all: $(SUBDIRS)
$(SUBDIRS):
	mkdir -p documents_all
	$(MAKE) -C $@

.PHONY: all $(SUBDIRS)

.PHONY: report
report:
	@./report.sh

.PHONY: clone-docs
clone-docs:
	git lfs install
	git lfs track 'all_documents/*'
	git lfs pull

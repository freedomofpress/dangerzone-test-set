SUBDIRS := $(wildcard source-*/.)

all: $(SUBDIRS)
$(SUBDIRS):
	mkdir -p documents_all
	$(MAKE) -C $@

.PHONY: all $(SUBDIRS)

.PHONY: report
report:
	@./report.sh

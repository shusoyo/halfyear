PNAME := calculus compute-mistakes linear-algebra english-template paper-set
PROOT := $(shell pwd)
SYNCF_PATH := $(PROOT)/pdfs
TYPST_FLAGS := --root $(PROOT) --font-path ./result --ignore-system-fonts

PDF_TARGETS := $(patsubst %, $(SYNCF_PATH)/%.pdf, $(PNAME))

all: $(PDF_TARGETS)
	@echo "All projects are up to date."

$(SYNCF_PATH)/%.pdf: %/main.typ | $(SYNCF_PATH)
	@echo "Compiling $@..."
	@typst c $< $@ $(TYPST_FLAGS)

$(foreach p,$(PNAME),$(eval $(SYNCF_PATH)/$(p).pdf: $(wildcard $(p)/*.typ)))

$(SYNCF_PATH):
	@mkdir -p $@

.PHONY: all font clean

font:
	@echo "Building fonts with Nix..."
	@nix build
	@echo "Fonts build complete."

clean:
	rm -rf $(SYNCF_PATH)

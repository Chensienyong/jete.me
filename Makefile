
# LESS params
LESS_DIR = ./themes/hugo-future-imperfect-slim/static/less
LESS_FILE = style.less
LESS_RTL_FILE = style-rtl.less
LESS_NORMALIZE_FILE = normalize.less

# CSS params
CSS_DIR = ./themes/hugo-future-imperfect-slim/static/css
CSS_FILE = style.min.css
CSS_RTL_FILE = style-rtl.min.css
CSS_TMP_FILE = tmp.css
CSS_NORMALIZE_FILE = normalize.min.css

define build_less
	lessc $(LESS_DIR)/$(1) > $(CSS_DIR)/$(CSS_TMP_FILE)
	uglifycss $(CSS_DIR)/$(CSS_TMP_FILE) > $(CSS_DIR)/$(2)
	rm -f $(CSS_DIR)/$(CSS_TMP_FILE)
endef

.PHONY: clean demo build build-ltr build-rtl build-normalize

build: clean build-ltr build-rtl build-normalize

build-ltr:
	$(call build_less,$(LESS_FILE),$(CSS_FILE))

build-rtl:
	$(call build_less,$(LESS_RTL_FILE),$(CSS_RTL_FILE))

build-normalize:
	$(call build_less,$(LESS_NORMALIZE_FILE),$(CSS_NORMALIZE_FILE))

PACKAGE_NAME=fonts-noto-sans-mono

.PHONY: all
.PHONY: doc

all:
	:

doc: doc-fonts-noto-sans-mono.pdf

doc-fonts-noto-sans-mono.pdf: doc-${PACKAGE_NAME}.saty satysfi-${PACKAGE_NAME}.opam fonts.satysfi-hash Satyristes
	opam pin add satysfi-${PACKAGE_NAME}.opam "file://$(PWD)" -y
	satyrographos opam build --name ${PACKAGE_NAME}-doc

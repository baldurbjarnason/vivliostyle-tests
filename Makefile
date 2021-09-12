.PHONY:all notpage custompage2 custompage italics contents cover
all: notpage custompage custompage2 italics contents cover


notpage:
	@echo building debug build
	@npx vivliostyle build vivliostyle-test-not.html -o not-selector/vivliostyle-test-not.pdf
	@npx pagedjs-cli vivliostyle-test-not.html --output not-selector/vivliostyle-test-not-comparison.pdf  --outline-tags h2



custompage:
	@echo building debug build
	@npx vivliostyle build vivliostyle-test-custompage.html -o custom-page1/vivliostyle-test-custompage.pdf
	@npx pagedjs-cli vivliostyle-test-custompage.html --output custom-page1/vivliostyle-test-custompage-comparison.pdf  --outline-tags h2

custompage2:
	@echo building debug build
	@npx vivliostyle build vivliostyle-test-custompage2.html -o custom-page2/vivliostyle-test-custompage2.pdf
	@npx pagedjs-cli vivliostyle-test-custompage2.html --output custom-page2/vivliostyle-test-custompage2-comparison.pdf  --outline-tags h2

italics:
	@echo building debug build
	@npx vivliostyle build vivliostyle-test-italics.html -o italics/vivliostyle-test-italics.pdf
	@npx pagedjs-cli vivliostyle-test-italics.html --output italics/vivliostyle-test-italics-comparison.pdf  --outline-tags h2

contents:
	@echo building debug build
	@npx vivliostyle build vivliostyle-test-contents.html -o contents/vivliostyle-test-contents.pdf
	@npx pagedjs-cli vivliostyle-test-contents.html --output contents/vivliostyle-test-contents-comparison.pdf  --outline-tags h2

cover:
	@echo building debug build cover
	@npx vivliostyle build vivliostyle-test-cover.html -o cover/vivliostyle-test-cover.pdf
	@npx pagedjs-cli vivliostyle-test-cover.html --output cover/vivliostyle-test-cover-comparison.pdf  --outline-tags h2
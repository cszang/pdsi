dir = '.'

document:
	R -e "devtools::document($(dir))"

package: document
	R CMD build $(dir)

install: document
	R CMD INSTALL --no-multiarch --with-keep.source $(dir)

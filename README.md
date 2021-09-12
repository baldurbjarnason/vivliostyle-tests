# vivliostyle-tests

A few tests of vivliostyle's css rendering. The comparison pdf is rendered using Paged.js. Which is also buggy but just in different ways. (Fewer CSS bugs.)

## Contents

The issue here is that Vivliostyle does not render the contents page with a custom page style. It seems to have a problem giving the first page a custom page style

## Cover

Again, background colour is missing on the first page because, under some circumstances, it doesn't seem to apply page styles to the first page.

## Custom Page 1

Here we have the opposite problem. The custom page style is applied to the page with the heading _but also the following page_. The custom page should only be applied to the one page.

## Custom Page 2

This is a repeat of the cover and contents bug where the first page, which should be a custom page style, isn't. This time paged.js fails as well.

## Italics

All of the Vivliostyle examples in this repository have a bug where it successfully applies the custom font to body text but not to the header. It uses the proper font but applies a fake italic slanted style instead of the provided italic font.

## Not Selector

`h2:not(#toc-title)` seems to break the stylesheet in a few ways. Not only aren't the styles not applied to the applicaple `h2` elements but it also seems to break the `#toc-title::before` and `#toc-title::after` selectors that come after it.

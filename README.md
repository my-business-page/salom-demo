# ZAARA — complete restaurant rebuild

A static GitHub Pages concept with exactly 50 files. The centerpiece is a physical-looking round dining table built with CSS 3D: plates are distributed around the table, and dragging rotates the table itself so the next plate arrives in front.

## Architecture
HTML pages + modular CSS + ES modules + CSS 3D + Canvas particles + GLSL-ready shader assets. No backend is required.

## Photography
Featured dish imagery is resolved by `js/image-loader.js` against Wikimedia Commons search using each dish's exact search identity. This prevents the old failure mode where one samosa photo was reused for unrelated drinks. Production deployment should replace remote results with licensed restaurant photography.

## Pages
Home, Menu, Story, Experience, Gallery, Events, Reserve, Contact, 404.

## Performance
Images are lazy-loaded, particle density adapts, animation pauses when hidden, and reduced-motion is respected. The menu is semantic HTML rather than a PDF.
# R Multiple Panels by Groups — Mariana Trench by Tectonic Plate

R script drawing multi-panel (small-multiples) trellis plots that split the Mariana Trench observations into separate panels by tectonic plate, so that the depth and slope-angle distributions can be compared across the four plates (Pacific, Philippine, Mariana, Caroline).

## Related publication

Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology Using R
Programming Language. Geodesy and Cartography 2019, 45(2), 57-84.

- DOI: https://doi.org/10.3846/gac.2019.3785
- figshare: https://doi.org/10.6084/m9.figshare.9762860
- HAL: https://hal.science/hal-02277500
- Zenodo: https://zenodo.org/record/3385005
- ISSN: 2029-6991 (Scopus)

This script produced the grouped multi-panel figures (Figures 7-9).

## Script

- multiple_panels_by_groups.R: reads DepthTect.csv, reshapes it to long form (data.table::melt), and draws conditioned lattice plots (xyplot / stripplot of value ~ variable | tectonics, grouped by plate, type = points + smooth), yielding one panel per tectonic plate for depths and for slope angles.

## Methods

- Trellis / small-multiples conditioning on a grouping factor (lattice); long-format reshaping.

## Data

- DepthTect.csv: per-observation depths, angles and tectonic-plate membership of the Mariana Trench.

## Requirements

- R (>= 3.5); packages: lattice, latticeExtra, data.table

## Author and citation

Polina Lemenkova — ORCID https://orcid.org/0000-0002-5759-1089

Cite: Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology Using R Programming Language. Geodesy and Cartography 2019, 45(2), 57-84. https://doi.org/10.3846/gac.2019.3785

## License

MIT — see LICENSE (Copyright Polina Lemenkova).

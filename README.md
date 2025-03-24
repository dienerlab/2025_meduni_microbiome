![GitHub release](https://img.shields.io/github/tag/dienerlab/2025_meduni_microbiome.svg)
![QIIME 2 version](https://img.shields.io/badge/Qiime%202%20version-2024.10-blue.svg)
![Website](https://img.shields.io/website?url=https%3A%2F%2Fdienerlab.github.io%2F2025_meduni_microbiome)



# Materials for the 2025 MedUni Graz Microbiome course

## Amplicon Sequencing Data Analysis

Presentation: ![Website](https://img.shields.io/website?url=https%3A%2F%2Fdienerlab.github.io%2F2025_meduni_microbiome)

Notebook: provided by Marija

Press `?` to get a list of available live options such as slide overviews and speaker mode. Note that
some slides are grouped vertically, you can navigate the presentation using
the directional buttons on your keyboard.

### Additional files

**`mutate.R`**

This generate simple amplicon sequencing data for an hands-on practice of DADA2.

*Arguments*:<br>
- `n`: Number of sequences to generate from each true amplicon.
- `rate`: The error rate P(X -> Y) for an error at any position. If an error occurs a random
   base will be used from the 3 candidates.
- `amplicons`: Arbitrary number of amplicon sequences separated by spaces. Reads will be
   sampled for each of them.

*Example:*

```bash
./mutate.R 100 0.5 ACG GTC
```

This will return the counts for each unique read:

```
ACG
ACG ACT ACA AGG ACC ATG GCG AAA ATC GCC AAT CCG CTG GCA GCT GGG GTG TCG AAC AAG
 20  11   8   7   5   5   5   3   3   3   2   2   2   2   2   2   2   2   1   1
AGC ATA CAA CAC CCA CGG GGC GTC TAG TCA TGA TTC
  1   1   1   1   1   1   1   1   1   1   1   1
--------
GTC
GTC ATC GAC TTC CTC GTG GTA TGC GGC GTT TCC AGC CCG GAA GCC GGG AAA AAC AAG ACG
 23   8   8   7   6   6   4   4   3   3   3   2   2   2   2   2   1   1   1   1
AGT ATA ATT CTA CTT GCA GCG GCT GGT TTG TTT
  1   1   1   1   1   1   1   1   1   1   1
--------
```
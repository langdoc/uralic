
# Public Domain Data for Uralic Languages, v. 0.1.2

This is an R data package that contains text corpus data from Uralic
languages which are in the Public Domain. Individual subsets of the data
are documented within the package. Here are [statistics and brief
explanations](https://github.com/langdoc/uralic/blob/master/STATISTICS.md)
for the subsets that are planned to be included.

This package is in an extremely early testing stage and it is not yet
supposed to be used in actual research. Currently there is most Public
Domain data from Komi-Zyrian, and adding that into the package is one of
the next steps. The whole current setup is experimental and may change
any moment. We will also add an explicit documentation concerning how to
use and cite the whole data set or individual resources.

This version contains data from several Uralic languages, and those are
parallel alignable by `sentence_id`. If there are no matching id’s
between the datasets, then that means there are no parallel matches for
that sentence between some of the languages. The book used for testing,
Four Battles is available in
[Erzya](http://urn.fi/URN:NBN:fi-fe2014082633380),
[Moksha](http://urn.fi/URN:NBN:fi-fe2014090944573), [Komi
Zyrian](http://urn.fi/URN:NBN:fi-fe2014102045428), [Komi
Permyak](http://urn.fi/URN:NBN:fi-fe2014101045137),
[Udmurt](http://urn.fi/URN:NBN:fi-fe2014092444879), [Hill
Mari](http://urn.fi/URN:NBN:fi-fe2014100345029), [Meadow
Mari](http://urn.fi/URN:NBN:fi-fe2014091844781),
[Mansi](http://urn.fi/URN:NBN:fi-fe2014090133491) and [Tundra
Nenets](http://urn.fi/URN:NBN:fi-fe2014061829330). However, at the
moment only some of these are proofread.

## Installation

You can install uralic from github with:

``` r
# install.packages("devtools")
devtools::install_github("langdoc/uralic")
```

## Example

``` r
library(tidyverse, warn.conflicts = FALSE)
#> ── Attaching packages ───────────────────────────────────── tidyverse 1.2.0 ──
#> ✔ ggplot2 2.2.1.9000     ✔ purrr   0.2.4     
#> ✔ tibble  1.3.4          ✔ dplyr   0.7.4     
#> ✔ tidyr   0.7.2          ✔ stringr 1.2.0     
#> ✔ readr   1.1.1          ✔ forcats 0.2.0
#> ── Conflicts ──────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
library(uralic)

uralic::kpv %>% 
    as_tibble() %>%
    filter(str_detect(sentence, "станция")) %>% 
    select(sentence) %>%
  knitr::kable()
```

| sentence                                                                                                                                                 |
| :------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Тайӧ сотчисны кутшӧмкӧ матыса станцияяс, кодъяс ӧзйӧмаӧсь белӧйяс снарядъясысь.                                                                          |
| Коймӧд случай вӧлі Воропоново станцияын, неылын сійӧ жӧ Царицынсянь.                                                                                     |
| Дас кӧкъямысӧд числӧын штабнӧй вагон сійӧс вайис Воропоново станцияӧ.                                                                                    |
| Неыджыд станцияын сы вӧсна вӧлі полнӧй неразбериха.                                                                                                      |
| Но век жӧ станцияыс эз вӧв дзик фронт вылас.                                                                                                             |
| И сэн, на сайын, пу увъяс костӧд сійӧ аддзис: сё, кыксё, витсё, он гӧгӧрво мындаӧн белӧйяс мыйвынсьыныс локтӧны станциялань.                             |
| Белӧйяс — найӧ вӧлі тыдалӧны кипыдӧс вылын моз — скачитісны овраг дорӧдз, коді воӧ вӧлі степь кузя веськыда станция дорӧ, и ряд бӧрся ряд вошисны сэтчӧ. |
| Туйыс на водзын беззащитнӧй станцияӧ вӧлі восьса.                                                                                                        |
| Но кӧн жӧ вӧлі станциялӧн охрана?                                                                                                                        |

## Citation

Please notice that providing proper references to the sources used is
clearly demanded by good scientific practice, even when using Public
Domain data. The difference between Public Domain data and virtually any
other data source is that the citation is not demanded from a legal
perspective, but can and should be justified and rationalized by what is
reasonable.

Niko Partanen, Michael Rießler, Joshua Wilbur (2018). *Public Domain
Corpus Data for Uralic Languages.* R data package. Version 0.1.2.
<https://github.com/langdoc/uralic/>.

Explanations how to cite single example sentences or larger subsets of
the data are coming soon. Ideally there would be an R function that
would spill out citations by id. Individual books will likely have
several sources that would be important to cite, among these the
original collection of the [National Library of
Finland](https://fennougrica.kansalliskirjasto.fi/). Individual book
sitations will look something like this.

> Успенский, Л 1939 Ныл боевой случай. Москва: Молодежын Всесоюзный
> Ленинский Коммунистический Союзшын Центральный Комитетше: Йоча
> Литератур издательство. URN:
> <http://urn.fi/URN:NBN:fi-fe2014091844781>

Of course, as this is Public Domain data, the exact data citation can be
rationalized case by case basis.

# Code of conduct

Please note that this project is released with a [Contributor Code of
Conduct](CONDUCT.md). By participating in this project you agree to
abide by its terms.

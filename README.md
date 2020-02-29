# rtvs-dl

Download videos from RTVS archive
https://www.rtvs.sk/televizia/archiv

Nápoveda v Slovenčine https://github.com/bedna-KU/rtvs-dl/blob/master/READMEsk.md

### Dependency
ffmpeg

curl

### Instalation
git clone https://github.com/bedna-KU/rtvs-dl.git

or

* download https://github.com/bedna-KU/rtvs-dl/archive/master.zip

* Unpack

### Run
./rtvs-dl.sh link_from_archive

### Docker
`docker run --rm -it -v $(pwd):/workdir -w /workdir verglor/rtvs-dl `_`link_from_archive`_

### Licence:
[GNU GPLv3](http://www.gnu.org/licenses/gpl-3.0.html)

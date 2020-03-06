# rtvs-dl

Download videos from RTVS archive
https://www.rtvs.sk/televizia/archiv

Nápoveda v Slovenčine https://github.com/bedna-KU/rtvs-dl/blob/master/READMEsk.md

### Dependencies
* `bash`
* `curl`
* `ffmpeg`

### Instalation
`git clone https://github.com/bedna-KU/rtvs-dl.git`

or

Download & unzip https://github.com/bedna-KU/rtvs-dl/archive/master.zip


### Run
`./rtvs-dl.sh `_`link_from_archive`_

### Docker
`docker run --rm -it -v $(pwd):/workdir -w /workdir verglor/rtvs-dl `_`link_from_archive`_

### Licence:
[GNU GPLv3](http://www.gnu.org/licenses/gpl-3.0.html)

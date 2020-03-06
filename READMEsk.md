# rtvs-dl

Sťahovanie videí z RTVS archívu
https://www.rtvs.sk/televizia/archiv

### Závislosti
* `bash`
* `curl`
* `ffmpeg`

### Inštalácia
`git clone https://github.com/bedna-KU/rtvs-dl.git`

alebo

Stiahni a rozbaľ https://github.com/bedna-KU/rtvs-dl/archive/master.zip

### Spustenie
`./rtvs-dl.sh `_`odkaz_z_archivu`_

### Docker
`docker run --rm -it -v $(pwd):/workdir -w /workdir verglor/rtvs-dl `_`odkaz_z_archivu`_

### Licencia:
[GNU GPLv3](http://www.gnu.org/licenses/gpl-3.0.html)

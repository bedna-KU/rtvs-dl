# rtvs-dl

Sťahovanie videí z RTVS archívu
https://www.rtvs.sk/televizia/archiv

### Závislosti
ffmpeg

curl

### Inštalácia
git clone https://github.com/bedna-KU/rtvs-dl.git

alebo

* Stiahni https://github.com/bedna-KU/rtvs-dl/archive/master.zip

* Rozbaľ

### Spustenie
./rtvs-dl.sh odkaz_z_archivu

### Docker
`docker run --rm -it -v $(pwd):/workdir -w /workdir verglor/rtvs-dl `_`odkaz_z_archivu`_

### Licencia:
[GNU GPLv3](http://www.gnu.org/licenses/gpl-3.0.html)

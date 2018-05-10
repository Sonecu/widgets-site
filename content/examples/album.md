+++
description = "Overview of the widget's configuration options"
title = "Album Audio Player"
date = "2017-04-10T16:43:08+01:00"
draft = false
weight = 200
bref=""
sample="<div id='castillo'></div>"
toc = true
+++

<div id="castillo"></div>
<br />
#### Code:
```
new AudioPlayer(
      {
          tracks: [
              {
                  url: 'https://dl.dropbox.com/s/8as0zghuk4266kn/dos_puertas%20%281%29.wav?dl=0',
                  name: 'Dos Puertas'
              },
              {
                  url: 'https://dl.dropbox.com/s/qf1l478n8awdapu/pavilions.mp3?dl=0',
                  name: 'Pavilions'
              }
          ],
          songName: 'Castillo en la niebla',
          by: 'Alexander Leon',
          walletAddress: 'GBPYRN3MMDTIS3CIKBTOAKJBZOTU5S577P3JF5T7H2EPWK4BKTZ6VDTL',
          memo: 'music',
          idTarget: 'castillo',
          useAlbumDisplay: true,
          albumName: 'Music from 2016',
          message: 'Thanks!'
      });
```

<br />
<br />
<br />
<br />
<br />
<br />

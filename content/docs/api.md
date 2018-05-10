+++
description = "Overview of the widget's configuration options"
title = "AudioPlayer Configuration"
date = "2017-04-10T16:43:08+01:00"
draft = false
weight = 200
bref="Everything there is to know about the AudioPlayer object"
toc = true
+++

### Examples

#### Most basic example:

```
<script type="text/javascript">
  new AudioPlayer(
    {
        tracks: [
            {
                url: 'https://dl.dropbox.com/s/cv0gaegc6smd642/fantasia_tmp.mp3?dl=0',
                name: 'castillo en la niebla'
            }
        ],
        by: 'Alexander Leon',
        walletAddress: 'GBPYRN3MMDTIS3CIKBTOAKJBZOTU5S577P3JF5T7H2EPWK4BKTZ6VDTL',
        memo: 'music',
        albumName: 'Castillo en la niebla (2016)',
        idTarget: 'castillo',
        message: 'Thanks!'
    }); 
</script>
<div id="castillo"></div> 
```

## Core
### Options

tracks `Array {url: string, name: string}` `required`

Array of tracks to be loaded (URL or base64 data URI).
 
songName `string` `required`

The song's name.

by `string` `required`

The author of the song.

walletAddress `string` `required`

The stellar public address to which you'd like to receive funds. Commonly referred to as the _public key_.

memo `string` `required`

A short phrase of your choosing. This helps us determine and display how many people have supported you and what the total value is.
In our eyes, you'd either want to have a unique memo value per song or album.

idTarget `string` `required`

The id of the DOM element you wish to convert into a widget.

message `string` `required`

Message for potential supporters.

useAlbumDisplay `boolean`

Display the complete album track list. See the showcase for an example.

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

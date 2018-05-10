+++
description = "For sites built with only HTML, CSS, and JS. Zero Frameworks. Zero Node.js."
title = "Static Site Integration"
date = "2017-04-10T16:43:08+01:00"
draft = false
weight = 200
bref=""
toc = true
+++

## Let's roll

Now I don't know what your files look like, so I'm going to create some files from scratch. Hopefully it'll give you enough insight to get going.

Let's start with an `index.html` file as an entry point.

Run the following: 

```
touch index.html
```

Next, let's set up the basic file structure. You probably already have so just skip on over to the next step.

```
<!doctype html>

<html>
<head>
    <title>Hello Sonecu Widget</title> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>

<body>

</body>

</html>
```

Let's add some CDN scripts to the `head`:

```
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquerykeyframes@0.0.10/jquery.keyframes.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stellar-sdk/0.8.0/stellar-sdk.min.js"></script>
    <script src="https://alien35.keybase.pub/sonecu-widgets/v1.0.5.js"></script>
```

After the CDN scripts, add the following:

```
<script type="text/javascript">
new AudioPlayer(
  {
      tracks: [
          {
              url: 'https://dl.dropbox.com/s/cv0gaegc6smd642/fantasia_tmp.mp3?dl=0',
              name: 'castillo en la niebla'
          },
          {
              url: 'https://dl.dropbox.com/s/qf1l478n8awdapu/pavilions.mp3?dl=0',
              name: 'dawggss'
          }
      ],
      useAlbumDisplay: true,
      by: 'Alexander Leon',
      walletAddress: 'GBPYRN3MMDTIS3CIKBTOAKJBZOTU5S577P3JF5T7H2EPWK4BKTZ6VDTL',
      memo: 'music',
      albumName: 'Castillo en la niebla (2016)',
      idTarget: 'dawg',
      message: 'Thanks!'
  });
</script>  
```

Finally, let's place our widget in the DOM. Inside `body` add:

```
<div id="dawg"></div>
```

There you have it. A working widget. Hopefully.

<br />
<br />
<br />
<br />
<br />
<br />
<br />

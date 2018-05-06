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
    <title>Hello Toneco Widget</title> 
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
```

Next you're going to need the widget code. I recommend creating a new `js` file in the root path, say `toneco-widget.js` and call it from the `index.html` file like so:
>
```
<script src="toneco-widget.js"></script>

```

In this new empty file, copy-paste all the code from here:
https://raw.githubusercontent.com/Toneco/Widget/master/src/widget.core.js

Next, add a script tag and let's call our first AudioPlayer object.

```
<script>
    new AudioPlayer(
        {
            src: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/355309/Swing_Jazz_Drum.mp3',
            songName: 'Castillo en la niebla (2016)',
            by: 'Alexander Leon',
            address: 'GA5JWS65L22GL5EJROI7NDRPJUPY4TFEKSRDPO2DKLA7MJXRJSTDNKRN',
            memo: 'f',
            isClassical: true,
            idTarget: 'dawg'
        })
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

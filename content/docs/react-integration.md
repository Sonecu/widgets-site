+++
description = "Add some motion, shaking, pulsing, sliding and more"
title = "React Integration (v.2.3.4)"
date = "2017-04-10T16:43:08+01:00"
draft = false
weight = 200
bref="Let's add a Toneco widget to your React site"
toc = true
+++
## Let's roll
Let's create and enter our project with the following command:

```npx create-react-app toneco-widget-example && cd toneco-widget-example && yarn start```

Hey, you're halfway there!

Go to the `/public/index.html` folder and add these CDN scripts above `<title>React App<title>`:

```
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquerykeyframes@0.0.10/jquery.keyframes.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stellar-sdk/0.8.0/stellar-sdk.min.js"></script>
```

Using the terminal, let's install the node package:
```
npm install toneco-audio-widget
```
(TODO: Add to NPM repo)

Now in `/src/App.js`, let's import the audio player:
```
import { AudioPlayer } from 'toneco-audio-widget';
```

Inside the `componentDidMount` lifecycle hook, let's load up our track info:

```
componentDidMount() {
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
           new AudioPlayer(
               {
                   src: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/355309/Swing_Jazz_Drum.mp3',
                   songName: 'Castillo en la niebla (2016)',
                   by: 'Alexander Lebron',
                   address: 'GA5JWS65L22GL5EJROI7NDRPJUPY4TFEKSRDPO2DKLA7MJXRJSTDNKRN',
                   memo: 'f',
                   isClassical: true,
                   idTarget: 'hello'
               })
       }
```

Finally, let's set where we want to render our audio players. Replace the `render` function with the following:
```
<div className="App">
             <div id="dawg" />
             <div id="hello"/>
         </div>
```

Reload the page, and things should look gucci. Yes? Awesome, if not, feel free to let us know any issues on the github issues dashboard.
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

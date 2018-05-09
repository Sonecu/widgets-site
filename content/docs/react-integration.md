+++
description = "For sites built with the React framework"
title = "React Integration (v.1.5.2)"
date = "2017-04-10T16:43:08+01:00"
draft = false
weight = 200
bref="Let's add a Sonecu widget to your React site"
toc = true
+++
## Let's roll
Let's create and enter our project with the following command:

```npx create-react-app sonecu-widget-example && cd sonecu-widget-example && yarn start```

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
npm install sonecu-audio-widget
```
(TODO: Add to NPM repo)

Now in `/src/App.js`, let's import the audio player:
```
import { AudioPlayer } from 'sonecu-audio-widget';
```

Inside the `componentDidMount` lifecycle hook, let's load up our track info:

```
componentDidMount() {
          new AudioPlayer(
              {
                  tracks: [
                      {
                          url: 'https://dl.dropbox.com/s/cv0gaegc6smd642/fantasia_TMP.mp3?dl=0',
                          name: 'Fantasia'
                      },
                      {
                          url: 'https://dl.dropbox.com/s/qf1l478n8awdapu/pavilions.mp3?dl=0',
                          name: 'Pavilions'
                      }
                  ],
                  by: 'Alexander Leon',
                  walletAddress: 'GA5JWS65L22GL5EJROI7NDRPJUPY4TFEKSRDPO2DKLA7MJXRJSTDNKRN',
                  memo: 'f',
                  idTarget: 'hello',
                  albumName: 'Castillo en la niebla (2016)',
                  message: 'Thanks!'
              });
          
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
                  walletAddress: 'GA5JWS65L22GL5EJROI7NDRPJUPY4TFEKSRDPO2DKLA7MJXRJSTDNKRN',
                  memo: 'f',
                  albumName: 'Castillo en la niebla (2016)',
                  idTarget: 'dawg',
                  message: 'Thanks!'
              });
 
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

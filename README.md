# coronajsplugin

Run on simulator
Build HTML5 (NO std resources, NO fb archive) to some directory
In that directory start a web server, eg: python3 -m http.server
Open Chrome to http://127.0.0.1:8001/index-debug.html
Show Javascript console
on console type: document.dispatchEvent( new CustomEvent( 'myplugin', {'detail': { key1: 'jill' } } ) )
It will update the output field (when page is in focus)
So you have updated the Corona Lua component from the webpage.

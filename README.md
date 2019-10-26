# coronajsplugin

Run on simulator<br/>
Build HTML5 (NO std resources, NO fb archive) to some directory<br/>
In that directory start a web server, eg: python3 -m http.server<br/>
Open Chrome to http://127.0.0.1:8001/index-debug.html<br/>
Show Javascript console<br/>
on console type: 
```javascript
document.dispatchEvent( new CustomEvent( 'myplugin', {'detail': { key1: 'jill' } } ) )
```
It will update the output field (when page is in focus)<br/>
So you have updated the Corona Lua component from the webpage.<br/>
<br/>
![alt text](https://raw.githubusercontent.com/prographo/coronajsplugin/main/Screenshot.png)

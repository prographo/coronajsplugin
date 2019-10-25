
window.myplugin_js = 
{
    
  data: {},

	set: function(data)
	{
    console.log("js set() is called: %o",data)
    window.myplugin_js.data = data

    document.dispatchEvent( new CustomEvent('myplugin', {'detail': data}) )
  },

	get: function()
	{
		const data = window.myplugin_js.data
    console.log("js get() is called: %o", data)
		return data
	},

  addEventListener: function( listenerReference ) 
  {

    let f = LuaCreateFunction( listenerReference )

    document.addEventListener( "myplugin", function(event) {
      console.log("Event callback: %o",event.detail)
      f( event.detail )
    })
    
    console.log("Event listener added")
  }

}

console.log('myplugin_js is loaded')

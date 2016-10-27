component {

	// Module Properties
	this.title 				= "redirectBack";
	this.author 			= "Eric Peterson";
	this.webURL 			= "https://github.com/elpete/redirectBack";
	this.description 		= "Caches the last request in the flash scope to give easy redirects back";
	this.version			= "1.0.0";

	function configure() {
		settings = {
			key = "last_url",
		};
	}

	function onLoad() {
        var helpers = controller.getSetting( "applicationHelper" );
        arrayAppend(
            helpers,
            "#moduleMapping#/helpers/RedirectBackHelpers.cfm"
        );
        controller.setSetting( "applicationHelper", helpers );
    }

    function onUnload() {
        controller.setSetting(
            "applicationHelper",
            arrayFilter( controller.getSetting( "applicationHelper" ), function( helper ) {
                return helper != "#moduleMapping#/helpers/RedirectBackHelpers.cfm"; 
            } )
        );
    }

	function postProcess( event, interceptData, buffer, rc, prc ) {
		var flash = wirebox.getInstance( dsl = "coldbox:flash" );
	    flash.put(
	    	settings.key,
	    	event.isSES() ? event.getCurrentRoutedUrl() : event.getCurrentEvent()
	    );
	}

}
component {

	// Module Properties
	this.title 				= "redirectBack";
	this.author 			= "Eric Peterson";
	this.webURL 			= "https://github.com/elpete/redirectBack";
	this.description 		= "Caches the last request in the flash scope to give easy redirects back";
	this.version			= "2.0.0";
    this.applicationHelper  = [ "helpers/RedirectBackHelpers.cfm" ];

	function configure() {
		settings = {
            "key" = "last_url",
            "includeAjax" = false,
            "includeUDF" = javacast( "null", "" )
		};

        interceptors = [{
            class = "#moduleMapping#/interceptors/RedirectBack",
            name = "RedirectBack",
            properties = {}
        }];
	}

}

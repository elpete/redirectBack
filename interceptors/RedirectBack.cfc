component extends="coldbox.system.Interceptor" {

    property name="settings" inject="coldbox:moduleSettings:redirectBack";


    function configure() {}

    function postProcess( event, interceptData, buffer, rc, prc ) {
        var flash = wirebox.getInstance( dsl = "coldbox:flash" );

        var shouldInclude = true;
        if ( settings.keyExists( "includeUDF" ) && !isNull( settings.includeUDF ) ) {
            shouldInclude = settings.includeUDF( event );
        } else {
            shouldInclude = settings.includeAjax || !event.isAjax();
        }

        if ( shouldInclude ) {
            flash.put(
                name = settings.key,
                value = {
					"type": event.isSES() ? "URI" : "EVENT",
					"event": event.isSES() ? "/" & event.getCurrentRoutedUrl() : event.getCurrentEvent(),
					"queryString": urlDecode( CGI.QUERY_STRING )
				},
                autoPurge = false
            );
        }

    }

}

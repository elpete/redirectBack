<cfscript>

    function redirectBack() {
        var moduleSettings = wirebox.getInstance( dsl = "coldbox:moduleSettings:redirectBack" );
        var flash = wirebox.getInstance( dsl = "coldbox:flash" );
        var lastEventInfo = flash.get( moduleSettings.key, "" );
        if ( lastEventInfo.type == "EVENT" ) {
            arguments.event = lastEventInfo.event;
        } else {
            arguments.uri = lastEventInfo.event;
        }
        arguments.queryString = lastEventInfo.queryString;
        relocate( argumentCollection = arguments );
    }

    </cfscript>

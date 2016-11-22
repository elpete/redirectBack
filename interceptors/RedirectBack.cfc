component extends="coldbox.system.Interceptor" {

    function configure() {}

    function postProcess( event, interceptData, buffer, rc, prc ) {
        var flash = wirebox.getInstance( dsl = "coldbox:flash" );
        var moduleSettings = wirebox.getInstance( dsl = "coldbox:moduleSettings:redirectBack" );

        if ( event.isAjax() ) {
            flash.keep( moduleSettings.key );
            return;
        }

        flash.put(
            moduleSettings.key,
            event.isSES() ? event.getCurrentRoutedUrl() : event.getCurrentEvent()
        );
    }

}
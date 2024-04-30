sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.deloitte.sap.salesorder',
            componentId: 'A_SalesOrder_FullObjectPage',
            contextPath: '/A_SalesOrder_Full'
        },
        CustomPageDefinitions
    );
});
sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.deloitte.sap.salesorder',
            componentId: 'A_SalesOrder_FullList',
            contextPath: '/A_SalesOrder_Full'
        },
        CustomPageDefinitions
    );
});
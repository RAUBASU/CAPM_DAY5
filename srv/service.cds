using { API_SALES_ORDER_SRV as salesOrder } from './external/API_SALES_ORDER_SRV';  //getting the service from external file in different name
service sampleOrderCAP {   //initializing simple CAP service

    entity A_SalesOrder_Full as select from salesOrder.A_SalesOrder   
    {SalesOrder,SalesOrderType,CustomerGroup,PricingDate,TotalNetAmount};  //Simple query to call few columns  //Full Access

    @Requires : 'authenticated-user'
    entity A_SalesOrder_Authenticated as select from salesOrder.A_SalesOrder
    {SalesOrder, SalesOffice,SalesOrderType,TotalNetAmount};  //Authenticated Entity

    entity A_SalesOrder_Restricted
    @(restrict: [{
        grant: ['READ'],
        to: 'Viewer', where: 'SalesOrderType = $user.SalesOrderType'
    },
    {
        grant: ['*'],
        to: 'admin'
    }])
    as select from salesOrder.A_SalesOrder
    {SalesOrder,SalesOrderType,CreationDate,TotalNetAmount}; //Restricted Entity
}
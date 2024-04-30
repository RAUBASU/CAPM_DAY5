const cds = require('@sap/cds');
module.exports = cds.service.impl(async function(){  //Will be called first
    
    //Getting entities from Fully accessed service
    const {A_SalesOrder_Full,A_SalesOrder_Authenticated,A_SalesOrder_Restricted} = this.entities;   

    //Connecting with the service so that sandbox url is called
    const sampleService = await cds.connect.to('API_SALES_ORDER_SRV');  

    //Performing a READ function on fully accessed entity
    this.on('READ',A_SalesOrder_Full,async(req,res) => {       
        const dataOut = await sampleService.tx(req).run(req.query);
        return dataOut;
    });

    //Performing a READ function on Authenticated entity
    this.on('READ',A_SalesOrder_Authenticated,async(req,res) => {       
        const dataOut = await sampleService.tx(req).run(req.query);
        return dataOut;
    });

    //Performing a READ function on Restricted entity
    this.on('READ',A_SalesOrder_Restricted,async(req,res) => {       
        const dataOut = await sampleService.tx(req).run(req.query);
        return dataOut;
    });
});
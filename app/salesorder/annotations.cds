using sampleOrderCAP as service from '../../srv/service';
annotate service.A_SalesOrder_Full with @(

    UI.HeaderInfo: {TypeName:'A_SalesOrder',
    TypeNamePlural:'SalesOrder'},

    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'SalesOrder',
                Value : SalesOrder,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SalesOrderType',
                Value : SalesOrderType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustomerGroup',
                Value : CustomerGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PricingDate',
                Value : PricingDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TotalNetAmount',
                Value : TotalNetAmount,
            },
        ],
    },

    UI.SelectionFields:[SalesOrder,SalesOrderType],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'SalesOrder',
            Value : SalesOrder,
            Criticality : CustomerGroup,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SalesOrderType',
            Value : SalesOrderType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CustomerGroup',
            Value : CustomerGroup,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PricingDate',
            Value : PricingDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'TotalNetAmount',
            Value : TotalNetAmount,
        },
    ],
);


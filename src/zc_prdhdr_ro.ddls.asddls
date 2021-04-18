@EndUserText.label: 'Product Header Consumption Read only'
@AccessControl.authorizationCheck: #CHECK

@UI: {
 headerInfo: {
               typeName: 'Header',
               typeNamePlural: 'Product Header',
               title: { type: #STANDARD, value: 'Itemid' } }
              }

@Search.searchable: true

@ObjectModel.semanticKey: ['Itemid']
@ObjectModel.representativeKey: 'Itemid'

define root view entity ZC_PRDHDR_RO
  as projection on Zi_Prdhdr_Ro
{

      @UI.facet: [{
                  id: 'ProductHeader',
                  type: #IDENTIFICATION_REFERENCE,        
                  position: 10,
                  label: 'Header Details'
                  }]

      @UI.lineItem: [{position: 10, importance: #HIGH, label: 'Product Id' },
                     { type: #FOR_ACTION,dataAction: 'maxLife',label: 'Max Life' }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 10,importance: #HIGH, label: 'Product Id' },
                       {type: #FOR_ACTION,dataAction: 'maxLife',label: 'Max Life' }]
      //     --> Use '@UI.identification' only when #IDENTIFICATION_REFERENCE is used in Facet->type
      @UI.identification: [{position: 10,label: 'Product Id' }]
      @UI.selectionField: [{position: 10 }]
      @EndUserText.quickInfo: 'Product Identification'
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
  key Itemid,

      @UI.lineItem: [{position: 20, importance: #HIGH, label: 'Item name' }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 20,importance: #HIGH, label: 'Item name' }]
      @UI.identification: [{position: 20,label: 'Item name' }]
      Itemname,

      @UI.lineItem: [{position: 30, importance: #HIGH, label: 'Item Class' }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 30,importance: #HIGH, label: 'Item Class' }]
      @UI.identification: [{position: 30,label: 'Item Class' }]
      @UI.selectionField: [{position: 30 }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      Itemclass,

      @UI.lineItem: [{position: 40, importance: #HIGH, label: 'LifeTime(in Yrs)' }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 40,importance: #HIGH, label: 'LifeTime(in Yrs)' }]
      @UI.identification: [{position: 40,label: 'LifeTime(in Yrs)' }]
      Lifetime,

      @UI.lineItem: [{position: 50, importance: #HIGH, label: 'Item Subclass' }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 50,importance: #HIGH, label: 'Item Subclass' }]
      @UI.identification: [{position: 50,label: 'Item Subclass' }]
      @UI.selectionField: [{position: 40 }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      Itemsclass,

      @UI.lineItem: [{position: 60, importance: #HIGH, label: 'Manufacturer' }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 60,importance: #HIGH, label: 'Manufacturer' }]
      @UI.identification: [{position: 60,label: 'Manufacturer' }]
      Manftr,

      @UI.lineItem: [{position: 70, importance: #HIGH,  value: 'Mnfaddr' , label: 'Manufacturer"s Address' }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 70,importance: #HIGH, label: 'Manufacturer"s Address' }]
      @UI.identification: [{position: 70,label: 'Manufacturer"s Address' }]
      Mnfaddr
}

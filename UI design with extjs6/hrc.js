Ext.ns('hrc.util');
hrc.util.createStore = function(id, mode){
	var store = Ext.create('Ext.data.Store', {
	    storeId: 'usersStore',
	    itemId:id+"_store",
	    fields: ['id', 'accountID', 'customerName', 'jobId', 'documentNumberNom', 'companyCode', 'fiscalYear', 'branch', 'customerNumberNorm', 'customerMapID', 'documentDateNorm', 'baselineDateNorm', 'dueDateNorm', 'invoiceNumberNorm', 'openAmountNorm', 'paymentTerms', 'clearingDate', 'isOpen', 'orderType', 'orderDate', 'businessArea', 'shipDate', 'taxAmt', 'currentDisputeAmount', 'shipTo', 'documentId', 'documentDate', 'actualOpenAmount', 'dueDate', 'invoiceAge', 'isValidDispute', 'postingKey', 'strategyId', 'currency', 'debitCreditIndicator', 'validOpenAmount', 'retainageAmount'],
	    autoLoad : true,
	    proxy: {
	        type: 'ajax',
	        url: 'getData.do',
	       	actionMethods : {
	   			read : 'POST'
	   		},
	        reader: {
	        	rootProperty : 'rows',
				totalProperty : 'results',
				keepRawData :true
	        }
	    }
	});
	
	store.load({
		params: {
			start: 0,
			limit: 25,
			mode: mode
		}
	});
	
	return store;
}
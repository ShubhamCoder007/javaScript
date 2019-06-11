<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HRC Application</title>
<script type="text/javascript">
	hrc = {};
	hrc.util = {};
</script>
<script type="text/javascript" src="static/extjs/ext-all-6.0.2.js"> </script>
<script type="text/javascript" src="static/js/hrc.js"> </script>
<script type="text/javascript" src="static/js/util.js"> </script>
<link rel="stylesheet" type="text/css" href="static/extjs/theme-triton-all.css" />
<link rel="shortcut icon" href="static/extjs/images/favicon.ico" type="image/x-icon" />
</head>
<body>
<a href="http://www.highradius.com" id="hs-link-module_155868972897591_hs_logo_widget" style="border-width:0px;border:0px;"><img src="https://info.highradius.com/hubfs/highradius-logo.svg" class="hs-image-widget " style="width:250px;border-width:0px;border:0px;" width="250" alt="HighRadius" title="HighRadius"></a>
<script type="text/javascript">


Ext.onReady(function () {
	
	//var store = hrc.util.createStore('userdata',1);
	var allStore = hrc.util.createStore('all_invoices',1);
	var openStore = hrc.util.createStore('open_invoices', 2);
	var closedStore = hrc.util.createStore('closed_invoices', 3);
	
	 Ext.create('Ext.TabPanel', {
     	title: 'Invoices',
     	renderTo: document.body,//Ext.getBody(),
     	fullscreen: true,
     	defaults: {
         	styleHtmlContent: true
     	},
     	items: [{
             title: 'All Invoices',
             id: 'all_invoices_panel',
             xtype: 'gridpanel',
             store: allStore,
             items: [{
            	 
            	 Ext.create('Ext.grid.Panel', {
            	        
            	        itemId: 'hrc_grid_panel',
            	        height: 525,
            	        store: openStore,
            	        selModel: {
            	            selType: 'checkboxmodel'
            	        },
            	        columns: [{
            	        	text: 'Id',
            	        	dataIndex: 'id'
            	        },
            	        {
            	            text: 'Account Id',
            	            dataIndex: 'accountID'
            	        },
            	        {
            	            text: 'Name',
            	            dataIndex: 'customerName'
            	        },  {
            	            text: 'Job Id',
            	            dataIndex: 'jobId'
            	        },
            	        {
            	        	text: 'Document Number Norm',
            	        	dataIndex: 'documentNumberNom'
            	        },
            	        {
            	        	text: 'Company Code',
            	        	dataIndex: 'companyCode'
            	        },
            	        {
            	        	text: 'fiscal Year',
            	        	dataIndex: 'fiscalYear'
            	        },
            	        {
            	        	text: 'Branch',
            	        	dataIndex: 'branch'
            	        },
            	        {
            	        	text: 'Customer Number Norm',
            	        	dataIndex: 'customerNumberNorm'
            	        },
            	        {
            	        	text: 'Customer Map ID',
            	        	dataIndex: 'customerMapID'
            	        },
            	        {
            	        	text: 'Document Date Norm', 
            	        	dataIndex: 'documentDateNorm'
            	        },
            	        {
            	        	text: 'Baseline Date Norm', 
            	        	dataIndex: 'baselineDateNorm'
            	        },
            	        {
            	        	text: 'Due Date Norm',
            	        	dataIndex: 'dueDateNorm'
            	        },
            	        {
            	        	text: 'Invoice Number Norm',
            	        	dataIndex: 'invoiceNumberNorm'
            	        },
            	        {
            	        	text: 'Open Amount Norm',
            	        	dataIndex: 'openAmountNorm'
            	        },
            	        {
            	        	text: 'Payment Terms',
            	        	dataIndex: 'paymentTerms'
            	        },
            	        {
            	        	text: 'Clearing Date',
            	        	dataIndex: 'clearingDate'
            	        },
            	        {
            	        	text: 'isOpen',
            	        	dataIndex: 'isOpen'
            	        },
            	        {
            	        	text: 'Order Type',
            	        	dataIndex: 'orderType'
            	        },
            	        {
            	        	text: 'Order Date',
            	        	dataIndex: 'orderDate'
            	        },
            	        {
            	        	text: 'Business Area',
            	        	dataIndex: 'businessArea'
            	        },
            	        {
            	        	text: 'Ship Date',
            	        	dataIndex: 'shipDate'
            	        },
            	        {
            	        	text: 'Tax Amount',
            	        	dataIndex: 'taxAmt'
            	        },
            	        {
            	        	text: 'Current Dispute Amount',
            	        	dataIndex: 'currentDisputeAmount'
            	        },
            	        {
            	        	text: 'Ship To',
            	        	dataIndex: 'shipTo'
            	        },
            	        {
            	        	text: 'Document Id',
            	        	dataIndex: 'documentId'
            	        },
            	        {
            	        	text: 'Document Date',
            	        	dataIndex: 'documentDate'
            	        },
            	        {
            	        	text: 'Actual Open Amount',
            	        	dataIndex: 'actualOpenAmount'
            	        },
            	        {
            	        	text: 'Due Date',
            	        	dataIndex: 'dueDate'
            	        },
            	        {
            	        	text: 'Invoice Age',
            	        	dataIndex: 'invoiceAge'
            	        },
            	        {
            	        	text: 'isValid Dispute',
            	        	dataIndex: 'isValidDispute'
            	        },
            	        {
            	        	text: 'Posting Key',
            	        	dataIndex: 'postingKey'
            	        },
            	        {
            	        	text: 'Strategy Id',
            	        	dataIndex: 'strategyId'
            	        },
            	        {
            	        	text: 'Currency',
            	        	dataIndex: 'currency'
            	        },
            	        {
            	        	text: 'Debit Credit Indicator',
            	        	dataIndex: 'debitCreditIndicator'
            	        },
            	        {
            	        	text: 'Valid Open Amount',
            	        	dataIndex: 'validOpenAmount'
            	        },
            	        {
            	        	text: 'Retainage Amount',
            	        	dataIndex: 'retainageAmount'
            	        }]
            	 
             }
             }]
             }
             
             
          ,{
             title: 'Open Invoices',
             id: 'open_invoices_panel',
             xtype: 'gridpanel',
             //store: openStore,
             items: [{
            	 
            	 Ext.create('Ext.grid.Panel', {
            	        
            	        itemId: 'hrc_grid_panel',
            	        height: 525,
            	        store: openStore,
            	        selModel: {
            	            selType: 'checkboxmodel'
            	        },
            	        columns: [{
            	        	text: 'Id',
            	        	dataIndex: 'id'
            	        },
            	        {
            	            text: 'Account Id',
            	            dataIndex: 'accountID'
            	        },
            	        {
            	            text: 'Name',
            	            dataIndex: 'customerName'
            	        },  {
            	            text: 'Job Id',
            	            dataIndex: 'jobId'
            	        },
            	        {
            	        	text: 'Document Number Norm',
            	        	dataIndex: 'documentNumberNom'
            	        },
            	        {
            	        	text: 'Company Code',
            	        	dataIndex: 'companyCode'
            	        },
            	        {
            	        	text: 'fiscal Year',
            	        	dataIndex: 'fiscalYear'
            	        },
            	        {
            	        	text: 'Branch',
            	        	dataIndex: 'branch'
            	        },
            	        {
            	        	text: 'Customer Number Norm',
            	        	dataIndex: 'customerNumberNorm'
            	        },
            	        {
            	        	text: 'Customer Map ID',
            	        	dataIndex: 'customerMapID'
            	        },
            	        {
            	        	text: 'Document Date Norm', 
            	        	dataIndex: 'documentDateNorm'
            	        },
            	        {
            	        	text: 'Baseline Date Norm', 
            	        	dataIndex: 'baselineDateNorm'
            	        },
            	        {
            	        	text: 'Due Date Norm',
            	        	dataIndex: 'dueDateNorm'
            	        },
            	        {
            	        	text: 'Invoice Number Norm',
            	        	dataIndex: 'invoiceNumberNorm'
            	        },
            	        {
            	        	text: 'Open Amount Norm',
            	        	dataIndex: 'openAmountNorm'
            	        },
            	        {
            	        	text: 'Payment Terms',
            	        	dataIndex: 'paymentTerms'
            	        },
            	        {
            	        	text: 'Clearing Date',
            	        	dataIndex: 'clearingDate'
            	        },
            	        {
            	        	text: 'isOpen',
            	        	dataIndex: 'isOpen'
            	        },
            	        {
            	        	text: 'Order Type',
            	        	dataIndex: 'orderType'
            	        },
            	        {
            	        	text: 'Order Date',
            	        	dataIndex: 'orderDate'
            	        },
            	        {
            	        	text: 'Business Area',
            	        	dataIndex: 'businessArea'
            	        },
            	        {
            	        	text: 'Ship Date',
            	        	dataIndex: 'shipDate'
            	        },
            	        {
            	        	text: 'Tax Amount',
            	        	dataIndex: 'taxAmt'
            	        },
            	        {
            	        	text: 'Current Dispute Amount',
            	        	dataIndex: 'currentDisputeAmount'
            	        },
            	        {
            	        	text: 'Ship To',
            	        	dataIndex: 'shipTo'
            	        },
            	        {
            	        	text: 'Document Id',
            	        	dataIndex: 'documentId'
            	        },
            	        {
            	        	text: 'Document Date',
            	        	dataIndex: 'documentDate'
            	        },
            	        {
            	        	text: 'Actual Open Amount',
            	        	dataIndex: 'actualOpenAmount'
            	        },
            	        {
            	        	text: 'Due Date',
            	        	dataIndex: 'dueDate'
            	        },
            	        {
            	        	text: 'Invoice Age',
            	        	dataIndex: 'invoiceAge'
            	        },
            	        {
            	        	text: 'isValid Dispute',
            	        	dataIndex: 'isValidDispute'
            	        },
            	        {
            	        	text: 'Posting Key',
            	        	dataIndex: 'postingKey'
            	        },
            	        {
            	        	text: 'Strategy Id',
            	        	dataIndex: 'strategyId'
            	        },
            	        {
            	        	text: 'Currency',
            	        	dataIndex: 'currency'
            	        },
            	        {
            	        	text: 'Debit Credit Indicator',
            	        	dataIndex: 'debitCreditIndicator'
            	        },
            	        {
            	        	text: 'Valid Open Amount',
            	        	dataIndex: 'validOpenAmount'
            	        },
            	        {
            	        	text: 'Retainage Amount',
            	        	dataIndex: 'retainageAmount'
            	        }]
            	 
             }}]
         }, {
             title: 'Closed Invoices',
             id: 'closed_invoices_panel',
             xtype: 'gridpanel',
             //store: closedStore,
             items: [{
            
            	 Ext.create('Ext.grid.Panel', {
            	        
            	        itemId: 'hrc_grid_panel',
            	        height: 525,
            	        store: closedStore,
            	        selModel: {
            	            selType: 'checkboxmodel'
            	        },
            	        columns: [{
            	        	text: 'Id',
            	        	dataIndex: 'id'
            	        },
            	        {
            	            text: 'Account Id',
            	            dataIndex: 'accountID'
            	        },
            	        {
            	            text: 'Name',
            	            dataIndex: 'customerName'
            	        },  {
            	            text: 'Job Id',
            	            dataIndex: 'jobId'
            	        },
            	        {
            	        	text: 'Document Number Norm',
            	        	dataIndex: 'documentNumberNom'
            	        },
            	        {
            	        	text: 'Company Code',
            	        	dataIndex: 'companyCode'
            	        },
            	        {
            	        	text: 'fiscal Year',
            	        	dataIndex: 'fiscalYear'
            	        },
            	        {
            	        	text: 'Branch',
            	        	dataIndex: 'branch'
            	        },
            	        {
            	        	text: 'Customer Number Norm',
            	        	dataIndex: 'customerNumberNorm'
            	        },
            	        {
            	        	text: 'Customer Map ID',
            	        	dataIndex: 'customerMapID'
            	        },
            	        {
            	        	text: 'Document Date Norm', 
            	        	dataIndex: 'documentDateNorm'
            	        },
            	        {
            	        	text: 'Baseline Date Norm', 
            	        	dataIndex: 'baselineDateNorm'
            	        },
            	        {
            	        	text: 'Due Date Norm',
            	        	dataIndex: 'dueDateNorm'
            	        },
            	        {
            	        	text: 'Invoice Number Norm',
            	        	dataIndex: 'invoiceNumberNorm'
            	        },
            	        {
            	        	text: 'Open Amount Norm',
            	        	dataIndex: 'openAmountNorm'
            	        },
            	        {
            	        	text: 'Payment Terms',
            	        	dataIndex: 'paymentTerms'
            	        },
            	        {
            	        	text: 'Clearing Date',
            	        	dataIndex: 'clearingDate'
            	        },
            	        {
            	        	text: 'isOpen',
            	        	dataIndex: 'isOpen'
            	        },
            	        {
            	        	text: 'Order Type',
            	        	dataIndex: 'orderType'
            	        },
            	        {
            	        	text: 'Order Date',
            	        	dataIndex: 'orderDate'
            	        },
            	        {
            	        	text: 'Business Area',
            	        	dataIndex: 'businessArea'
            	        },
            	        {
            	        	text: 'Ship Date',
            	        	dataIndex: 'shipDate'
            	        },
            	        {
            	        	text: 'Tax Amount',
            	        	dataIndex: 'taxAmt'
            	        },
            	        {
            	        	text: 'Current Dispute Amount',
            	        	dataIndex: 'currentDisputeAmount'
            	        },
            	        {
            	        	text: 'Ship To',
            	        	dataIndex: 'shipTo'
            	        },
            	        {
            	        	text: 'Document Id',
            	        	dataIndex: 'documentId'
            	        },
            	        {
            	        	text: 'Document Date',
            	        	dataIndex: 'documentDate'
            	        },
            	        {
            	        	text: 'Actual Open Amount',
            	        	dataIndex: 'actualOpenAmount'
            	        },
            	        {
            	        	text: 'Due Date',
            	        	dataIndex: 'dueDate'
            	        },
            	        {
            	        	text: 'Invoice Age',
            	        	dataIndex: 'invoiceAge'
            	        },
            	        {
            	        	text: 'isValid Dispute',
            	        	dataIndex: 'isValidDispute'
            	        },
            	        {
            	        	text: 'Posting Key',
            	        	dataIndex: 'postingKey'
            	        },
            	        {
            	        	text: 'Strategy Id',
            	        	dataIndex: 'strategyId'
            	        },
            	        {
            	        	text: 'Currency',
            	        	dataIndex: 'currency'
            	        },
            	        {
            	        	text: 'Debit Credit Indicator',
            	        	dataIndex: 'debitCreditIndicator'
            	        },
            	        {
            	        	text: 'Valid Open Amount',
            	        	dataIndex: 'validOpenAmount'
            	        },
            	        {
            	        	text: 'Retainage Amount',
            	        	dataIndex: 'retainageAmount'
            	        }],
            	 
             }]
             }]
         }]
 	});
	

   var gridPanel = Ext.create('Ext.grid.Panel', {
        
        itemId: 'hrc_grid_panel',
        height: 525,
        store: openStore,
        selModel: {
            selType: 'checkboxmodel'
        },
        columns: [{
        	text: 'Id',
        	dataIndex: 'id'
        },
        {
            text: 'Account Id',
            dataIndex: 'accountID'
        },
        {
            text: 'Name',
            dataIndex: 'customerName'
        },  {
            text: 'Job Id',
            dataIndex: 'jobId'
        },
        {
        	text: 'Document Number Norm',
        	dataIndex: 'documentNumberNom'
        },
        {
        	text: 'Company Code',
        	dataIndex: 'companyCode'
        },
        {
        	text: 'fiscal Year',
        	dataIndex: 'fiscalYear'
        },
        {
        	text: 'Branch',
        	dataIndex: 'branch'
        },
        {
        	text: 'Customer Number Norm',
        	dataIndex: 'customerNumberNorm'
        },
        {
        	text: 'Customer Map ID',
        	dataIndex: 'customerMapID'
        },
        {
        	text: 'Document Date Norm', 
        	dataIndex: 'documentDateNorm'
        },
        {
        	text: 'Baseline Date Norm', 
        	dataIndex: 'baselineDateNorm'
        },
        {
        	text: 'Due Date Norm',
        	dataIndex: 'dueDateNorm'
        },
        {
        	text: 'Invoice Number Norm',
        	dataIndex: 'invoiceNumberNorm'
        },
        {
        	text: 'Open Amount Norm',
        	dataIndex: 'openAmountNorm'
        },
        {
        	text: 'Payment Terms',
        	dataIndex: 'paymentTerms'
        },
        {
        	text: 'Clearing Date',
        	dataIndex: 'clearingDate'
        },
        {
        	text: 'isOpen',
        	dataIndex: 'isOpen'
        },
        {
        	text: 'Order Type',
        	dataIndex: 'orderType'
        },
        {
        	text: 'Order Date',
        	dataIndex: 'orderDate'
        },
        {
        	text: 'Business Area',
        	dataIndex: 'businessArea'
        },
        {
        	text: 'Ship Date',
        	dataIndex: 'shipDate'
        },
        {
        	text: 'Tax Amount',
        	dataIndex: 'taxAmt'
        },
        {
        	text: 'Current Dispute Amount',
        	dataIndex: 'currentDisputeAmount'
        },
        {
        	text: 'Ship To',
        	dataIndex: 'shipTo'
        },
        {
        	text: 'Document Id',
        	dataIndex: 'documentId'
        },
        {
        	text: 'Document Date',
        	dataIndex: 'documentDate'
        },
        {
        	text: 'Actual Open Amount',
        	dataIndex: 'actualOpenAmount'
        },
        {
        	text: 'Due Date',
        	dataIndex: 'dueDate'
        },
        {
        	text: 'Invoice Age',
        	dataIndex: 'invoiceAge'
        },
        {
        	text: 'isValid Dispute',
        	dataIndex: 'isValidDispute'
        },
        {
        	text: 'Posting Key',
        	dataIndex: 'postingKey'
        },
        {
        	text: 'Strategy Id',
        	dataIndex: 'strategyId'
        },
        {
        	text: 'Currency',
        	dataIndex: 'currency'
        },
        {
        	text: 'Debit Credit Indicator',
        	dataIndex: 'debitCreditIndicator'
        },
        {
        	text: 'Valid Open Amount',
        	dataIndex: 'validOpenAmount'
        },
        {
        	text: 'Retainage Amount',
        	dataIndex: 'retainageAmount'
        }],
        
        
        bbar: new Ext.PagingToolbar({
            pageSize: 20,
            store: store,
            displayInfo: true,
            style : 'padding-right : 17px;',
            displayMsg: 'Users'+' {0} - {1} of {2}',
            emptyMsg: "No Records to display",
            items: []
            }),
       tbar: new Ext.PagingToolbar({
            pageSize: 20,
            store: store,
            displayInfo: true,
            style : 'padding-right : 17px;',
            displayMsg: 'Users'+' {0} - {1} of {2}',
            emptyMsg: "No Records to display",
            items: []
            }),
        
        
        dockedItems: [{
            xtype: 'toolbar',
            dock: 'top',
            items: [{
                xtype: 'button',
                text: 'Edit',
                listeners: {
                    click: function () {
                    	//Implement your functionality
                    		var win = Ext.create('Ext.window.Window',{
                    		title: 'Edit',
                    		 width: 300,
                     	    height: 200,
                     	    layout: 'fit',
                     	    items: [
                     	    {
	                    	    xtype: 'form',
	                    	    items: [{
	                    	        xtype: 'textfield',
	                    	        fieldLabel: 'Job Id'
	                    	    }, {
	                    	        xtype: 'textfield',
	                    	        fieldLabel: 'Ship To'
                    	    },
                    	    {
                    	    	xtype: 'button',
                    	    	title: 'Set',
                    	    	height: 50,
                    	    	width: 100,
                    	    	renderTo: Ext.getBody(),
                    	    	onClick: function(){
                    	    		alert('set was clicked!');
                    	    		//code for editting and setting
                    	    	}
                    	    }
	                    	]
                     	    
                     	    
                    	    }]
                    	});
                    	
                    	//var checked = Ext.ComponentQuery.query('all_invoices_panel')[0].getSelection();
                    	
                    	//if(checked.length == 1){
                    	win.show();
                    	//}else{
                    		//disabled: true
                    	//}
                    
                    }
            
                }
            },
            { 
            	xtype: 'button',
	            text: 'Predict',
	            listeners: {
	                click: function () {
	                	//Implement your functionality
	                }
            }
        },
        '->',
        {
        	xtype: 'splitbutton',
	        text: 'Advanced Search',
	        listeners: {
	            click: function () {
	            	//Implement your functionality
	            }
        }
    }]
        }],
        renderTo: Ext.getBody()
    });
   
   
   

});

</script>
</body>
</html>
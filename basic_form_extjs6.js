var form = Ext.create('Ext.form.Panel', {
    renderTo: document.body,
    title: 'User Form',
    height: 400,
    width: 400,
    bodyPadding: 10,
    defaultType: 'textfield',
    items: [
        {
            fieldLabel: 'First Name',
            name: 'firstName'
        },
        {
            fieldLabel: 'Last Name',
            name: 'lastName'
        },
        {
            xtype: 'datefield',
            fieldLabel: 'Date of Birth',
            name: 'birthDate'
        }
        
        
    ]
});

var branch = Ext.create('Ext.data.Store', {
    fields: ['name'],
    data : [
        {"name":"ECS"},
        {"name":"ETC"},
        {"name":"CSE"}
    ]
});

// Create the combo box, attached to the states data store
        var comboText =  Ext.create('Ext.form.ComboBox', {
                fieldLabel: 'Branch',
                store: branch,
                queryMode: 'local',
                displayField: 'name',
                valueField: 'branch',
                renderTo: Ext.getBody()
            });
            
        ta =  {
            xtype     : 'textareafield',
            grow      : true,
            name      : 'message',
            fieldLabel: 'Address',
            anchor    : '80%'
        }
        
        
       button = Ext.create('Ext.Container', {
            renderTo: Ext.getBody(),
            items   : [
                {
                    xtype: 'button',
                    text : 'Submit'
                },
                
                {
                	xtype: 'button',
                	text: 'creator',
                	handler: function(){
                		alert('Created by Shubham Banerjee');
                	}
                }
            ]
        });
        
            
form.add(comboText);
form.add(ta);
form.add(button);

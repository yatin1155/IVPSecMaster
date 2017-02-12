preURL = "http://localhost:1214/SecurityService.svc";
VM = function () {
    var self = this;
    self.items = ko.observableArray();
    self.columnNames = ko.computed(function () {
        if (self.items().length === 0)
            return [];
        var props = [];
        var obj = self.items()[0];
        for (var name in obj)
            props.push(name);
        return props;
    });
};


//No document . ready



function loadData(secType) {
    $.getJSON(preURL+"/json/" + secType, function (data) {

        var element = $('#datatables');
        ko.cleanNode(element);

        var vm = new VM();
        ko.applyBindings(vm);
        
        
        // apply DataTables magic

        var parsedata = JSON.parse(data.GetJsonResultResult);
        $.each(parsedata, function (index, value) {
            console.log(value);
            vm.items.push(value);
        });
        $(document).ready(function() {
            $('#datatables').DataTable();
        } );
    });
}


//Posting data from Form to Backend
//send equity data from frontend to backend 
var sendEquityDataToServer = function () {
    const form1 = $('#Equity_Form')[0];
    // Get the form data with our (yet to be defined) function.
    const jdata = getFormDataAsJSON(form1);

    console.log(JSON.stringify(jdata))
   
    $.ajax({
            cache: false,
            type: "POST",
            async: false,
            url: "http://localhost:1214/SecurityService.svc/json/upsertEquity",
            data: JSON.stringify(jdata),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                alert(data);

            }
        });
}


//send bond data from frontend to backend 
var sendBondDataToServer = function () {
    const form1 = $('#Bond_Form')[0];
    // Get the form data with our (yet to be defined) function.
    const jdata = getFormDataAsJSON(form1);

    console.log(JSON.stringify(jdata))
   
    $.ajax({
            cache: false,
            type: "POST",
            async: false,
            url: "http://localhost:1214/SecurityService.svc/json/upsertBond",
            data: JSON.stringify(jdata),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                alert(data);
            }
        });
}

function getFormDataAsJSON(form){
    var array = jQuery(form).serializeArray();
    var json = {};
    
    jQuery.each(array, function() {
        json[this.name] = this.value || '';
    });
    
    return JSON.stringify(json);
}
//Binding TextBox from JSON KnockOut
function loadSingleEquityData(rowID) {
    $.getJSON(preURL+"/json/GetSingleEquity/"+rowID, function (data) {
        var parsedata = JSON.parse(data.GetSingleEquityResult);
        singleObject = JSON.stringify(parsedata[0]);

        populate('#Update_EquityForm', $.parseJSON(singleObject));

       
        
    });
}
function populate(frm, data) {
  $.each(data, function(key, value){
    $('[name='+key+']', frm).val(value);
  });
}




function loadSingleBondData(rowID) {
    $.getJSON(preURL+"/json/GetSingleBond/"+rowID, function (data) {
        var parsedata = JSON.parse(data.GetSingleBondResult);
        singleObject = JSON.stringify(parsedata[0]);

        populate('#Update_BondForm', $.parseJSON(singleObject));
    });
}

//Update Equity

var updateEquityDataToServer = function () {
    const equity_form = $('#Update_EquityForm')[0];
    // Get the form data with our (yet to be defined) function.
    const jdata = getFormDataAsJSON(equity_form);

    console.log(JSON.stringify(jdata))
   
    $.ajax({
            cache: false,
            type: "POST",
            async: false,
            url: "http://localhost:1214/SecurityService.svc/json/updateEquity",
            data: JSON.stringify(jdata),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                alert(data);

            }
        });
}

var updateBondDataToServer = function () {
    const bond_form = $('#Update_BondForm')[0];
    // Get the form data with our (yet to be defined) function.
    const jdata = getFormDataAsJSON(bond_form);

    console.log(JSON.stringify(jdata))
   
    $.ajax({
            cache: false,
            type: "POST",
            async: false,
            url: "http://localhost:1214/SecurityService.svc/json/updateBond",
            data: JSON.stringify(jdata),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                alert(data);

            }
        });
}





//Delete Calll
function deleteEquitySecurity() {
    var id = $('#Equity_Id').val();
    $.getJSON(preURL+"/json/DeleteEquity/"+id, function (data) {
       alert(JSON.stringify(data));
    });
}


function deleteBondSecurity(rowID) {
    var id = $('#Bond_Id').val();
    $.getJSON(preURL+"/json/DeleteBond/"+id, function (data) {
       alert(JSON.stringify(data));
    });
}








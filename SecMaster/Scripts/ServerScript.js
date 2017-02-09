
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
$(document).ready(function () { 
    loadData("equity");
    callsampleservice();
    $("#aBond").click(function () {
        loadData("bond");
    });
    $("#aEquity").click(function () {
        loadData("equity");
    });
});



function loadData(secType) {
    $.getJSON("http://localhost:35798/RestServiceImpl.svc/json/" + secType, function (data) {

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
        $("#datatables").DataTable({
            responsive: true
        });
    });
}


//Posting data from Form to Backend

var sendEquityDataToServer = function () {
    const form1 = $('#Equity_Form')[0];
    // Get the form data with our (yet to be defined) function.
    const jdata = getFormDataAsJSON(form1);

    console.log(JSON.stringify(jdata))
    alert(JSON.stringify(jdata)); 
    $.getJSON("http://localhost:35798/RestServiceImpl.svc/json/UpsertEquity/" + JSON.stringify(jdata), function (data) {
        // This callback is executed if the post was successful
        alert(data);     
    })
}

function getFormDataAsJSON(form){
    var array = jQuery(form).serializeArray();
    var json = {};
    
    jQuery.each(array, function() {
        json[this.name] = this.value || '';
    });
    
    return json;
}




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
    $("#aBond").click(function () {
        loadData("bond");
    });
    $("#aEquity").click(function () {
        loadData("equity");
    });


    alert("calling");
    debugger;
    callsampleservice();

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

ko.bindingHandlers.clickAndStop = {
    init: function (element, valueAccessor, allBindingsAccessor, viewModel, context) {
        var handler = ko.utils.unwrapObservable(valueAccessor()),
            newValueAccessor = function () {
                return function (data, event) {
                    handler.call(viewModel, data, event);
                    event.cancelBubble = true;
                    if (event.stopPropagation) event.stopPropagation();
                };
            };

        ko.bindingHandlers.click.init(element, newValueAccessor, allBindingsAccessor, viewModel, context);
    }
};


var callsampleservice = function () {

    $.ajax({
        type: "POST",
        url: "http://localhost:35798/RestServiceImpl.svc/UpsertEquity",
        data: JSON.stringify({ "name": "asd" }),
        success: function (a) {
            debugger;

        }
                , datatype: "application/json"
        //,contentType: "application/json; charset=utf-8"
        //        dataType: 'json',
        //        contentType: "application/json"
    });

}
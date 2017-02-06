
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

$.getJSON("http://localhost:35798/RestServiceImpl.svc/json/bond", function (data) {
    var vm = new VM();
    ko.applyBindings(vm);
    // apply DataTables magic
    //$("#datatables").DataTable( { responsive: true } );
    var parsedata = JSON.parse(data.GetJsonResultResult);
    $.each(parsedata, function (index, value) {
        console.log(value);
        vm.items.push(value);
    });
});
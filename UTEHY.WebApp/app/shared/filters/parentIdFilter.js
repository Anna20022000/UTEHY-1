﻿(function (app) {
    app.filter('parentIdFilter', function () {
        return function (result, items, input) {
            if (typeof items != "undefined") {
                for (var i = 0; i < items.length; i++) {
                    if (items[i].ID === input) {
                        result = items[i].Name;
                        return result
                    }
                }
            }          
        }
    })
})(angular.module('utehy.common'));
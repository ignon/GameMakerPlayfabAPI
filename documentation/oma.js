/*global angular*/
var ohjelma = angular.module("myApp", []);

ohjelma.controller("myCtrl", function($scope) {
    $scope.pokemonit = {};
    
    $scope.pokemonit.eevee = {
        nimi: "Eevee",
        korkeus: 13,
        kyvyt: "siemensyöksy"
    }
    
})
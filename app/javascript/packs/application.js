// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('admin-lte') 
// require("bootstrap-datetimepicker-npm")
require ("jquery-ui")

import 'bootstrap'; 



import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap/dist/css/bootstrap-theme';
import "font-awesome/css/font-awesome.css";
import '../stylesheets/application'; // This file will contain your custom CSS
import "admin-lte/dist/css/AdminLTE.css";
import "admin-lte/dist/css/skins/_all-skins.css";
import '../stylesheets/bootstrap-datetimepicker.min.css';

// require("jquery")
// window.jQuery = $;
// window.$ = $;
import jquery from 'jquery';
window.$ = window.jquery = jquery;


global.$ = global.jQuery = require('jquery');
$.fn.datetimepicker = require('bootstrap-datetimepicker-npm');


$(function () {
             $('.datetimepicker_input').datetimepicker({
             	format: "yyyy-MM-dd hh:mm",
         		autoclose: true
             	, minView: 2,
             	keepOpen: false,
             	bootcssVer: 3
         });
         });
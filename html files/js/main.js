/*jshint jquery:true */
/*global $:true */
// Undefine porplem fix
/*global jQuery:true*/
/*global document:true*/
/*eslint no-undef: "error"*/
/*eslint no-unused-vars: "error"*/

var $ = jQuery.noConflict();

$(document).ready(function($) {
	"use strict";

	if ($('.headerWrap').length != 0) {
		var sticky_navigation_offset_top = 200;
		var sticky_navigation = function() {
			var scroll_top = $(window).scrollTop();
			if (scroll_top > sticky_navigation_offset_top) {
				$('.headerWrap').addClass("is-sticky");
			} else {
				$('.headerWrap').removeClass("is-sticky");
			}
		};
		sticky_navigation();
		$(window).on('scroll', function() {
			sticky_navigation();
		});
	}




});
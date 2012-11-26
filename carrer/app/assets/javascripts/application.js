// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

            $(function() {
                $('#container-1 > ul').tabs();
                $('#container-2 > ul').tabs({ selected: 1 });
                $('#container-3 > ul').tabs({ fx: { height: 'toggle' } });
                $('#container-4 > ul').tabs({ fx: { opacity: 'toggle' } });
                $('#container-5 > ul').tabs({ fx: { height: 'toggle', opacity: 'toggle' } });
                $('#container-6 > ul').tabs({
                    fx: { opacity: 'toggle', duration: 'fast' },
                    select: function(ui) {
                        alert('select');
                    },
                    show: function(ui) {
                        alert('show');
                    }
                });
                $('#container-7 > ul').tabs({ fx: [null, { height: 'show', opacity: 'show' }] });
                $('#container-8 > ul').tabs();
                $('#container-9 > ul').tabs({ disabled: [2] });
                $('<p><a href="#">Remove 4th tab<\/a><\/p>').prependTo('#fragment-22').find('a').click(function() {
                    $('#container-9 > ul').tabs('remove', 3);
                    return false;
                });
                $('<p><a href="#">Insert new tab at 2nd position<\/a><\/p>').prependTo('#fragment-22').find('a').click(function() {
                    $('#container-9 > ul').tabs('add', '#inserted-tab', 'New Tab', 1);
                    return false;
                });
                $('<p><a href="#">Append new tab<\/a><\/p>').prependTo('#fragment-22').find('a').click(function() {
                    $('#container-9 > ul').tabs('add', '#appended-tab', 'New Tab');
                    return false;
                });
                $('<p><a href="#">Disable 3rd tab<\/a><\/p>').prependTo('#fragment-22').find('a').click(function() {
                    $('#container-9 > ul').tabs('disable', 2);
                    return false;
                });
                $('<p><a href="#">Enable 3rd tab<\/a><\/p>').prependTo('#fragment-22').find('a').click(function() {
                    $('#container-9 > ul').tabs('enable', 2);
                    return false;
                });
                $('<p><a href="#">Select 3rd tab<\/a><\/p>').prependTo('#fragment-22').find('a').click(function() {
                    $('#container-9 > ul').tabs('select', 2);
                    return false;
                });
                $('<p><a href="#">Get selected tab<\/a><\/p>').prependTo('#fragment-22').find('a').click(function() {
                    alert( $('#container-9 > ul').data('selected.tabs') );
                    return false;
                });
                $('#container-10 > ul').tabs({ selected: null, unselect: true });
                $('#container-11 > ul').tabs({ event: 'mouseover' });
            });

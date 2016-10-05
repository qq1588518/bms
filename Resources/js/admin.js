﻿$(function () {
    toggle(".list1-0", ".list2-0");
    toggle(".list1-1", ".list2-1");
    toggle(".list1-2", ".list2-2");
    toggle(".list1-3", ".list2-3");
    toggle(".list1-4", ".list2-4");
});

function toggle(onclick, lists) {
    $(lists).hide();
    var times = 0;
    
    $(onclick).bind("click", function () {
        $(lists).toggle(500);
        if (times % 2 != 0) {
            $(onclick + " label").html("&gt;&gt;");
        } else {
            $(onclick + " label").html("&#8595;");

        }
        times++;
    });
    
}
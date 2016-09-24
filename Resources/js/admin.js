$(function () {
    toggle(".list1-0", ".list2-0");
    toggle(".list1-1", ".list2-1");
    toggle(".list1-2", ".list2-2");
    toggle(".list1-3", ".list2-3");
    toggle(".list1-4", ".list2-4");
});

function toggle(onclick, lists) {
    $(lists).hide();
    $(onclick).bind("click", function () {
        $(lists).toggle(500);
    });
}
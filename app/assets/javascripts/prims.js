$(document).on("page:load",prims_javascript);
$(document).ready(prims_javascript);

function prims_javascript(){
    $('table').dataTable({
        "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
        "sPaginationType": "bootstrap"
    });
    $(".datepicker").datepicker();
}
$ ->

  $('select').select2
    allowClear: true

  $('.datepicker').datetimepicker
    timepicker:false,
    format: 'd.m.Y'
    lang: 'ru'

  $('.datatable').dataTable
    oLanguage:
      sUrl: "//cdn.datatables.net/plug-ins/380cb78f450/i18n/Russian.json"
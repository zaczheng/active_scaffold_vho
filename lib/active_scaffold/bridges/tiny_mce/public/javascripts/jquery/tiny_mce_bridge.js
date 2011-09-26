$('form.as_form').live('as:form_loaded', function(event) {
    var as_form = $(this).closest("form");
    as_form.find('textarea.mceEditor').each(function(index, elem) {
      tinyMCE.execCommand('mceAddControl', false, $(elem).attr('id'));
    });
    return true;
  });
$('form.as_form').live('as:form_submit', function(event) {
    var as_form = $(this).closest("form");
    if (as_form.has('textarea.mceEditor').length > 0) {
      tinyMCE.triggerSave();
    }
    return true;
  });

$('form.as_form').live('as:form_unloaded', function(event) {
    var as_form = $(this).closest("form");
    as_form.find('textarea.mceEditor').each(function(index, elem) {
      tinyMCE.execCommand('mceRemoveControl', false, $(elem).attr('id'));
    });
    return true;
  });

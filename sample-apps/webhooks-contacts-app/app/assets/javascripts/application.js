// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .


function reloadPage() {
  document.location.reload();
}

function requestNotShownEventsCount() {
  return new Promise((resolve) => {
      $.getJSON("/events/not_shown_count?time_mark=" + $('#alert-not-shown-events').attr('datetime-mark'), (response) => {
          const { count } = response;
          console.log(count)
          resolve(count);
      });
  });
}

async function displayNotShownEventsAlertIfNeed() {
  const notShownEventsCount = await requestNotShownEventsCount();
  if (notShownEventsCount > 0) {
      $('#empty-message').hide();
      $('#alert-not-shown-events').show();
  }
}

$(document).ready(async () => {
  setInterval(displayNotShownEventsAlertIfNeed, 10000);
  $('#alert-not-shown-events').click(() => {
     reloadPage();
     return false;
  });
});

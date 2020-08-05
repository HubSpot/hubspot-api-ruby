$(document).ready(function(){
  $('select#boards, select#pipelines').on('change', fetchMappings);
  $('form.mapping-select').on('ajax:success', createMapping);

});

function removeMapping(e) {
  e.preventDefault();
  $.ajax({
    type: "DELETE",
    url: `/mappings/${$(this).siblings('.mapping-id').data('id')}`,
    dataType: 'json',
    success: function(result) {
      $(`.mapping-id[data-id="${result.data.id}"]`).parent().remove();
    }
  });
}

function createMapping(event) {
  [response, _, _] = event.detail;
  addMappingtoDOM(response.data.mapping);

}

function addMappingtoDOM(mappingData) {
  var mappingRow = $('.mapping-row.template').clone().removeClass('template');
  mappingRow.find('.board-list-id').text(mappingData.board_list_name);
  mappingRow.find('.pipeline-stage-id').text(mappingData.pipeline_stage_label);
  mappingRow.find('.mapping-id').attr('data-id', mappingData.id);
  mappingRow.find('.remove-button').on('click', removeMapping);
  $('.mapping-row.template').parent().append(mappingRow);
}

function fetchMappings() {
  var spinner = new jQuerySpinner({
    parentClass: 'wrapper'
  });

  spinner.show();

  $.ajax({
    url: "/mappings",
    type: 'GET',
    dataType: 'json',
    data: {
      board_id: $('#boards option:selected').val(),
      pipeline_id: $('#pipelines option:selected').val(),
    },
    success: function(rsp){
      if (rsp.status == 'ok'){
        spinner.hide();
        $('.mapping-row').not('.template').remove();
        if (rsp.data.board_lists != null && rsp.data.pipeline_stages != null) {
          if (rsp.data.mappings != null) {
            $('.mapping-headers').css('display', 'flex');

            _.each(rsp.data.mappings, function(mapping) { addMappingtoDOM(mapping) });
          }
          $('.mapping-select').css('display', 'flex');

          _.each(rsp.data.board_lists, function(board_list){
            $('#mapping_board_list_id').append(`<option value="${board_list.id}">${board_list.name}</option>`);
          });

          _.each(rsp.data.pipeline_stages, function(pipeline_stage){
            $('#mapping_pipeline_stage_id').append(`<option value="${pipeline_stage.id}">${pipeline_stage.label}</option>`);
          });

          $('#mapping_board_id').val(rsp.data.board_id);
          $('#mapping_pipeline_id').val(rsp.data.pipeline_id);
        } else {
          $('.mapping-select').hide();
          $('.mapping-headers').hide();
        }
      }
    }
  });
}
<div class="container_12 clearfix">
    <div class="grid_4 alpha">
   
    <div class="grid_4 box box-nav">
      <div class="box-header">
        <h4>Subscribe Us</h4>
      </div>
      <div class="subscriber_area">
        
        <form id="subscriber-form" name="subscriber-form" method="post" action="act_subscriber.php" class="form-horizontal" role="form">
          <input type="hidden" name="is_submit" id="is_submit" value="1">
          <div class="form-group">
            <div class="col-sm-10">
              <input type="email" class="form-control inputSubscribEmail" id="inputSubEmail" name="inputSubEmail" placeholder="Email" required>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-10">
              <button type="submit" id="subscriberUs" name="subscriberUs" class="btn btn-info subscriberBtn">Sign in</button>
            </div>
          </div>
          <div class="alert alert-success" id="subscriber-msg">&nbsp;</div>
        </form>
      </div>
    </div>
    <!-- #SUBSCRIBER SECTION-->
   </div>
<script>
  $(document).ready(function(e) {

  
    $("#subscriber-msg").hide();
    $("#subscriberUs").click(function(e) {
      e.preventDefault();

      if ($("#inputSubEmail").val() === "") 
      {
        alert("Email Shouldn't be empty!");
        return false;
      }
      else
      {

        var href = $("#subscriber-form").attr('action');

        $("#subscriber-msg").html("<img src='_assets/img/ajax-loader_1.gif'>");
        $("#subscriber-msg").show('fast');
        
        var form_data = 
        { 
          inputSubEmail: $("#inputSubEmail").val()
        }

        $.post(href, form_data, function(response) {
          if (response == '1' ) 
          {
            $("#subscriber-msg").fadeIn('slow').html("Thanks for Subscribe Us");
            window.location.href = 'index.php';
          };
        });



      }


    });
});

</script>

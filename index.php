<!--<?php require_once('_assets/config/dbc.php'); ?>-->
<!-- START HEADER SECTION -->
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Quiz Master - Home</title>
<link rel="shortcut icon" type="image/x-icon" href="extra/fav.jpg">
	<!-- LINK FILE -->
	<?php include('_partials/links.php'); ?>

</head>
<body>

	<!-- HEADER FILE -->
	<?php include('_partials/header.php'); ?>


	<!-- #MAIN CONTENT AREA -->
	<div class="container_12 clearfix">
		<div class="grid_12 box box-nav">
			<div class="box-header">
				<h4>Quiz Categories</h4>
			</div>

			<!-- Loop Should be Here -->
			<div class="project-details grid_12 alpha">
				<?php
				$getAllCategories = mysql_query("SELECT * FROM quiz0_category WHERE category_status = 'Active' ");
				while($viewAllCategories = mysql_fetch_array($getAllCategories))
				{          
					?>

					<div class="project-1 grid_3 ">
						<h2><?php echo $viewAllCategories['title']; ?></h2>
						<img src="extra/q.jpg" class="img-thumbnail" alt="" width="250" height="200" usemap="#Map" title="">
						<a class="text-danger setbtn" href="quiz.php?category_id=<?php echo $viewAllCategories['category_id']; ?>" target="blank">Start Quiz</a>
					</div>

					<?php } ?>
				</div>
			</div>
		</div>
	</div>
	<!-- #END MAIN CONTENT AREA -->

	<!-- START FOOTER SECTION -->
	<?php include('_partials/footer.php'); ?>
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
						};
					});
				}
			});

		});
	</script>
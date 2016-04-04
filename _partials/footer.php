<?php $getCategories = @mysql_query("SELECT * FROM quiz0_category LIMIT 0,5"); ?>
<div id="footer">
	<div style="margin-bottom:-2%;">
		<center><p style="color:white;font-size:90%;">&copy 2015-Quiz Master. All Rights Reserved.</p> </center>
	</div>
</div>
<!-- END FOOTER SECTION -->
</body>
</html>
<!--
<div class="grid_5 cat">
      <h5>Categories</h5>
      <?php while($viewCategory = mysql_fetch_array($getCategories))
      {
      ?>
      <p><?php echo $viewCategory['title']; ?></p>
     <?php } ?>
    </div>-->
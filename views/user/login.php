<?php
if(isset($error)){
	echo "<p>$error</p>";
}?>

<div class="col-sm-6 col-sm-offset-3">
<form class="form-horizontal" method="POST">
	<div class="form-group">
		<label class="col-sm-2 control-label">Username</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" name="username" placeholder="Username">
	    </div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">Password</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" name="password" placeholder="Password">
	    </div>
	</div>
	<div class="form-group">
	    <div class="col-sm-10 col-sm-offset-2">
	      <button type="submit" class="btn btn-default">Войти</button>
	    </div>
	</div>
</form>
</div>
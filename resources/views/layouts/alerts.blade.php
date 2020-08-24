<br><br>

@if (session('msg'))
<div class="container">
    <div class="alert alert-info">
    <center>    {{ session('msg') }} </center>
    </div>
	</div>
@endif



@if (session('error'))
<div class="container">

    <div class="alert alert-danger">
    <center>    {{ session('error') }} </center>
    </div>
		</div>

@endif

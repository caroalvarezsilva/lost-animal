<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Welcome to Grails</title>
	<style type="text/css" media="screen">
	#status {
		background-color: #eee;
		border: .2em solid #fff;
		margin: 2em 2em 1em;
		padding: 1em;
		width: 12em;
		float: left;
		-moz-box-shadow: 0px 0px 1.25em #ccc;
		-webkit-box-shadow: 0px 0px 1.25em #ccc;
		box-shadow: 0px 0px 1.25em #ccc;
		-moz-border-radius: 0.6em;
		-webkit-border-radius: 0.6em;
		border-radius: 0.6em;
	}

	.ie6 #status {
		display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
	}

	#status ul {
		font-size: 0.9em;
		list-style-type: none;
		margin-bottom: 0.6em;
		padding: 0;
	}

	#status li {
		line-height: 1.3;
	}

	#status h1 {
		text-transform: uppercase;
		font-size: 1.1em;
		margin: 0 0 0.3em;
	}

	#page-body {
		margin: 2em 1em 1.25em 18em;
	}

	h2 {
		margin-top: 1em;
		margin-bottom: 0.3em;
		font-size: 1em;
	}

	p {
		line-height: 1.5;
		margin: 0.25em 0;
	}

	#controller-list ul {
		list-style-position: inside;
	}

	#controller-list li {
		line-height: 1.3;
		list-style-position: inside;
		margin: 0.25em 0;
	}

	@media screen and (max-width: 480px) {
		#status {
			display: none;
		}


		#page-body h1 {
			margin-top: 0;
		}
	}
	</style>
</head>
<body>


<div class="row">
	<div class="col-lg-3 col-md-6 col-md-offset-3 col-lg-offset-0">
		<div class="well">
			<h3 align="center">Search Filter</h3>
			<form class="form-horizontal">
				<div class="form-group">
					<label for="location1" class="control-label">Lugar</label>
					%{--<select class="form-control" name="" id="location1">
						<option value="">Any</option>
						<option value="">1</option>
						<option value="">2</option>
					</select>--}%
					<select from="${departments}" optionKey="id" optionValue="title" />

				</div>
				<div class="form-group">
					<label for="type1" class="control-label">Animal</label>
					<select class="form-control" name="" id="type1">
						<option value="">Any</option>
						<option value="">1</option>
						<option value="">2</option>
					</select>
				</div>
				<div class="form-group">
					<label for="pricefrom" class="control-label">Fecha</label>
					<div class="input-group">
						<div class="input-group-addon" id="basic-addon1">$</div>
						<input type="text" class="form-control" id="pricefrom" aria-describedby="basic-addon1">
					</div>
				</div>
				<div class="form-group">
					<label for="priceto" class="control-label">Color</label>
					<div class="input-group">
						<div class="input-group-addon" id="basic-addon2">$</div>
						<input type="text" class="form-control" id="priceto" aria-describedby="basic-addon1">
					</div>
				</div>
				<p class="text-center"><a href="#" class="btn btn-danger glyphicon glyphicon-search" role="button"></a></p>
			</form>
		</div>
	</div>
	<div>

	</div>

</div>
</body>
</html>

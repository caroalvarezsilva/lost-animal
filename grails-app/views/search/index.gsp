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

<div class="row" class="body-layout">

	<div class="col-lg-4 col-md-6  col-lg-offset-0" styles>
		<div class="well">
			<h3 align="center">Buscar</h3>
			<g:form class="form-horizontal">
				<div class="form-group">
					<label  class="control-label">Lugar</label>
					<g:select class="form-control" name="department" from="${departments}"/>
				</div>

				<div class="form-group">
					<label  class="control-label">Animal</label>
					<g:select class="form-control" name="animal" from="${animals}"/>
				</div>

				<div class="form-group">
					<label  class="control-label">Desde</label>
				</div>
				<g:datePicker name="fromDate" precision="day"
							  noSelection="['':'-Choose-']"/>

				<div class="form-group">
					<label  class="control-label">Hasta</label>
				</div>
				<g:datePicker name="toDate" precision="day"
							  noSelection="['':'-Choose-']"/>

				%{--<p class="text-center navbar-btn"><a href="#" class="btn btn-primary glyphicon glyphicon-search" role="button"></a></p>--}%

				<g:actionSubmit class="btn btn-primary glyphicon glyphicon-search text-center navbar-btn" value="Buscar" action="searchPost"/>


			</g:form>
		</div>
	</div>
	<div class="post-text">
		<g:if test="${posts}">
			<g:each status="i" var="it" in="${posts}">
				${it.message}
				<br><br><br>
			</g:each>


		</g:if>


	<div/>

	<div>
	</div>

</div>
</body>
</html>

<style>
/* make sidebar nav vertical */
@media ( min-width : 768px) {
	.sidebar-nav .navbar .navbar-collapse {
		padding: 0;
		max-height: none;
	}
	.sidebar-nav .navbar ul {
		float: none;
	}
	.sidebar-nav .navbar ul:not {
		display: block;
	}
	.sidebar-nav .navbar li {
		float: none;
		display: block;
	}
	.sidebar-nav .navbar li a {
		padding-top: 12px;
		padding-bottom: 12px;
	}
}
</style>

<div class="col-sm-3" style="border-right: 1px groove;border-color: aedaed">
	<div class="sidebar-nav">
		<div class="navbar navbar-default" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<span class="visible-xs navbar-brand">Sidebar menu</span>
			</div>
			<div class="navbar-collapse collapse sidebar-navbar-collapse">
				<ul class="nav navbar-nav nav-stacked">
					<li class="active"><a href="#">Grails</a></li>
					
					<li><a data-toggle="collapse" data-parent="#menu-bar"
						href="#collapseOne"> Java </a>
						<ul id="collapseOne" class="panel-collapse collapse">
							<li><a href="#">Core Java</a></li>
							<li><a href="#">Advance java</a></li>
							<li><a data-toggle="collapse" data-parent="#menu-bar"
						href="#collapseTwo"> Frameworks </a>
						<ul id="collapseTwo" class="panel-collapse collapse">
							<li><a href="#">Hibernate</a></li>
							<li><a href="#">Spring</a></li>
							<li><a href="#">Struts</a></li>
						</ul></li>
						</ul></li>
					<li><a data-toggle="collapse" data-parent="#menu-bar"
						href="#collapseOne1"> Testing Tools </a>
						<ul id="collapseOne1" class="panel-collapse collapse">
							<li><a href="#">jUnit</a></li>
							<li><a href="#">jMeter</a></li>
									<li><a href="#">Mockito</a></li>
						</ul></li>
						<li><a href="#">MySql</a></li>
					<li><a href="#">Menu Item 5</a></li>
					<!-- <li><a href="#">Reviews <span class="badge">1,118</span></a></li> -->
				</ul>
			</div>
		</div>
	</div>
</div>

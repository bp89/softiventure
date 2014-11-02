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
					<li class="active"><a href="#">Menu Item 1</a></li>
					<li><a href="#">Menu Item 2</a></li>
					<li><a data-toggle="collapse" data-parent="#menu-bar"
						href="#collapseOne"> Collapsible Item 1 </a>
						<ul id="collapseOne" class="panel-collapse collapse">
							<li><a href="#">Item 1</a></li>
							<li><a href="#">Item 2</a></li>
						</ul></li>
					<li><a data-toggle="collapse" data-parent="#menu-bar"
						href="#collapseOne1"> Collapsible Item 1 </a>
						<ul id="collapseOne1" class="panel-collapse collapse">
							<li><a href="#">Item 1</a></li>
							<li><a href="#">Item 2</a></li>
						</ul></li>
					<li><a href="#">Menu Item 4</a></li>
					<li><a href="#">Reviews <span class="badge">1,118</span></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

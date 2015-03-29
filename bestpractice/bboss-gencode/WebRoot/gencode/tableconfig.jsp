<%@ page language="java" pageEncoding="utf-8" session="false"%>
<%@ taglib uri="/WEB-INF/pager-taglib.tld" prefix="pg"%>
<!-- BEGIN PAGE HEADER-->
<h3 class="page-title">
表单配置 <small>${tableName}-${dbname }</small>
</h3>
<div class="page-bar">
	<ul class="page-breadcrumb">
		<li>
			<i class="fa fa-home"></i>
			<a href="index.page">首页</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#"></a>
		</li>
	</ul>
	<div class="page-toolbar">
		<div class="btn-group pull-right">
			<button type="button" class="btn btn-fit-height grey-salt dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
			Actions <i class="fa fa-angle-down"></i>
			</button>
			<ul class="dropdown-menu pull-right" role="menu">
				<li>
					<a href="#">Action</a>
				</li>
				<li>
					<a href="#">Another action</a>
				</li>
				<li>
					<a href="#">Something else here</a>
				</li>
				<li class="divider">
				</li>
				<li>
					<a href="#">Separated link</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->
<div class="row margin-bottom-20">
	<div class="col-md-12">
		<p>
			 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>
		<p>
			 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>
		<p>
			 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
		</p>
		<a href="layout_ajax_content_2.html" class="btn green ajaxify">
		Load another ajax content </a>
	</div>
</div>
<div class="row">
	<div class="col-md-6">
		<!-- BEGIN SAMPLE TABLE PORTLET-->
		<div class="portlet box red">
			<div class="portlet-title">
				<div class="caption">
					<i class="fa fa-cogs"></i>Simple Table
				</div>
				<div class="tools">
					<a href="javascript:;" class="collapse">
					</a>
					<a href="#portlet-config" data-toggle="modal" class="config">
					</a>
					<a href="javascript:;" class="reload">
					</a>
					<a href="javascript:;" class="remove">
					</a>
				</div>
			</div>
			<div class="portlet-body">
				<table class="table table-hover">
				<thead>
				<tr>
					<th>
						 #
					</th>
					<th>
						 First Name
					</th>
					<th>
						 Last Name
					</th>
					<th class="hidden-480">
						 Username
					</th>
					<th>
						 Status
					</th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td>
						 1
					</td>
					<td>
						 Mark
					</td>
					<td>
						 Otto
					</td>
					<td class="hidden-480">
						 makr124
					</td>
					<td>
						<span class="label label-success">
						Approved </span>
					</td>
				</tr>
				<tr>
					<td>
						 2
					</td>
					<td>
						 Jacob
					</td>
					<td>
						 Nilson
					</td>
					<td class="hidden-480">
						 jac123
					</td>
					<td>
						<span class="label label-info">
						Pending </span>
					</td>
				</tr>
				<tr>
					<td>
						 3
					</td>
					<td>
						 Larry
					</td>
					<td>
						 Cooper
					</td>
					<td class="hidden-480">
						 lar
					</td>
					<td>
						<span class="label label-warning">
						Suspended </span>
					</td>
				</tr>
				<tr>
					<td>
						 3
					</td>
					<td>
						 Sandy
					</td>
					<td>
						 Lim
					</td>
					<td class="hidden-480">
						 sanlim
					</td>
					<td>
						<span class="label label-danger">
						Blocked </span>
					</td>
				</tr>
				</tbody>
				</table>
			</div>
		</div>
		<!-- END SAMPLE TABLE PORTLET-->
	</div>
	<div class="col-md-6">
		<!-- BEGIN BORDERED TABLE PORTLET-->
		<div class="portlet box yellow">
			<div class="portlet-title">
				<div class="caption">
					<i class="fa fa-coffee"></i>Bordered Table
				</div>
				<div class="tools">
					<a href="javascript:;" class="collapse">
					</a>
					<a href="#portlet-config" data-toggle="modal" class="config">
					</a>
					<a href="javascript:;" class="reload">
					</a>
					<a href="javascript:;" class="remove">
					</a>
				</div>
			</div>
			<div class="portlet-body">
				<table class="table table-bordered table-hover">
				<thead>
				<tr>
					<th>
						 #
					</th>
					<th>
						 First Name
					</th>
					<th>
						 Last Name
					</th>
					<th class="hidden-480">
						 Username
					</th>
					<th>
						 Status
					</th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td>
						 1
					</td>
					<td>
						 Mark
					</td>
					<td>
						 Otto
					</td>
					<td class="hidden-480">
						 makr124
					</td>
					<td>
						<span class="label label-success">
						Approved </span>
					</td>
				</tr>
				<tr>
					<td>
						 2
					</td>
					<td>
						 Jacob
					</td>
					<td>
						 Nilson
					</td>
					<td class="hidden-480">
						 jac123
					</td>
					<td>
						<span class="label label-info">
						Pending </span>
					</td>
				</tr>
				<tr>
					<td>
						 3
					</td>
					<td>
						 Larry
					</td>
					<td>
						 Cooper
					</td>
					<td class="hidden-480">
						 lar
					</td>
					<td>
						<span class="label label-warning">
						Suspended </span>
					</td>
				</tr>
				<tr>
					<td>
						 3
					</td>
					<td>
						 Sandy
					</td>
					<td>
						 Lim
					</td>
					<td class="hidden-480">
						 sanlim
					</td>
					<td>
						<span class="label label-danger">
						Blocked </span>
					</td>
				</tr>
				</tbody>
				</table>
			</div>
		</div>
		<!-- END BORDERED TABLE PORTLET-->
	</div>
</div>
<!-- END PAGE CONTENT-->
<%@ include file="../partials/header.jspf" %>
<div class="ui black inverted segment">
	<div class="ui inverted secondary menu">
		<div class="ui container">
			<div class="item"><a href="/"><h3>Online FIR System</h3></a></div>
			<a class="right active item" href="/logout">Logout</a>
		</div>
	</div>
</div>

<div class="adminpage ui container">
	<div class="adminpage-info ui card">
		<div class="content">
			<div class="center aligned header">${user.admin.name}</div>
		</div>
		<div class="extra content">
			<div class="center aligned author">
				${user.admin.role}
			</div>
		</div>
	</div>

	<h2 class="ui header">Filed Complaints</h2>
	<table class="ui fixed table">
		<thead>
			<tr>
				
				<th>Name</th>
				<th>Type</th>
				<th>Complaint</th>
				<th>Status</th>
				<th>Document</th>
				<th>Police</th>
				<th>Phone</th>
				<th>Admin Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${complaints}" var="complaint">
				<tr>
								<td>
						<p><c:out value="${complaint.name} ${complaint.lastname}" /></p>
					</td>
					<td>
						<p><c:out value="${complaint.ctype}" /></p>
					</td>
					<td>
						<p><c:out value="${complaint.text}" /></p>
					</td>
					
					<c>
						<c:set value="negative" var="cssClass"></c:set>
					</c>
					<c:if test="${complaint.status == 'Completed'}">
						<c:set value="positive" var="cssClass"></c:set>
					</c:if>
					<td class="${cssClass}">
						<c:out value="${complaint.status}" />
					</td>
					
						<td>
						<img
							onclick="modal(this)"
							class="complaintImage ui medium image"
							src="${complaint.imagePath}"
							alt="image" style="width:50px; height:50px;"
						/>
					</td>
					
					<td>
						<c:out value="${complaint.police}" />
					</td>
					<td>
						<c:out value="${complaint.police_ph}" />
					</td>
					
					<td>
						<a href="/admin/complaint/${complaint.id}/edit"
							><button class="mini ui button">
								Edit
							</button></a
						>
						<a href="/admin/complaint/${complaint.id}/delete"
							><div class="mini ui red button">Delete</div></a
						>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<a class="anchor-remove" href="/admin/police/new"
		><div class="adminpage-addpolice ui black button">
			Add New Police Officer
		</div></a
	>

	<h2 class="ui header">Police Personnel</h2>
	<table class="ui fixed table">
		<thead>
			<tr>
				<th>Name</th>
				<th>Admin Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${police}" var="policeList">
				<tr>
					<td><c:out value="${policeList.name}" /></td>
					<td>
						<a href="/admin/police/${policeList.id}/edit"
							><button class="mini ui button">
								Edit
							</button></a
						>
						<a href="/admin/police/${policeList.id}/delete"
							><div class="mini ui red button">Delete</div></a
						>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


<div class="ui modal">
	<i class="close icon"></i>
	<div class="header">
		Complaint Image
	</div>
	<div class="image content">
		<div class="image">
			<img id="modalImage" class="ui fluid image" />
		</div>
	</div>
</div>

<%@ include file="../partials/footer.jspf" %>

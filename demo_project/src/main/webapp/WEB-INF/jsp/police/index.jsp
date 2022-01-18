<%@ include file="../partials/header.jspf" %>
<div  class="ui black inverted segment">
	<div class="ui inverted secondary menu">
		<div class="ui container">
			<div class="item"><a href="/"><h3>Online FIR System</h3></a></div>
			<a class="right active item" href="/logout">Logout</a>
		</div>
	</div>
</div>

<div class="policepage ui container">
	<div class="userpage-info ui card">
		<div class="content">
			<div class="center aligned header">${user.police.name}</div>
			<!-- <div class="center aligned description">
				<p>
					${user.citizen.email}
				</p>
			</div> -->
		</div>
		<div class="extra content">
			<div class="center aligned author">
				${user.username}
			</div>
		</div>
	</div>

	<h2 class="ui header">Complaints</h2>
	<table class="ui fixed table">
		<thead>
			<tr>
			<th>Documents</th>
				<th>Name</th>
				<th>Phone</th>
				<th>Type</th>
				<th>Complaint</th>
				<th>Status</th>
				<th>Actions</th>
				<th>Request</th>
				<th>Police</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${complaints}" var="complaint">
				<tr>
				<td >
						<img
							onclick="modal(this)"
							class="complaintImage ui medium image"
							src="${complaint.imagePath}" style="width:50px; height:50px;"
						/>
					</td>
				
				<td>
						<p><c:out value="${complaint.name} ${complaint.lastname}" /></p>
					</td>
					<td>
						<p><c:out value="${complaint.phone}" /></p>
					</td>
					<td>
						<p><c:out value="${complaint.ctype}" /></p>
					</td>
				<td><p><c:out value="${complaint.text}" /></p></td>
					
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
						<a href="/complaint/${complaint.id}/status/edit"
							><div class="mini ui button">Update Status</div></a
						>
					</td>
					
					
					
					
					<c:if test="${complaint.police_req == 'Waiting'}">
						<c:set value="negative" var="cssClass"></c:set>
					</c:if>
					<c:if test="${complaint.police_req == 'Accepted'}">
						<c:set value="positive" var="cssClass"></c:set>
					</c:if>
					<td class="${cssClass}">
						<p><c:out value="${complaint.police_req}" /></p>
					</td>
					
					
					 
					
					<td>
						<c:out value="${complaint.police}" />
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<h2 class="ui header">Emergency Complaints</h2>
	<table class="ui fixed table">
		<thead>
			<tr>
				<th>Complaint</th>
				<th>Status</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${emergencyComplaints}" var="emergencyComplaint">
				<tr>
					<td><c:out value="${emergencyComplaint.complaint}" /></td>
					<c:if
						test="${emergencyComplaint.status == 'Investigation Pending'}"
					>
						<c:set value="negative" var="cssClass"></c:set>
					</c:if>
					<td class="${cssClass}">
						<c:out value="${emergencyComplaint.status}" />
					</td>
					<td>
						<a
							href="/emergency-complaint/${emergencyComplaint.id}/status/edit"
							><div class="mini ui button">Update Status</div></a
						>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<a class="anchor-remove" href="/crime/new"
		><div class="policepage-filecrime ui black button">
			File Crime
		</div></a
	>

	<h2 class="ui header">Crime</h2>
	<table class="ui fixed table">
		<thead>
			<tr>
				<th>Name</th>
				<th>Age</th>
				<th>Location</th>
				<th>Status</th>
				<th>Type</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${crimes}" var="crime">
				<tr>
					<td><c:out value="${crime.name}" /></td>
					<td><c:out value="${crime.age}" /></td>
					<td><c:out value="${crime.location}" /></td>
					<c:if test="${crime.status == 'Pending'}">
						<c:set value="negative" var="cssClass"></c:set>
					</c:if>
					<td class="${cssClass}">
						<c:out value="${crime.status}" />
					</td>
					<td><c:out value="${crime.type}" /></td>
					<td>
						<a href="/crime/${crime.id}/delete">
						<div class="mini ui red button">Delete</div>
						</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

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

<br>
<br>
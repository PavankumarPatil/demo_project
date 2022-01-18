<%@ include file="../partials/header.jspf" %>
<div  class="ui black inverted segment">
	<div class="ui inverted secondary menu">
		<div class="ui container">
			<div class="item"><a href="/"><h3>Online FIR System</h3></a></div>
			<a class="right active item" href="/logout">Logout</a>
		</div>
	</div>
</div>
<div class="userpage ui container">
	<div class="userpage-info ui card">
		<div class="content">
			<div class="center aligned header">${user.citizen.name}</div>
			<div class="center aligned description">
				<p>
					${user.citizen.email}
				</p>
			</div>
		</div>
		<div class="extra content">
			<div class="center aligned author">
				${user.username}
			</div>
		</div>
	</div>

	<a class="anchor-remove" href="/user/${user.username}/complaint"
		><div class="userpage-addcomplaint ui black button">
			File Complaint
		</div></a
	>

	<h2 class="ui header">Filed Complaints</h2>
	<table class="ui fixed table">
		<thead>
			<tr>
				<th>Image</th>
				<th>Name</th>
				<th>Type</th>
				
				<th>Complaint</th>
				<th>Request</th>
				<th>Status</th>
				
				<th>Police</th>
				<th>Contact No.</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${user.citizen.complaint}" var="complaint">
				<tr>
				<td>
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
						<p><c:out value="${complaint.ctype}" /></p>
					</td>
					
					<td>
						<p><c:out value="${complaint.text}" /></p>
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
					
					
					<c:if test="${complaint.status == 'Investigation Pending'}">
						<c:set value="negative" var="cssClass"></c:set>
					</c:if>
					<td class="${cssClass}">
						<c:out value="${complaint.status}" />
					</td>
					
					<c:if test="${complaint.police == 'Not Assigned'}">
						<c:set value="negative" var="cssClass"></c:set>
					</c:if>
					<c:if test="${complaint.police_ph != 'Not Assigned'}">
						<c:set value="positive" var="cssClass"></c:set>
					</c:if>
					<td class="${cssClass}">
						<p><c:out value="${complaint.police}" /></p>
					</td>
					
					
					<c:if test="${complaint.police_ph == 'Not Assigned'}">
						<c:set value="negative" var="cssClass"></c:set>
					</c:if>
					<c:if test="${complaint.police_ph != 'Not Assigned'}">
						<c:set value="positive" var="cssClass"></c:set>
					</c:if>
					<td class="${cssClass}">
						<p><c:out value="${complaint.police_ph}" /></p>
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

<%@ include file="../partials/footer.jspf" %>

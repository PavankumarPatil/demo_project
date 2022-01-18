<%@ include file="../partials/header.jspf" %>
<div  class="ui black inverted segment">
	<div class="ui inverted secondary menu">
		<div class="ui container">
			<div class="item"><a href="/"><h3>Online FIR System</h3></a></div>
			<a class="right active item" href="/logout">Logout</a>
		</div>
	</div>
</div>

<div class="complain-edit__page">
	<div class="ui centered grid container">
		<div class="nine wide column">
			<a href="/admin"
				><button class="ui labeled icon button">
					<i class="angle left icon"></i>
					Go Back
				</button></a
			>
			<h1 class="form-header">Edit Complaint ID - ${complaint.id}</h1>
			<div class="ui fluid card">
				<div class="content">
					<form
						class="ui form"
						action="/admin/complaint/${complaint.id}/edit"
						method="POST"
					>
						<div class="field">
							<label for="complaint">Complaint</label>
							<textarea
								name="complaint"
								id="complaint"
								required="true"
								minlength="2"
								maxlength="255"
								placeholder="Update Complaint (Only in Viable Case)"
							>
${complaint.text}</textarea
							>
						</div>
						<div class="field">
							<label for="status">Status</label>
							<select path="type" name="status" id="status" value="${complaint.status}" required="true" minlength="2" maxlength="255" placeholder="Update Status" >
		<option>Submitted</option>
		<option>Under Investigation</option>
		<option>Registered As FIR</option>
		<option>Case Resolved</option></select>
						</div>
						<button
							class="ui primary labeled icon button"
							type="submit"
						>
							<i class="unlock alternate icon"></i>
							Edit Details
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../partials/footer.jspf" %>

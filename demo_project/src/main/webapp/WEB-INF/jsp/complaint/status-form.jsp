<%@ include file="../partials/header.jspf" %>
<div class="ui attached inverted segment">
	<div class="ui inverted secondary menu">
		<div class="ui container">
			<div class="item"><a href="/"><h3>Online FIR System</h3></a></div>
			<a class="right active item" href="/logout">Logout</a>
		</div>
	</div>
</div>

<div class="complaint-edit-form">
	<div class="ui centered grid container">
		<div class="nine wide column">
			<a href="/police"
				><button class="ui labeled icon button">
					<i class="angle left icon"></i>
					Go Back
				</button></a
			>

			<!-- <c:if test="${validationError}">
				<div class="ui warning message">
					<div class="content">
						<div class="header">
							Validation failed!
						</div>
						<form:errors path="complaint.*" />
					</div>
				</div>
			</c:if> -->
			<h1 class="form-header">Status Change Id - ${complaint.id}</h1>
			<div class="ui fluid card">
				<div class="content">
					<form:form
						class="ui form"
						action="/complaint/${complaintId}/status/edit"
						method="post"
						modelAttribute="complaint"
						enctype="multipart/form-data"
					>
						<div class="field disabled">
							<form:label path="text" for="complaint"
								>Complaint</form:label
							>
							<form:textarea
								name="complaint"
								id="complaint"
								path="text"
								required="true"
								value="${complaint.text}"
							></form:textarea>
						</div>
						
						
						
						<div><label>Status</label><select path="type" name="status" id="status" required="true">
		<option>Submitted</option>
		<option>Under Investigation</option>
		<option>Registered As FIR</option>
		<option>Case Resolved</option>
	</select></div>
						
				
						
						
						<div class="field">
							<label for="status">Officers Name</label>
							<input
								type="text"
								name="police"
								id="police"
								value="${complaint.police}"
								required="true"
								minlength="2"
								maxlength="255"
								placeholder="Police Officers Name"
							/>
						</div>
						
						
						<div class="field">
							<label for="status">Phone</label>
							<input
								type="text"
								name="police_ph"
								id="police_ph"
								value="${complaint.police_ph}"
								required="true"
								minlength="2"
								maxlength="255"
								placeholder="Police Officers Name"
							/>
						</div>
						
						
						<div class="field"><label for="status">Request</label><select path="type" name="police_req" id="police_req" required="true">
		<option >Accepted</option>
		<option >Waiting</option>
	</select></div>
						
						
						
						
						
						
						<button
							class="ui primary labeled icon button"
							type="submit"
						>
							<i class="paper plane icon"></i>
							Edit Status
						</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../partials/footer.jspf" %>

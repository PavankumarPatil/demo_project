<%@ include file="../partials/header.jspf" %>
<div  class="ui black inverted segment">
	<div class="ui inverted secondary menu">
		<div class="ui container">
			<div class="item"><a href="/"><h3>Online FIR System</h3></a></div>
			<a class="right active item" href="/logout">Logout</a>
		</div>
	</div>
</div>
<div class="complaint-form">
	<div class="ui centered grid container">
		<div class="nine wide column">
			<a href="/user"
				><button class="ui labeled icon button">
					<i class="angle left icon"></i>
					Go Back
				</button></a
			>

			<c:if test="${validationError}">
				<div class="ui warning message">
					<div class="content">
						<div class="header">
							Validation failed!
						</div>
						<form:errors path="complaint.*" />
					</div>
				</div>
			</c:if>
			<h1 class="form-header">File a Complaint</h1>
			<div class="ui fluid card">
				<div class="content">
					<form:form
						class="ui form"
						action="/user/${username}/complaint"
						method="post"
						modelAttribute="complaint"
						enctype="multipart/form-data">
						
						<div class="field">
							<label>Name</label>
							<input
								type="text"
								name="name"
								placeholder="Username"
								required="true"
							/>
						</div>
						<div class="field">
							<label>Last Name</label>
							<input
								type="text"
								name="lastname"
								placeholder="Last Name"
								required="true"
							/>
						</div>
						
						<div class="field">
							<label>Email ID</label>
							<input
								type="text"
								name="Email"
								placeholder="Email"
								required="true"
							/>
						</div>
						
						
						<div class="field">
							<label>Mobile No</label>
							<input
								type="text"
								name="phone"
								placeholder="Phone no"
								required="true"
							/>
						</div>
						
							<div class="field">
							<label>City</label>
							<input
								type="text"
								name="city"
								placeholder="Username"
								required="true"
							/>
						</div>
						
						
						<div class="field">
							<label>Address</label>
							<input
								type="text"
								name="address"
								placeholder="Username"
								required="true"
							/>
						</div>
						
						
						
					
						
						
						<div><label>Complaint</label><select path="type" name="ctype" id="type" required="true">
		<option value="Missing">Missing</option>
		<option value="Murder">Murder</option>
		<option value="Theft">Theft</option>
		<option value="Breaking and Entering">Breaking and Entering</option>
		<option value="accident">accident</option>
		<option value="chain-snatching">chain-snatching</option>
		<option value="assault">assault</option>
		<option value="attempt to commit murder"> attempt to commit murder</option>
		<option value="dacoity">dacoity</option>
		<option value="extortion">extortion</option>
		<option value="robbery">robbery</option>
		
	</select></div> 					
						
						
						<div class="field">
							<form:label path="text" for="complaint"
								>Complaint</form:label
							>
							<form:textarea
								name="complaint"
								id="complaint"
								path="text"
								required="true"
								minlength="2"
								maxlength="255"
								placeholder="Enter your complaint in detail" 
							></form:textarea>
						</div>
						
						<div class="field">
							<label for="file">Photo: Addhar Card or Pan Card</label>
							<input
								type="file"
								name="file"
								id="file"
								required="flase"
							/>
						</div>
						
						<div class="field">
							<label>Adhar Card Number</label>
							<input
								type="text"
								name="adharno"
								id="adharno"
								placeholder="Adhar no "
								required="true"
							/>
						</div>
						
						<div class="field">
							<label>Witness Name</label>
							<input
								type="text"
								name="username"
								placeholder="Withness name"
								required="false"
							/>
						</div>
						
						
						
						<button
							class="ui primary labeled icon button"
							type="submit"
						>
							<i class="paper plane icon"></i>
							Complain
						</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../partials/footer.jspf" %>

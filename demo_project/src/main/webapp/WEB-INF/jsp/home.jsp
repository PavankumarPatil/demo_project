<%@ include file="./partials/header.jspf" %>
<head>
 <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="styles/styles.css" rel="stylesheet" />
</head>
<div class="homepage">
<!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top">Online FIR System</a>
                <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#fast-complaint">Emergency Complaint</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li>
                        <button class="btn btn-primary"><a class="anchor-remove" href="/login"
					>Login</a></button>
                    </ul>
                </div>
            </div>
        </nav><br><br><br><br>
	<div class="homepage-hero">
		<img
			class="homepage-hero__img"
			src="https://images.unsplash.com/photo-1557081998-05f784dcdd41?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9"
			alt="homepage background image"
		/>
		<div class="homepage-hero__text">
			<h1 class="homepage-hero__text_title">Online FIR System</h1>
			<h6 class="homepage-hero__text_subtitle">
				Your worries ends here. It is our take now.
			</h6>
			<div class="homepage-hero__text_button">
				
				<a class="anchor-remove" href="#fast-complaint"
					><button class="ui right labeled icon button">
						Fast Complain<i class="down arrow icon"></i></button
				></a>
			</div>
		</div>
	</div>
	<section>
	<!-- About Section-->
         <section class="page-section bg-primary text-white mb-0" id="about">
            <div class="container">
                <!-- About Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-white">About</h2>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
	 <div class="row">
                    <div class="col-lg-12 ms-center"><p class="lead">Governor Gerald Aungier (1672-1677) felt that Bombay would be a better headquarters for the East India Company than Surat because of its trade advantages and natural harbour. This transfer was eventually done in 1686.

Aungier believed that Bombay was a city, which by God’s assistance is intended to be built and contributed greatly to its development. The city’s fortifications were strengthened, a ditch was built around the fort, bastions and batteries were added, a marine base was established, the dockyard extended, the garrison built up, the Forts at Sion and Sewree further fortified and a new fortress Fort St. George- was built in 1770.

English law and courts were introduced and judges appointed, a mole for berthing ships staked out, a mint was established and the first rupee coined. Aungier also recommended the building of a walled town from Dongri in the north to Mendham’s Point, where today’s office of the Director General of Police, Maharashtra State.

The Bombay Police was instrumental in conducting the first census operation, attempted by the Bombay Government in 1849. Captain E. Baynes, Superintendent of Police, was put in charge.

</p></div>
                </div>
</section>
	<div id="homepage-body" class="homepage-body ui container">
		<div class="homepage-body__crime">
			<h3 class="homepage-body__ec_title">
				Crime Coverage
			</h3>

			<table class="ui fixed table">
				<thead>
					<tr>
						<th>Name</th>
						<th>Age</th>
						<th>Location</th>
						<th>Status</th>
						<th>Type</th>
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
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!--Emergency Complaint  -->
     <section class="bg bg-warning">
		<div id="fast-complaint" class="homepage-body__ec" >
			<h3 class="homepage-body__ec_title">Emergency Complaint</h3>
			<div class="homepage-body__ec-wrapper">
				<div class="homepage-body__ec-wrapper-file">
					<a class="anchor-remove" href="/emergency-complaint"
						><button
							class="homepage-body__ec-wrapper-button ui primary button"
						>
							File a Emergency Complaint
						</button></a
					>
				</div>
				<div class="homepage-body__ec-wrapper-form" id="#Status">
					<form
						class="ui form"
						action="/emergency-complaint-status"
						method="post"
					>
						<div class="field">
							<label for="emergency-complaint-status"
								>Check Emergency Complaint Status</label
							>
							<input
								type="number"
								name="emergency-complaint-status"
								id="emergency-complaint-status"
								placeholder="Enter Emergency Complaint Id"
								required="true"
							/>
						</div>

						<button
							class="homepage-body__ec-wrapper-button ui positive button"
							type="submit"
						>
							Check
						</button>
					</form>
				</div>
			</div>
		</div>
		</section>
	</div>
	
<!-- Footer-->
        <footer class="footer text-center" id="contact">
            <div class="container">
                <div class="row">
                    <!-- Footer Location-->
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">Location</h4>
                        <p class="lead mb-0">
                            Maharashtra Police Headquarters
                            <br />
                            Chhatrapati Shivaji Maharaj Marg,
                            <br />
                            Colaba, Mumbai, Maharashtra 400001
                        </p>
                    </div>
                    <!-- Footer Social Icons-->
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">Around the Web</h4>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-linkedin-in"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-dribbble"></i></a>
                    </div>
                    <!-- Footer About Text-->
                    <div class="col-lg-4">
                        <h4 class="text-uppercase mb-4">Helpline Numbers</h4>
                        <p class="lead mb-0">
                            POLICE	100 , 022-22621855
                            <br>
                            WOMEN HELPLINE NUMBERS · Vanitha Sahayavani: 100, 080-22943225
                            <br>
                            TOURIST POLICE	022-22621855
                            <br>
                            DISASTER HELPLINE	022-22694725
                            .
                        </p>
                    </div>
                </div>
            </div>
        </footer>
</div>


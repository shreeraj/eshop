<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<!-- / catg header banner section -->

<!-- Cart view section -->
<section id="aa-myaccount">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-myaccount-area">
					<div class="row">

						<div class="col-md-6">
							<div class="aa-myaccount-register">
								<h4>Register</h4>

								<form:form method="post" modelAttribute="user" action="register"
									class="aa-login-form">
									<label for="">Enter User Name</label>
									<form:input path="userName" type="text"
										placeholder="Username or email" />
									<label for="">Enter Password</label>
									<form:input path="password" type="text"
										placeholder="Enter password" />
									<label for="">Enter First Name</label>
									<form:input path="firstName" type="text"
										placeholder="First Name" />
									<label for="">Enter Last Name</label>
									<form:input path="lastName" type="text" placeholder="Last Name" />
									<label for="">Enter Email</label>
									<form:input path="email" type="text" placeholder="Email" />
									<label for="">Enter Phone No</label>
									<form:input path="phone" type="text" placeholder="Phone No." />
									<label for="">Enter Street</label>
									<form:input path="street" type="text" placeholder="Street" />
									<label for="">Enter Zip No</label>
									<form:input path="zip" type="text" placeholder="Postal Code" />
									<label for="">Enter City</label>
									<form:input path="city" type="text" placeholder="City" />
									<label for="">Enter State</label>
									<form:input path="state" type="text" placeholder="State" />
									<label for="">Enter Country</label>
									<form:input path="country" type="text" placeholder="Country" />
									<!-- 									<label for="">Enter Role</label>  -->
									<form:select path="role" hidden="true">
										<form:option value="MEMBER" label="...." />
										<form:options items="${roles}" />
									</form:select>
									<button type="submit" class="aa-browse-btn">Register</button>
								</form:form>


								<%-- 								<form action="" class="aa-login-form"> --%>
								<!-- 									<label for="">Username<span>*</span></label> <input type="text" -->
								<!-- 										placeholder="Username or email"> -->
								<!-- 									<label for="">Email address<span>*</span></label> <input -->
								<!-- 										type="text" placeholder="Username or email"> <label -->
								<!-- 										for="">Password<span>*</span></label> <input type="password" -->
								<!-- 										placeholder="Password"> -->
								<!-- 									<button type="submit" class="aa-browse-btn">Register</button> -->
								<%-- 								</form> --%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Cart view section -->
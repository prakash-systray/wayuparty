<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div id="preloader"></div>

   <div id="wrapper" class="wrapper bg-ash">
    <jsp:include page="../wayupartyMasterHeader.jsp" />
        <!-- Page Area Start Here -->
        <div class="dashboard-page-one">
          <jsp:include page="../wayupartyMasterSideNav.jsp" />
            <div class="dashboard-content-one">
                <div class="breadcrumbs-area">
	                    <h3>My Orders</h3>
	                    <ul>
	                        <li>
	                            <a href="${Wayuparty_appUrl}/dashboard">Home</a>
	                        </li>
                        
	                        <li>My Orders</li>
	                    </ul>
	             </div>
	             
            <div class="card height-auto">    
                <div class="card ui-tab-card">
                    <div class="card-body">
                    <div id="ordersLoaderDiv"></div>
                    
                    <div class="table-responsive">
                           <div id="myOrdersList"></div>
                    </div>
	                    
                  </div>
                </div>
              </div>
            </div>
       </div>
       <jsp:include page="../wayupartyMasterFooter.jsp" />
 </div>
 
 <script type="text/javascript">
		window.onload = function () {
			getOrdersList();
		 };
 </script>
 
 <script>
 function getOrdersList(){
	 var loginUserUUID = '${loginUserUUId}';
	 var appUrl ='${appUrl}';
	 var formData = new FormData();
	 formData.append("userUUID", loginUserUUID);
	 
	 $.ajax({
		    data: formData,
 	        contentType: false,
 	        processData: false,
	    	type: "POST",
	    	 url: appUrl+"/getUserOrdersList?${_csrf.parameterName}=${_csrf.token}", 
	        success: function(resultData) {
	   			
	        	var result = "";
	        	result = result +"<table class='table display data-table text-nowrap' id='vendorPagination'>";
	        	result = result +"<thead>";
	        	result = result +"<tr>";
	        	result = result +"<th>Photo</th>";
	        	result = result +"<th>Vendor Name</th>";
	        	result = result +"<th>Vendor Email</th>";
	        	result = result +"<th>Vendor Mobile</th>";
	        	result = result +"<th>Actions</th>";
	        	result = result +"</tr>";
	        	result = result +"</thead>";
             
	        	result = result +"<tbody>";
	        	
	        	/* if(resultData.data.length > 0){
		        	for (var i=0; i<resultData.data.length; i++)
	   				{  
		        		var opt = resultData.data[i];
		        		
		        		result = result +"<tr>";
		        		result = result +"<td class='width80'>";
		        		
		        		result = result +'<div class="media">';
		    			result = result +'<div class="mediaimagezoo">';
		    			result = result +'<img src="'+opt.vendorProfileImg+'" onerror="predefineVendorProfileImage(this);" alt="image" class="img-fluid rounded mr-3" style="width:75px;">';
		    			result = result +'</div>';
		    			result = result +'</div>';
		        		
		        		result = result +"</td>";
		        		result = result +"<td>"+opt.vendorName+"</td>";
		        		result = result +"<td>"+opt.vendorEmail+"</td>";
		        		result = result +"<td>"+opt.vendorMobile+"</td>";
		        		
		        		result = result +"<td class='width100'>";
		        		result = result +"<div class='header-inline item-header'>";
		        		result = result +"<div class='header-elements'>";
		        		result = result +"<ul>";
		        		
		        		result = result +'<li>';
		        		if(opt.isVerified == 'N'){
		        		result = result +'<a href="javascript:void(0)" onClick="resendInvitation(\''+opt.vendorUUID+'\');" ><i class="fa fa-envelope mr-3" title="Resend"></i></a>';
		        		}
		        		
		        		result = result +'<a href="#" data-toggle="modal" data-target="#right-slide-modal" onclick="getVendorDetails(\''+opt.vendorUUID+'\')"><i class="fas fa-eye mr-3"></i></a>';
		        		'<sec:authorize access="hasRole(\'ROLE_SUPER_ADMIN\')">'
		        			result = result +'<a href="'+appUrl+'/vendorProfile?vendorUUID='+opt.vendorUUID+'" ><i class="fa fa-search-plus mr-3" title="Explore"></i></a>';
		        		'</sec:authorize>';
		        		result = result +"</li>";
		        		result = result +"</ul>";
		        		result = result +"</div>";
		        		result = result +"</div>";
                     result = result +"</td>";
                     result = result +"</tr>";
	   				}
	        	}else{
	        		result = result +"<tr>";
					result = result+'<td colspan="5" class="noRecords-dashboard-portlets"><img src="/resources/img/no-records.png" alt=""/></td>';
					result = result +"</tr>";
				} */
	        	

	        	
	        	result = result +"</tbody>";
	        	result = result +"</table>";
             
	        	 $("#registeredVendorsLoadingDiv").removeAttr("style");
	        	 $("#registeredVendorsList").empty();  
	    	     $("#registeredVendorsList").append(result);
	    	     vendorPagination();
	        },
	    });
	 
 }
 </script>
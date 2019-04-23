<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<div class="col-md-9 right-sidebar right-section">
	<div class="main-content">
		<div class="page-header">
			<span class="menu-toggle bg-none"> <img
				src="<c:url value='/resources/img/menu-icon.jpg'/>" alt="toogle">
			</span>
<!-- 			<div class="addsection"> -->
<%-- 				<a href="<c:url value='/redraw/new' />">Add New</a> --%>
<!-- 			</div> -->
<!-- 			<ol class="breadcrumb"> -->
<%-- 				<li><a href="${pageContext.request.contextPath}/redraw/list">Drawing</a><i --%>
<!-- 					class="icon-angle-right"></i></li> -->
<!-- 				<li class="active">List of Request for Officer</li> -->
<!-- 			</ol> -->
		</div>
		<div class="page-content boxMain">
			<div class="innersection">
				<!--accordian sec-->
				<div class="sectionwise">
					<div class="row filtersec">
						<div class="col-md-10">
							<h3 class="title">List of School</h3>
						</div>

					</div>



					<div class="clearfix"></div>
					<div class="table-responsive table-grid">
						<table id="example" class="display" style="width: 100%">
							<thead>
								<tr>
									<th>Sl. No.</th>
									<th>Application No</th>
									<th>Officer Type</th>
									<th>Department</th>
									<th>No. of Officer</th>
									<!--                  <th>Status</th> -->
									<th>Action</th>


								</tr>
							</thead>


							<tfoot>
								<tr>

									<th></th>
									<th>Application No</th>
									<th>Officer Type</th>
									<th>Department</th>
									<th>No. of Officer</th>
									<!--                  <th>Status</th> -->
									<th></th>

								</tr>
							</tfoot>



							<tbody>
								<c:forEach var="school" items="${schools}" varStatus="counter">
									<tr>
										<td>${counter.count}</td>
										<td>${school.id}</td>
										<td>${school.total}</td>
										<td>${school.general}</td>
										<td>${school.others}</td>

										<!-- 		<td>  -->
										<%-- 		<c:if test="${redraw.saveAsDraft == false}">	 --%>
										<%-- 		<a href="<c:url value='view-${redraw.rid}' />" class="tooltip-top" data-tooltip="View"><i class="fa fa-eye"></i></a>  --%>
										<%-- 		</c:if> --%>
										<%-- 		<c:if test="${redraw.saveAsDraft == true}">	 --%>
										<%-- 		<a href="<c:url value='edit-${redraw.rid}' />" class="tooltip-top" data-tooltip="Edit"><i class="fa fa-edit"></i></a>				  --%>
										<%-- 		</c:if> --%>
										<!-- 		</td> -->

									</tr>
								</c:forEach>
							</tbody>
						</table>


					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    // Setup - add a text input to each footer cell
    $('#example tfoot th').not(":eq(0),:eq(5)").each( function () {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
    } );
 
    // DataTable
    var table = $('#example').DataTable();
    
    // Apply the search
    table.columns().every( function () {
        var that = this;
         
        $( 'input', this.footer() ).on( 'keyup change', function () {
            if ( that.search() !== this.value ) {
                that
                    .search( this.value )
                    .draw();
            }
        } );
    } );
} );
</script>
<STYLE>
.dnone {
	background-color: #6f77c1 !important;
}

tfoot {
	display: table-header-group;
}

/* .prev, .next {
	position: relative !important
	display: block;
} */
tfoot input {
	width: 100%;
	padding: 3px;
	box-sizing: border-box;
}

.dataTables_filter {
	margin-right: 8px;
	text-align: right;
	display: none;
}

.prev, .next {
	cursor: pointer;
	position: relative;
	top: 0% !important;
	width: auto;
	padding: 16px;
	margin-top: -17px;
	color: #E65A15 !important;
	font-weight: 400; /
	font-size: 20px; /
	transition: 0.6s ease;
	border-radius: 0 3px 3px 0;
	user-select: none;
	-webkit-user-select: none;
	background-color: transparent !important;
	margin-right: 0px !important;
	font-size: 15px;
}

.dataTable th[class*=sorting_] {
	color: #ffffff !important;
}
</STYLE>
<%@page import="controleur.TypeCompteController"%>
<%@page import="dao.ServiceDAO"%>
<%@page import="model.*"%>
<%@page language="java" import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>

<html lang="en">
<head>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1"
	name="viewport">
<title>Type compte</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 <link type="text/css" rel="stylesheet" href="/BioTransac/inc/style.css" />
<style type="text/css">
    .bs-example{
    	margin: 20px;
    }
</style>

</head>
<body>


  <fieldset>
            <legend class="text-info">SERVICE</legend>
        	<br>
        		<a href="ServiceControleur?action=insert" >					
					<button type="button" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-file"></span> Nouveau enregistrement</button>
                </a>
        	<br><br>
          <table class="table table-striped table-condensed">
					  <thead class="panel panel-primary" >
                       
											<tr class="success" >
												<th aria-label="Id: activate to sort column descending"
													aria-sort="ascending" style="width: 190px;" colspan="1"
													rowspan="1" aria-controls="example" tabindex="0"
													class="sorting_asc">#</th>
												<th
													aria-label="Type de compte: activate to sort column ascending"
													style="width: 190px;" colspan="1" rowspan="1"
													aria-controls="example" tabindex="0" class="sorting">NOM</th>
												
												<th aria-label="Actions: activate to sort column ascending"
													style="width: 54px;" colspan="2" rowspan="1"
													aria-controls="example" tabindex="0" class="sorting">Actions</th>
											</tr>
										</thead>
										
					
				                	<tbody>
											<c:forEach items="${listservices}" var="service">

												<tr class="odd" role="row"  >
													<td class="sorting_1"><c:out value="${service.codserv}" /></td>
													<td><c:out value="${service.libserv}" /></td>
													

													<td><a
														href="ServiceControleur?action=edit&code=<c:out value="${service.codserv}"/>">
														<button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-edit"></span> Modifier</button>
															</a></td>
														<td>
												          
															 <a  href="javascript:confirmGo('Êtes vous sure de vouloir supprimer cet enregistrement?','ServiceControleur?action=delete&code=<c:out value="${service.codserv}"/>')">
															<button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-remove"></span>Supprimer</button>
															
															</a>
                      
															
													</td>
												</tr>

											</c:forEach>
						
						
						

					</tbody>
				</table>
			
			</fieldset>
	

	
</body>
</html>


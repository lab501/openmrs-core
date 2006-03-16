<%@ include file="/WEB-INF/template/include.jsp"%>

<openmrs:require privilege="Upload XSN" otherwise="/login.htm" redirect="/admin/formentry/xsnUpload.form" />

<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="localHeader.jsp"%>

<h2>
	<spring:message code="FormEntry.xsn.title" />
</h2>

<form method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td><spring:message code="FormEntry.xsn.form" /></td>
			<td>
				<select name="xsnForm">
					<c:forEach items="${formList}" var="form">
						<option value="${form.formId}" <c:if test="${param.formId == form.formId}">selected</c:if>>${form.uri}</option>
					</c:forEach>
				</select>
			</td>
		</tr>
		<tr>
			<td><spring:message code="FormEntry.xsn.file" /></td>
			<td><input type="file" name="xsnFile" /></td>
		</tr>
	</table>
	<input type="submit" value='<spring:message code="general.submit" />' />
</form>

<%@ include file="/WEB-INF/template/footer.jsp"%>
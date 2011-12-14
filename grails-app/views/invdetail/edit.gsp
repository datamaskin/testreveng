

<%@ page import="com.sexingtechnologies.Invdetail" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'invdetail.label', default: 'Invdetail')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${invdetailInstance}">
            <div class="errors">
                <g:renderErrors bean="${invdetailInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${invdetailInstance?.id}" />
                <g:hiddenField name="version" value="${invdetailInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="location"><g:message code="invdetail.location.label" default="Location" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'location', 'errors')}">
                                    <g:textField name="location" maxlength="3" value="${invdetailInstance?.location}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="bullCode"><g:message code="invdetail.bullCode.label" default="Bull Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'bullCode', 'errors')}">
                                    <g:textField name="bullCode" maxlength="10" value="${invdetailInstance?.bullCode}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="bullName"><g:message code="invdetail.bullName.label" default="Bull Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'bullName', 'errors')}">
                                    <g:textField name="bullName" maxlength="37" value="${invdetailInstance?.bullName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ownCode"><g:message code="invdetail.ownCode.label" default="Own Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'ownCode', 'errors')}">
                                    <g:textField name="ownCode" maxlength="8" value="${invdetailInstance?.ownCode}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ownName"><g:message code="invdetail.ownName.label" default="Own Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'ownName', 'errors')}">
                                    <g:textField name="ownName" maxlength="32" value="${invdetailInstance?.ownName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="gender"><g:message code="invdetail.gender.label" default="Gender" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'gender', 'errors')}">
                                    <g:textField name="gender" maxlength="5" value="${invdetailInstance?.gender}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tank"><g:message code="invdetail.tank.label" default="Tank" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'tank', 'errors')}">
                                    <g:textField name="tank" maxlength="9" value="${invdetailInstance?.tank}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="section"><g:message code="invdetail.section.label" default="Section" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'section', 'errors')}">
                                    <g:textField name="section" maxlength="2" value="${invdetailInstance?.section}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="bulkLocation"><g:message code="invdetail.bulkLocation.label" default="Bulk Location" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'bulkLocation', 'errors')}">
                                    <g:textField name="bulkLocation" maxlength="6" value="${invdetailInstance?.bulkLocation}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="expCode"><g:message code="invdetail.expCode.label" default="Exp Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'expCode', 'errors')}">
                                    <g:textField name="expCode" maxlength="9" value="${invdetailInstance?.expCode}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="collDate"><g:message code="invdetail.collDate.label" default="Coll Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'collDate', 'errors')}">
                                    <g:datePicker name="collDate" precision="day" value="${invdetailInstance?.collDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="collCode"><g:message code="invdetail.collCode.label" default="Coll Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'collCode', 'errors')}">
                                    <g:textField name="collCode" maxlength="10" value="${invdetailInstance?.collCode}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="strawColor"><g:message code="invdetail.strawColor.label" default="Straw Color" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'strawColor', 'errors')}">
                                    <g:textField name="strawColor" maxlength="6" value="${invdetailInstance?.strawColor}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="concentration"><g:message code="invdetail.concentration.label" default="Concentration" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'concentration', 'errors')}">
                                    <g:textField name="concentration" maxlength="4" value="${invdetailInstance?.concentration}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="container"><g:message code="invdetail.container.label" default="Container" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'container', 'errors')}">
                                    <g:textField name="container" maxlength="6" value="${invdetailInstance?.container}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="pkg"><g:message code="invdetail.pkg.label" default="Pkg" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'pkg', 'errors')}">
                                    <g:textField name="pkg" maxlength="2" value="${invdetailInstance?.pkg}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="lastUser"><g:message code="invdetail.lastUser.label" default="Last User" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'lastUser', 'errors')}">
                                    <g:textField name="lastUser" maxlength="12" value="${invdetailInstance?.lastUser}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="lastUpdt"><g:message code="invdetail.lastUpdt.label" default="Last Updt" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'lastUpdt', 'errors')}">
                                    <g:datePicker name="lastUpdt" precision="day" value="${invdetailInstance?.lastUpdt}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="canister"><g:message code="invdetail.canister.label" default="Canister" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'canister', 'errors')}">
                                    <g:textField name="canister" value="${fieldValue(bean: invdetailInstance, field: 'canister')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="qtyCo"><g:message code="invdetail.qtyCo.label" default="Qty Co" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'qtyCo', 'errors')}">
                                    <g:textField name="qtyCo" value="${fieldValue(bean: invdetailInstance, field: 'qtyCo')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="qtyOh"><g:message code="invdetail.qtyOh.label" default="Qty Oh" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: invdetailInstance, field: 'qtyOh', 'errors')}">
                                    <g:textField name="qtyOh" value="${fieldValue(bean: invdetailInstance, field: 'qtyOh')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>

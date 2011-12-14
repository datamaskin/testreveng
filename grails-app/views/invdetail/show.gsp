
<%@ page import="com.sexingtechnologies.Invdetail" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'invdetail.label', default: 'Invdetail')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.location.label" default="Location" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "location")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.bullCode.label" default="Bull Code" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "bullCode")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.bullName.label" default="Bull Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "bullName")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.ownCode.label" default="Own Code" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "ownCode")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.ownName.label" default="Own Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "ownName")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.gender.label" default="Gender" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "gender")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.tank.label" default="Tank" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "tank")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.section.label" default="Section" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "section")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.bulkLocation.label" default="Bulk Location" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "bulkLocation")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.expCode.label" default="Exp Code" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "expCode")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.collDate.label" default="Coll Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${invdetailInstance?.collDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.collCode.label" default="Coll Code" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "collCode")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.strawColor.label" default="Straw Color" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "strawColor")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.concentration.label" default="Concentration" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "concentration")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.container.label" default="Container" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "container")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.pkg.label" default="Pkg" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "pkg")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.lastUser.label" default="Last User" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "lastUser")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.lastUpdt.label" default="Last Updt" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${invdetailInstance?.lastUpdt}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.canister.label" default="Canister" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "canister")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.qtyCo.label" default="Qty Co" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "qtyCo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invdetail.qtyOh.label" default="Qty Oh" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invdetailInstance, field: "qtyOh")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${invdetailInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>

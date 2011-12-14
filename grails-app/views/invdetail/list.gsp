
<%@ page import="com.sexingtechnologies.Invdetail" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'invdetail.label', default: 'Invdetail')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'invdetail.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="location" title="${message(code: 'invdetail.location.label', default: 'Location')}" />
                        
                            <g:sortableColumn property="bullCode" title="${message(code: 'invdetail.bullCode.label', default: 'Bull Code')}" />
                        
                            <g:sortableColumn property="bullName" title="${message(code: 'invdetail.bullName.label', default: 'Bull Name')}" />
                        
                            <g:sortableColumn property="ownCode" title="${message(code: 'invdetail.ownCode.label', default: 'Own Code')}" />
                        
                            <g:sortableColumn property="ownName" title="${message(code: 'invdetail.ownName.label', default: 'Own Name')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${invdetailInstanceList}" status="i" var="invdetailInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${invdetailInstance.id}">${fieldValue(bean: invdetailInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: invdetailInstance, field: "location")}</td>
                        
                            <td>${fieldValue(bean: invdetailInstance, field: "bullCode")}</td>
                        
                            <td>${fieldValue(bean: invdetailInstance, field: "bullName")}</td>
                        
                            <td>${fieldValue(bean: invdetailInstance, field: "ownCode")}</td>
                        
                            <td>${fieldValue(bean: invdetailInstance, field: "ownName")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${invdetailInstanceTotal}" />
            </div>
        </div>
    </body>
</html>

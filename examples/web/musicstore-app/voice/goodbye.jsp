<!--Example:Start-->
<%--
  Copyright 2004 The Apache Software Foundation.
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
--%>
<!--$Id$-->
<!--
<%@ page language="java" contentType="application/vxml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
-->
<vxml version="2.0" xml:lang="en-US"  xmlns="http://www.w3.org/2001/vxml">
  <form>
   <c:choose>
    <c:when test="${param['confirmation'] != false}">
      <field name = "confirmation" type="boolean">
        <prompt>${msAppBean.checkoutPrompt}<break time="300ms"/>Would you like me to repeat that?</prompt>
        <filled>
          <submit next="goodbye.jsp" namelist="confirmation"/>
        </filled>
      </field>
    </c:when>
    <c:otherwise>
      <block><prompt>Thank you for using the RDC MusicStore. Goodbye!</prompt></block>
    </c:otherwise>
   </c:choose> 
  </form>
</vxml>
<!--Example:End-->


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

  <property name="universals" value="help" />

  <!-- catches exit universal -->
  <link event="exit">
    <grammar mode="voice" version="1.0" root="hangup">
      <rule id="hangup" scope="public">
        <one-of>
         <item>hang up</item>
         <item>quit</item>
        </one-of>
      </rule>
    </grammar>
  </link>
  <catch event="exit">
    <if cond="application.lastresult$[0].confidence &gt; 0.50">
      <goto next="#GoodBye"/>
    </if>
  </catch>
<!--Example:End-->
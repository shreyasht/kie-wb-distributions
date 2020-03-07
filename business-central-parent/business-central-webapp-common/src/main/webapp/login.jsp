<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.util.Locale" %>
<%@ page import="org.apache.commons.lang3.LocaleUtils" %>
<%@ page import="org.uberfire.ext.security.server.SecureHeadersFilter" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://jakarta.apache.org/taglibs/i18n-1.0" prefix="i18n" %>

<%
  Locale locale = null;
  try {
    locale = LocaleUtils.toLocale(request.getParameter("locale"));
  } catch (Exception e) {
    locale = request.getLocale();
  }
  SecureHeadersFilter.applyHeaders(request,
                                   response);
%>
<i18n:bundle id="bundle" baseName="${login.bundle.name}"
             locale='<%= locale%>' />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <link rel="stylesheet" href="styles/base.css">
  <link rel="stylesheet" href="styles/forms.css">
  <link rel="stylesheet" href="styles/login-screen.css">
  <link rel="shortcut icon" href="favicon.ico" />
  <title><i18n:message key="LoginTitle"></i18n:message></title>
  <script src="https://apis.google.com/js/platform.js" async defer></script>
  <meta name="google-signin-client_id" content="219988614002-15p11ejp375u3fi2te0jupc0p4hk958k.apps.googleusercontent.com">
</head>

<body id="login">
 <script>
    function onSignIn(googleUser) {
      // get user profile information
      console.log(googleUser.getBasicProfile())
    }
  </script>
<div id="pfly-login-screen">
  <img id="logo" src="images/business-central.png" alt="Business Central Logo" title="Powered By Drools/jBPM"/>

  <div id="login-wrapper" class="png_bg">
    <div id="login-top">
    </div>

    <div class="g-signin2" data-onsuccess="onSignIn"></div>
  </div>
</div>
</body>
</html>

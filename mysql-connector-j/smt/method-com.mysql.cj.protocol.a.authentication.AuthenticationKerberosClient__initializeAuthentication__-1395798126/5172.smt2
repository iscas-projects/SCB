(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3302 0)
(declare-sort var1000 0)
(declare-sort var2700 0)
(declare-sort var3162 0)
(declare-sort var935 0)
(declare-sort var1967 0)
(declare-sort var1340 0)
(declare-sort var1996 0)
(declare-sort var2662 0)
(declare-sort var3611 0)
(declare-sort var1251 0)
(declare-sort var2871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun subject/1017247551 (var3302) var1000)
(declare-fun var2700_getProperty/258823597 (String) String)
(declare-fun var935_isNullOrEmpty/-1369891347 (String) Bool)
(declare-fun var1967-init () var1967)
(declare-fun credentialsCallbackHandler/1017247551 (var3302) var1340)
(declare-fun var2662_getString/-1547297038 (String) String)
(declare-fun var1251_createException/-2119012900 (String var2871) var3611)
(declare-fun cast-from-var1996-to-var2871 (var1996) var2871)
(declare-const null-var3302 var3302)
(declare-const null-var1000 var1000)
(declare-const null-var3162 var3162)
(declare-const null-var1996 var1996)
(declare-const var1444 var3302) ; Statement: r0 := @this: com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient 
(assert (not (= var1444 null-var3302)))
(define-const var590 var1000 (subject/1017247551 var1444)) ; Statement: $r1 = r0.<com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: javax.security.auth.Subject subject> 
 ; Statement: if $r1 == null goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.security.auth.login.config") 
(assert (= var590 null-var1000)) ; Cond: $r1 == null 
(define-const var2980 String (var2700_getProperty/258823597 "java.security.auth.login.config")) ; Statement: $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.security.auth.login.config") 
(define-const var2358 var3162 null-var3162) ; Statement: r19 = null 
(define-const var3307 Bool (var935_isNullOrEmpty/-1369891347 var2980)) ; Statement: $z1 = staticinvoke <com.mysql.cj.util.StringUtils: boolean isNullOrEmpty(java.lang.String)>($r18) 
 ; Statement: if $z1 == 0 goto $r2 = new javax.security.auth.login.LoginContext 
(assert (= (ite var3307 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1392 var1967 var1967-init) ; Statement: $r2 = new javax.security.auth.login.LoginContext 
(define-const var3811 var1340 (credentialsCallbackHandler/1017247551 var1444)) ; Statement: $r3 = r0.<com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: javax.security.auth.callback.CallbackHandler credentialsCallbackHandler> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1816 var1996) ; Statement: $r15 := @caughtexception 
(assert (not (= var1816 null-var1996)))
(define-const var1714 String (var2662_getString/-1547297038 "AuthenticationKerberosClientPlugin.FailAuthenticateUser")) ; Statement: $r16 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("AuthenticationKerberosClientPlugin.FailAuthenticateUser") 
(define-const var24 var3611 (var1251_createException/-2119012900 var1714 (cast-from-var1996-to-var2871 var1816))) ; Statement: $r17 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String,java.lang.Throwable)>($r16, $r15) 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {subject/1017247551=([com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient], javax.security.auth.Subject), var2700_getProperty/258823597=([java.lang.String], java.lang.String), var935_isNullOrEmpty/-1369891347=([java.lang.String], boolean), var1967-init=([], javax.security.auth.login.LoginContext), credentialsCallbackHandler/1017247551=([com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient], javax.security.auth.callback.CallbackHandler), var2662_getString/-1547297038=([java.lang.String], java.lang.String), var1251_createException/-2119012900=([java.lang.String, java.lang.Throwable], com.mysql.cj.exceptions.CJException), cast-from-var1996-to-var2871=([javax.security.auth.login.LoginException], java.lang.Throwable)}
; {var3302=com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient, var1444=r0, var1000=javax.security.auth.Subject, var590=$r1, var2700=java.lang.System, var2980=$r18, var3162=com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient$1, var2358=r19, var935=com.mysql.cj.util.StringUtils, var3307=$z1, var1967=javax.security.auth.login.LoginContext, var1392=$r2, var1340=javax.security.auth.callback.CallbackHandler, var3811=$r3, var1996=javax.security.auth.login.LoginException, var1816=$r15, var2662=com.mysql.cj.Messages, var1714=$r16, var3611=com.mysql.cj.exceptions.CJException, var1251=com.mysql.cj.exceptions.ExceptionFactory, var2871=java.lang.Throwable, var24=$r17}
; {com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient=var3302, r0=var1444, javax.security.auth.Subject=var1000, $r1=var590, java.lang.System=var2700, $r18=var2980, com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient$1=var3162, r19=var2358, com.mysql.cj.util.StringUtils=var935, $z1=var3307, javax.security.auth.login.LoginContext=var1967, $r2=var1392, javax.security.auth.callback.CallbackHandler=var1340, $r3=var3811, javax.security.auth.login.LoginException=var1996, $r15=var1816, com.mysql.cj.Messages=var2662, $r16=var1714, com.mysql.cj.exceptions.CJException=var3611, com.mysql.cj.exceptions.ExceptionFactory=var1251, java.lang.Throwable=var2871, $r17=var24}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient;	$r1 = r0.<com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: javax.security.auth.Subject subject>;	if $r1 == null goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.security.auth.login.config");	$r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.security.auth.login.config");	r19 = null;	$z1 = staticinvoke <com.mysql.cj.util.StringUtils: boolean isNullOrEmpty(java.lang.String)>($r18);	if $z1 == 0 goto $r2 = new javax.security.auth.login.LoginContext;	$r2 = new javax.security.auth.login.LoginContext;	$r3 = r0.<com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: javax.security.auth.callback.CallbackHandler credentialsCallbackHandler>;	$r15 := @caughtexception;	$r16 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("AuthenticationKerberosClientPlugin.FailAuthenticateUser");	$r17 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String,java.lang.Throwable)>($r16, $r15);	throw $r17
;block_num 4
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1718 0)
(declare-sort var3008 0)
(declare-sort var3955 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun subject/1017247551 (var1718) var3008)
(declare-fun cachedPrincipalName/1017247551 (var1718) String)
(declare-fun userPrincipalName/1017247551 (var1718) String)
(declare-const null-var1718 var1718)
(declare-const null-var3008 var3008)
(declare-const null-String String)
(declare-const var165 var1718) ; Statement: r0 := @this: com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient 
(assert (not (= var165 null-var1718)))
(define-const var656 var3008 (subject/1017247551 var165)) ; Statement: $r1 = r0.<com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: javax.security.auth.Subject subject> 
 ; Statement: if $r1 == null goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.security.auth.login.config") 
(assert (not (= var656 null-var3008))) ; Negate: Cond: $r1 == null  
(define-const var3879 String (cachedPrincipalName/1017247551 var165)) ; Statement: $r12 = r0.<com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: java.lang.String cachedPrincipalName> 
 ; Statement: if $r12 == null goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.security.auth.login.config") 
(assert (not (= var3879 null-String))) ; Negate: Cond: $r12 == null  
(define-const var3187 String (cachedPrincipalName/1017247551 var165)) ; Statement: $r14 = r0.<com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: java.lang.String cachedPrincipalName> 
(define-const var1860 String (userPrincipalName/1017247551 var165)) ; Statement: $r13 = r0.<com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: java.lang.String userPrincipalName> 
(assert true)
(define-const var1971 Bool (= var3187 var1860)) ; Statement: $z0 = virtualinvoke $r14.<java.lang.String: boolean equals(java.lang.Object)>($r13) 
 ; Statement: if $z0 == 0 goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.security.auth.login.config") 
(assert (not (= (ite var1971 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {subject/1017247551=([com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient], javax.security.auth.Subject), cachedPrincipalName/1017247551=([com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient], java.lang.String), userPrincipalName/1017247551=([com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient], java.lang.String)}
; {var1718=com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient, var165=r0, var3008=javax.security.auth.Subject, var656=$r1, var3879=$r12, var3955=null_type, var3187=$r14, var1860=$r13, var1971=$z0}
; {com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient=var1718, r0=var165, javax.security.auth.Subject=var3008, $r1=var656, $r12=var3879, null_type=var3955, $r14=var3187, $r13=var1860, $z0=var1971}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient;	$r1 = r0.<com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: javax.security.auth.Subject subject>;	if $r1 == null goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.security.auth.login.config");	$r12 = r0.<com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: java.lang.String cachedPrincipalName>;	if $r12 == null goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.security.auth.login.config");	$r14 = r0.<com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: java.lang.String cachedPrincipalName>;	$r13 = r0.<com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: java.lang.String userPrincipalName>;	$z0 = virtualinvoke $r14.<java.lang.String: boolean equals(java.lang.Object)>($r13);	if $z0 == 0 goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.security.auth.login.config");	return
;block_num 4
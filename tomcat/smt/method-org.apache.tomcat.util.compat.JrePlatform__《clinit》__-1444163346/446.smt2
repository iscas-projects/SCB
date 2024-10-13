(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1046 0)
(declare-sort var1530 0)
(declare-sort var2161 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1530_getSecurityManager/-1522955590 () var1046)
(declare-fun var1530_getProperty/258823597 (String) String)
(declare-fun toLowerCase/1946809429 (String var2161) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1046 var1046)
(declare-const var2161-ENGLISH var2161)
(define-const var3485 var1046 var1530_getSecurityManager/-1522955590) ; Statement: $r0 = staticinvoke <java.lang.System: java.lang.SecurityManager getSecurityManager()>() 
 ; Statement: if $r0 != null goto $r1 = staticinvoke <org.apache.tomcat.util.compat.JrePlatform$lambda_static_0__4: java.security.PrivilegedAction bootstrap$()>() 
(assert (not (not (= var3485 null-var1046)))) ; Negate: Cond: $r0 != null  
(define-const var207 String (var1530_getProperty/258823597 "os.name")) ; Statement: r5 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.name") 
 ; Statement: goto [?= $r3 = <java.util.Locale: java.util.Locale ENGLISH>] 
(assert true) ; Non Conditional
(define-const var3258 var2161 var2161-ENGLISH) ; Statement: $r3 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2647 String (toLowerCase/1946809429 var207 var3258)) ; Statement: $r4 = virtualinvoke r5.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(assert true)
(define-const var796 Bool (startsWith/-1785782452 var2647 "mac os x")) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>("mac os x") 
(define-const var1062 Bool var796) ; Statement: <org.apache.tomcat.util.compat.JrePlatform: boolean IS_MAC_OS> = $z0 
(assert true)
(define-const var2460 Bool (startsWith/-1785782452 var207 "Windows")) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("Windows") 
(define-const var3363 Bool var2460) ; Statement: <org.apache.tomcat.util.compat.JrePlatform: boolean IS_WINDOWS> = $z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1530_getSecurityManager/-1522955590=([], java.lang.SecurityManager), var1530_getProperty/258823597=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1046=java.lang.SecurityManager, var1530=java.lang.System, var3485=$r0, var207=r5, var2161=java.util.Locale, var3258=$r3, var2647=$r4, var796=$z0, var1062=<org.apache.tomcat.util.compat.JrePlatform: boolean IS_MAC_OS>, var2460=$z1, var3363=<org.apache.tomcat.util.compat.JrePlatform: boolean IS_WINDOWS>}
; {java.lang.SecurityManager=var1046, java.lang.System=var1530, $r0=var3485, r5=var207, java.util.Locale=var2161, $r3=var3258, $r4=var2647, $z0=var796, <org.apache.tomcat.util.compat.JrePlatform: boolean IS_MAC_OS>=var1062, $z1=var2460, <org.apache.tomcat.util.compat.JrePlatform: boolean IS_WINDOWS>=var3363}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts $r0 = staticinvoke <java.lang.System: java.lang.SecurityManager getSecurityManager()>();	if $r0 != null goto $r1 = staticinvoke <org.apache.tomcat.util.compat.JrePlatform$lambda_static_0__4: java.security.PrivilegedAction bootstrap$()>();	r5 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.name");	goto [?= $r3 = <java.util.Locale: java.util.Locale ENGLISH>];	$r3 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke r5.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	$z0 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>("mac os x");	<org.apache.tomcat.util.compat.JrePlatform: boolean IS_MAC_OS> = $z0;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("Windows");	<org.apache.tomcat.util.compat.JrePlatform: boolean IS_WINDOWS> = $z1;	return
;block_num 3
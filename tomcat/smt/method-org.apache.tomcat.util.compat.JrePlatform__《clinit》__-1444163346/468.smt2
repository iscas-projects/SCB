(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1788 0)
(declare-sort var2416 0)
(declare-sort var828 0)
(declare-sort var2686 0)
(declare-sort var653 0)
(declare-sort var3140 0)
(declare-sort var1868 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2416_getSecurityManager/-1522955590 () var1788)
(declare-fun var2686_bootstrap$/-1391098087 () var828)
(declare-fun var3140_doPrivileged/1828555841 (var828) var653)
(declare-fun cast-from-var653-to-String (var653) String)
(declare-fun toLowerCase/1946809429 (String var1868) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1788 var1788)
(declare-const var1868-ENGLISH var1868)
(define-const var628 var1788 var2416_getSecurityManager/-1522955590) ; Statement: $r0 = staticinvoke <java.lang.System: java.lang.SecurityManager getSecurityManager()>() 
 ; Statement: if $r0 != null goto $r1 = staticinvoke <org.apache.tomcat.util.compat.JrePlatform$lambda_static_0__4: java.security.PrivilegedAction bootstrap$()>() 
(assert (not (= var628 null-var1788))) ; Cond: $r0 != null 
(define-const var922 var828 var2686_bootstrap$/-1391098087) ; Statement: $r1 = staticinvoke <org.apache.tomcat.util.compat.JrePlatform$lambda_static_0__4: java.security.PrivilegedAction bootstrap$()>() 
(define-const var966 var653 (var3140_doPrivileged/1828555841 var922)) ; Statement: $r2 = staticinvoke <java.security.AccessController: java.lang.Object doPrivileged(java.security.PrivilegedAction)>($r1) 
(define-const var986 String (cast-from-var653-to-String var966)) ; Statement: r5 = (java.lang.String) $r2 
(assert true) ; Non Conditional
(define-const var1587 var1868 var1868-ENGLISH) ; Statement: $r3 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2646 String (toLowerCase/1946809429 var986 var1587)) ; Statement: $r4 = virtualinvoke r5.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(assert true)
(define-const var914 Bool (startsWith/-1785782452 var2646 "mac os x")) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>("mac os x") 
(define-const var3319 Bool var914) ; Statement: <org.apache.tomcat.util.compat.JrePlatform: boolean IS_MAC_OS> = $z0 
(assert true)
(define-const var2368 Bool (startsWith/-1785782452 var986 "Windows")) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("Windows") 
(define-const var2046 Bool var2368) ; Statement: <org.apache.tomcat.util.compat.JrePlatform: boolean IS_WINDOWS> = $z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2416_getSecurityManager/-1522955590=([], java.lang.SecurityManager), var2686_bootstrap$/-1391098087=([], java.security.PrivilegedAction), var3140_doPrivileged/1828555841=([java.security.PrivilegedAction], java.lang.Object), cast-from-var653-to-String=([java.lang.Object], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1788=java.lang.SecurityManager, var2416=java.lang.System, var628=$r0, var828=java.security.PrivilegedAction, var2686=org.apache.tomcat.util.compat.JrePlatform$lambda_static_0__4, var922=$r1, var653=java.lang.Object, var3140=java.security.AccessController, var966=$r2, var986=r5, var1868=java.util.Locale, var1587=$r3, var2646=$r4, var914=$z0, var3319=<org.apache.tomcat.util.compat.JrePlatform: boolean IS_MAC_OS>, var2368=$z1, var2046=<org.apache.tomcat.util.compat.JrePlatform: boolean IS_WINDOWS>}
; {java.lang.SecurityManager=var1788, java.lang.System=var2416, $r0=var628, java.security.PrivilegedAction=var828, org.apache.tomcat.util.compat.JrePlatform$lambda_static_0__4=var2686, $r1=var922, java.lang.Object=var653, java.security.AccessController=var3140, $r2=var966, r5=var986, java.util.Locale=var1868, $r3=var1587, $r4=var2646, $z0=var914, <org.apache.tomcat.util.compat.JrePlatform: boolean IS_MAC_OS>=var3319, $z1=var2368, <org.apache.tomcat.util.compat.JrePlatform: boolean IS_WINDOWS>=var2046}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts $r0 = staticinvoke <java.lang.System: java.lang.SecurityManager getSecurityManager()>();	if $r0 != null goto $r1 = staticinvoke <org.apache.tomcat.util.compat.JrePlatform$lambda_static_0__4: java.security.PrivilegedAction bootstrap$()>();	$r1 = staticinvoke <org.apache.tomcat.util.compat.JrePlatform$lambda_static_0__4: java.security.PrivilegedAction bootstrap$()>();	$r2 = staticinvoke <java.security.AccessController: java.lang.Object doPrivileged(java.security.PrivilegedAction)>($r1);	r5 = (java.lang.String) $r2;	$r3 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke r5.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	$z0 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>("mac os x");	<org.apache.tomcat.util.compat.JrePlatform: boolean IS_MAC_OS> = $z0;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("Windows");	<org.apache.tomcat.util.compat.JrePlatform: boolean IS_WINDOWS> = $z1;	return
;block_num 3
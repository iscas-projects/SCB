(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var947 0)
(declare-sort var1143 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var947_getProperty/-1659784690 (String String) String)
(declare-fun toLowerCase/1946809429 (String var1143) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const var1143-ENGLISH var1143)
(define-const var3007 String (var947_getProperty/-1659784690 "java.vendor" "")) ; Statement: r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("java.vendor", "") 
(define-const var2538 var1143 var1143-ENGLISH) ; Statement: $r0 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3832 String (toLowerCase/1946809429 var3007 var2538)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0) 
(assert true)
(define-const var3792 Bool (startsWith/-1785782452 var3832 "oracle")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("oracle") 
 ; Statement: if $z0 != 0 goto <org.apache.tomcat.util.compat.JreVendor: boolean IS_ORACLE_JVM> = 1 
(assert (not (= (ite var3792 1 0) 0))) ; Cond: $z0 != 0 
(define-const var779 Bool (ite (= 1 1) true false)) ; Statement: <org.apache.tomcat.util.compat.JreVendor: boolean IS_ORACLE_JVM> = 1 
(define-const var2191 Bool (ite (= 1 0) true false)) ; Statement: <org.apache.tomcat.util.compat.JreVendor: boolean IS_IBM_JVM> = 0 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var947_getProperty/-1659784690=([java.lang.String, java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var947=java.lang.System, var3007=r1, var1143=java.util.Locale, var2538=$r0, var3832=r2, var3792=$z0, var779=<org.apache.tomcat.util.compat.JreVendor: boolean IS_ORACLE_JVM>, var2191=<org.apache.tomcat.util.compat.JreVendor: boolean IS_IBM_JVM>}
; {java.lang.System=var947, r1=var3007, java.util.Locale=var1143, $r0=var2538, r2=var3832, $z0=var3792, <org.apache.tomcat.util.compat.JreVendor: boolean IS_ORACLE_JVM>=var779, <org.apache.tomcat.util.compat.JreVendor: boolean IS_IBM_JVM>=var2191}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("java.vendor", "");	$r0 = <java.util.Locale: java.util.Locale ENGLISH>;	r2 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0);	$z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("oracle");	if $z0 != 0 goto <org.apache.tomcat.util.compat.JreVendor: boolean IS_ORACLE_JVM> = 1;	<org.apache.tomcat.util.compat.JreVendor: boolean IS_ORACLE_JVM> = 1;	<org.apache.tomcat.util.compat.JreVendor: boolean IS_IBM_JVM> = 0;	goto [?= return];	return
;block_num 3
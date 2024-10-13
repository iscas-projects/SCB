(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var790 0)
(declare-sort var580 0)
(declare-sort var1857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var790_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logDiagnostic/1870399160 (var790 String) void)
(declare-const null-var790 var790)
(declare-const null-String String)
(declare-const null-var1857 var1857)
(declare-const var2577 var790) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var2577 null-var790)))
(declare-const var1062 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1062 null-String)))
(declare-const var630 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var630 null-String)))
(define-const var2565 Bool var790_isDiagnosticsEnabled/-1107982053) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var2565 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1896 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1896)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1896!1 String)
(assert (= var1896!1 ""))
(assert true)
(define-const var3921 String (append/672562846 var1896!1 "Checking for \u0027")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Checking for \'") 
(declare-const var1896!2 String)
(assert (= var1896!2 (str.++ var1896!1 "Checking for \u0027")))
(assert true)
(define-const var424 String (append/672562846 var3921 var1062)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3921!1 String)
(assert (= var3921!1 (str.++ var3921 var1062)))
(assert true)
(define-const var3620 String (append/672562846 var424 "\u0027.")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.") 
(declare-const var424!1 String)
(assert (= var424!1 (str.++ var424 "\u0027.")))
(assert true)
(define-const var3020 String (toString/-2075883882 var3620)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logDiagnostic/1870399160 var2577 var3020)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r19) 

(declare-const var2577!1 var790)
(declare-const var3020!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2934 var1857) ; Statement: $r21 := @caughtexception 
(assert (not (= var2934 null-var1857)))
(define-const var80 Bool var790_isDiagnosticsEnabled/-1107982053) ; Statement: $z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z3 == 0 goto return 0 
(assert (= (ite var80 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var790_isDiagnosticsEnabled/-1107982053=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logDiagnostic/1870399160=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String], void)}
; {var790=org.apache.commons.logging.impl.LogFactoryImpl, var2577=r0, var1062=r5, var580=null_type, var630=r1, var2565=$z0, var1896=$r15, var3921=$r16, var424=$r17, var3620=$r18, var3020=$r19, var1857=org.apache.commons.logging.LogConfigurationException, var2934=$r21, var80=$z3}
; {org.apache.commons.logging.impl.LogFactoryImpl=var790, r0=var2577, r5=var1062, null_type=var580, r1=var630, $z0=var2565, $r15=var1896, $r16=var3921, $r17=var424, $r18=var3620, $r19=var3020, org.apache.commons.logging.LogConfigurationException=var1857, $r21=var2934, $z3=var80}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r5 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Checking for \'");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r19);	$r21 := @caughtexception;	$z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z3 == 0 goto return 0;	return 0
;block_num 4
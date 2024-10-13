(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3902 0)
(declare-sort var3810 0)
(declare-sort var2386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2386-init () var2386)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var2386 String) void)
(declare-const null-var3902 var3902)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3857 var3902) ; Statement: r6 := @this: com.mysql.cj.jdbc.util.BaseBugReport 
(assert (not (= var3857 null-var3902)))
(declare-const var2921 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2921 null-String)))
(declare-const var539 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var539 null-Bool)))
 ; Statement: if z0 != 0 goto return 
(assert (not (not (= (ite var539 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var2665 var2386 var2386-init) ; Statement: $r0 = new java.lang.Exception 
(define-const var1335 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1335)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1335!1 String)
(assert (= var1335!1 ""))
(assert true)
(define-const var846 String (append/672562846 var1335!1 "Assertion failed: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Assertion failed: ") 
(declare-const var1335!2 String)
(assert (= var1335!2 (str.++ var1335!1 "Assertion failed: ")))
(assert true)
(define-const var1399 String (append/672562846 var846 var2921)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var846!1 String)
(assert (= var846!1 (str.++ var846 var2921)))
(assert true)
(define-const var2369 String (toString/-2075883882 var1399)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 var2665 var2369)) ; Statement: specialinvoke $r0.<java.lang.Exception: void <init>(java.lang.String)>($r5) 

(declare-const var2665!1 var2386)
(declare-const var2369!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2386-init=([], java.lang.Exception), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void)}
; {var3902=com.mysql.cj.jdbc.util.BaseBugReport, var3857=r6, var2921=r2, var3810=null_type, var539=z0, var2386=java.lang.Exception, var2665=$r0, var1335=$r1, var846=$r3, var1399=$r4, var2369=$r5}
; {com.mysql.cj.jdbc.util.BaseBugReport=var3902, r6=var3857, r2=var2921, null_type=var3810, z0=var539, java.lang.Exception=var2386, $r0=var2665, $r1=var1335, $r3=var846, $r4=var1399, $r5=var2369}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.mysql.cj.jdbc.util.BaseBugReport;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	if z0 != 0 goto return;	$r0 = new java.lang.Exception;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Assertion failed: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.Exception: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 2
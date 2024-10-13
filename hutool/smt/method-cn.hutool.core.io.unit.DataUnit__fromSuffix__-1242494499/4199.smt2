(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1466 0)
(declare-sort var2608 0)
(declare-sort var62 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2608_values/-840506829 () (Array Int var2608))
(declare-fun getLength-Arr-var2608-1 ((Array Int var2608)) Int)
(declare-fun var62-init () var62)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var62 String) void)
(declare-const null-String String)
(declare-const var1981 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1981 null-String)))
(define-const var1292 (Array Int var2608) var2608_values/-840506829) ; Statement: r0 = staticinvoke <cn.hutool.core.io.unit.DataUnit: cn.hutool.core.io.unit.DataUnit[] values()>() 
(define-const var1842 Int (getLength-Arr-var2608-1 var1292)) ; Statement: i0 = lengthof r0 
(define-const var956 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (>= var956 var1842)) ; Cond: i1 >= i0 
(define-const var2077 var62 var62-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var199 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var199)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var199!1 String)
(assert (= var199!1 ""))
(assert true)
(define-const var3521 String (append/672562846 var199!1 "Unknown data unit suffix \u0027")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown data unit suffix \'") 
(declare-const var199!2 String)
(assert (= var199!2 (str.++ var199!1 "Unknown data unit suffix \u0027")))
(assert true)
(define-const var2946 String (append/672562846 var3521 var1981)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3521!1 String)
(assert (= var3521!1 (str.++ var3521 var1981)))
(assert true)
(define-const var3238 String (append/672562846 var2946 "\u0027")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2946!1 String)
(assert (= var2946!1 (str.++ var2946 "\u0027")))
(assert true)
(define-const var3550 String (toString/-2075883882 var3238)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2077 var3550)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var2077!1 var62)
(declare-const var3550!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2608_values/-840506829=([], cn.hutool.core.io.unit.DataUnit[]), getLength-Arr-var2608-1=([cn.hutool.core.io.unit.DataUnit[]], int), var62-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1981=r3, var1466=null_type, var2608=cn.hutool.core.io.unit.DataUnit, var1292=r0, var1842=i0, var956=i1, var62=java.lang.IllegalArgumentException, var2077=$r1, var199=$r2, var3521=$r4, var2946=$r5, var3238=$r6, var3550=$r7}
; {r3=var1981, null_type=var1466, cn.hutool.core.io.unit.DataUnit=var2608, r0=var1292, i0=var1842, i1=var956, java.lang.IllegalArgumentException=var62, $r1=var2077, $r2=var199, $r4=var3521, $r5=var2946, $r6=var3238, $r7=var3550}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r0 = staticinvoke <cn.hutool.core.io.unit.DataUnit: cn.hutool.core.io.unit.DataUnit[] values()>();	i0 = lengthof r0;	i1 = 0;	if i1 >= i0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown data unit suffix \'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var482 0)
(declare-sort var1277 0)
(declare-sort var151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var151-init () var151)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var151 String) void)
(declare-const null-var482 var482)
(declare-const null-String String)
(declare-const var2337 var482) ; Statement: r2 := @this: org.apache.poi.openxml4j.opc.PackagePart 
(assert (not (= var2337 null-var482)))
(declare-const var2070 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2070 null-String)))
(declare-const var2167 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2167 null-String)))
(declare-const var2333 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var2333 null-String)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (not (= var2070 null-String)))) ; Negate: Cond: r0 != null  
(define-const var274 var151 var151-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var2712 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2712)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2712!1 String)
(assert (= var2712!1 ""))
(assert true)
(define-const var3594 String (append/672562846 var2712!1 "target is null for type ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("target is null for type ") 
(declare-const var2712!2 String)
(assert (= var2712!2 (str.++ var2712!1 "target is null for type ")))
(assert true)
(define-const var1052 String (append/672562846 var3594 var2167)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3594!1 String)
(assert (= var3594!1 (str.++ var3594 var2167)))
(assert true)
(define-const var2984 String (toString/-2075883882 var1052)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var274 var2984)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var274!1 var151)
(declare-const var2984!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var151-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var482=org.apache.poi.openxml4j.opc.PackagePart, var2337=r2, var2070=r0, var1277=null_type, var2167=r1, var2333=r5, var151=java.lang.IllegalArgumentException, var274=$r11, var2712=$r12, var3594=$r13, var1052=$r14, var2984=$r15}
; {org.apache.poi.openxml4j.opc.PackagePart=var482, r2=var2337, r0=var2070, null_type=var1277, r1=var2167, r5=var2333, java.lang.IllegalArgumentException=var151, $r11=var274, $r12=var2712, $r13=var3594, $r14=var1052, $r15=var2984}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.openxml4j.opc.PackagePart;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	if r0 != null goto (branch);	$r11 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("target is null for type ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r11
;block_num 2
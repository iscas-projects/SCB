(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3423 0)
(declare-sort var2508 0)
(declare-sort var3076 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2508_getMaskBit/-1172543496 (String) Int)
(declare-fun var3076-init () var3076)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3076 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3419 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3419 null-String)))
(define-const var1013 Int (var2508_getMaskBit/-1172543496 var3419)) ; Statement: r1 = staticinvoke <cn.hutool.core.net.MaskBit: java.lang.Integer getMaskBit(java.lang.String)>(r0) 
 ; Statement: if r1 != null goto $i0 = virtualinvoke r1.<java.lang.Integer: int intValue()>() 
(assert (not (not (= var1013 null-Int)))) ; Negate: Cond: r1 != null  
(define-const var106 var3076 var3076-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var1589 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1589)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1589!1 String)
(assert (= var1589!1 ""))
(assert true)
(define-const var2868 String (append/672562846 var1589!1 "Invalid netmask ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid netmask ") 
(declare-const var1589!2 String)
(assert (= var1589!2 (str.++ var1589!1 "Invalid netmask ")))
(assert true)
(define-const var3991 String (append/672562846 var2868 var3419)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2868!1 String)
(assert (= var2868!1 (str.++ var2868 var3419)))
(assert true)
(define-const var1220 String (toString/-2075883882 var3991)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var106 var1220)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var106!1 var3076)
(declare-const var1220!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2508_getMaskBit/-1172543496=([java.lang.String], java.lang.Integer), var3076-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3419=r0, var3423=null_type, var2508=cn.hutool.core.net.MaskBit, var1013=r1, var3076=java.lang.IllegalArgumentException, var106=$r2, var1589=$r3, var2868=$r4, var3991=$r5, var1220=$r6}
; {r0=var3419, null_type=var3423, cn.hutool.core.net.MaskBit=var2508, r1=var1013, java.lang.IllegalArgumentException=var3076, $r2=var106, $r3=var1589, $r4=var2868, $r5=var3991, $r6=var1220}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = staticinvoke <cn.hutool.core.net.MaskBit: java.lang.Integer getMaskBit(java.lang.String)>(r0);	if r1 != null goto $i0 = virtualinvoke r1.<java.lang.Integer: int intValue()>();	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid netmask ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2
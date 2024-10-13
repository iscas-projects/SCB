(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1955 0)
(declare-sort var350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var350_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var344 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var344 null-String)))
(declare-const var3164 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3164 null-String)))
(define-const var1525 Bool (var350_isEmpty/1595667738 (cast-from-String-to-String var344))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var1525 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3248 Bool (var350_isEmpty/1595667738 (cast-from-String-to-String var3164))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var3248 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3954 Bool (startsWith/-1785782452 var344 var3164)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (= (ite var3954 1 0) 0))) ; Cond: $z2 != 0 
(define-const var1662 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var1089 Bool var1662) ; Statement: z3 = $z6 
(assert true)
(define-const var624 Bool (endsWith/985337093 var344 var3164)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (not (= (ite var624 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var909 Bool (ite (= 1 1) true false)) ; Statement: $z9 = 1 
(define-const var52 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= z5 = $z8] 
(assert true) ; Non Conditional
(define-const var2386 Bool var52) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var1089 1 0) 0))) ; Cond: z3 != 0 
(define-const var442 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var2258 Int (length/-134980193 var344)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var3973 Int (length/-134980193 var3164)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1683 Int (+ var2258 var3973)) ; Statement: $i3 = $i1 + $i0 
(assert true)
(define-const var2409 Int (length/-134980193 var3164)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1151 Int (+ var1683 var2409)) ; Statement: $i4 = $i3 + $i2 
(assert true)
;(assert (<init>/543593434 var442 var1151)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var442!1 String)
(declare-const var1151!1 Int)
 ; Statement: if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (= (ite var1089 1 0) 0)) ; Cond: z3 == 0 
(assert true)
;(assert (append/672562846 var442!1 var344)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var442!2 String)
(assert (= var442!2 (str.++ var442!1 var344)))
 ; Statement: if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2386 1 0) 0)) ; Cond: z5 == 0 
(assert true)
(define-const var3143 String (toString/-2075883882 var442!2)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var350_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var344=r0, var1955=null_type, var3164=r1, var350=org.apache.commons.lang3.StringUtils, var1525=$z0, var3248=$z1, var3954=$z2, var1662=$z6, var1089=z3, var624=$z4, var909=$z9, var52=$z8, var2386=z5, var442=$r2, var2258=$i1, var3973=$i0, var1683=$i3, var2409=$i2, var1151=$i4, var3143=$r3}
; {r0=var344, null_type=var1955, r1=var3164, org.apache.commons.lang3.StringUtils=var350, $z0=var1525, $z1=var3248, $z2=var3954, $z6=var1662, z3=var1089, $z4=var624, $z9=var909, $z8=var52, z5=var2386, $r2=var442, $i1=var2258, $i0=var3973, $i3=var1683, $i2=var2409, $i4=var1151, $r3=var3143}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 0;	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 1;	$z8 = 1;	goto [?= z5 = $z8];	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i1 + $i0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 + $i2;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4);	if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 10
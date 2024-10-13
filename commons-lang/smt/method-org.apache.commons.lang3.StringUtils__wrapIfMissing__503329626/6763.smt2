(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2404 0)
(declare-sort var2084 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2084_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3199 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3199 null-String)))
(declare-const var1976 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1976 null-String)))
(define-const var509 Bool (var2084_isEmpty/1595667738 (cast-from-String-to-String var3199))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var509 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3776 Bool (var2084_isEmpty/1595667738 (cast-from-String-to-String var1976))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var3776 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2815 Bool (startsWith/-1785782452 var3199 var1976)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (= (ite var2815 1 0) 0))) ; Cond: $z2 != 0 
(define-const var3803 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var117 Bool var3803) ; Statement: z3 = $z6 
(assert true)
(define-const var2499 Bool (endsWith/985337093 var3199 var1976)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (= (ite var2499 1 0) 0))) ; Cond: $z4 != 0 
(define-const var236 Bool (ite (= 1 0) true false)) ; Statement: $z9 = 0 
(define-const var568 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(define-const var2328 Bool var568) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= (ite var117 1 0) 0)))) ; Negate: Cond: z3 != 0  
 ; Statement: if $z9 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var236 1 0) 0))) ; Cond: $z9 != 0 
(define-const var1476 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var3539 Int (length/-134980193 var3199)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var1275 Int (length/-134980193 var1976)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1474 Int (+ var3539 var1275)) ; Statement: $i3 = $i1 + $i0 
(assert true)
(define-const var2784 Int (length/-134980193 var1976)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1487 Int (+ var1474 var2784)) ; Statement: $i4 = $i3 + $i2 
(assert true)
;(assert (<init>/543593434 var1476 var1487)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var1476!1 String)
(declare-const var1487!1 Int)
 ; Statement: if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (= (ite var117 1 0) 0)) ; Cond: z3 == 0 
(assert true)
;(assert (append/672562846 var1476!1 var3199)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1476!2 String)
(assert (= var1476!2 (str.++ var1476!1 var3199)))
 ; Statement: if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2328 1 0) 0)) ; Cond: z5 == 0 
(assert true)
(define-const var1265 String (toString/-2075883882 var1476!2)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2084_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3199=r0, var2404=null_type, var1976=r1, var2084=org.apache.commons.lang3.StringUtils, var509=$z0, var3776=$z1, var2815=$z2, var3803=$z6, var117=z3, var2499=$z4, var236=$z9, var568=$z8, var2328=z5, var1476=$r2, var3539=$i1, var1275=$i0, var1474=$i3, var2784=$i2, var1487=$i4, var1265=$r3}
; {r0=var3199, null_type=var2404, r1=var1976, org.apache.commons.lang3.StringUtils=var2084, $z0=var509, $z1=var3776, $z2=var2815, $z6=var3803, z3=var117, $z4=var2499, $z9=var236, $z8=var568, z5=var2328, $r2=var1476, $i1=var3539, $i0=var1275, $i3=var1474, $i2=var2784, $i4=var1487, $r3=var1265}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 0;	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 0;	$z8 = 0;	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	if $z9 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i1 + $i0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 + $i2;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4);	if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 11
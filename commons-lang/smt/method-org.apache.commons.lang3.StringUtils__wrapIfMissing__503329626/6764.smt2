(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2359 0)
(declare-sort var1439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1439_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var649 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var649 null-String)))
(declare-const var2623 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2623 null-String)))
(define-const var2584 Bool (var1439_isEmpty/1595667738 (cast-from-String-to-String var649))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var2584 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3413 Bool (var1439_isEmpty/1595667738 (cast-from-String-to-String var2623))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var3413 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1733 Bool (startsWith/-1785782452 var649 var2623)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (= (ite var1733 1 0) 0))) ; Cond: $z2 != 0 
(define-const var939 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var2902 Bool var939) ; Statement: z3 = $z6 
(assert true)
(define-const var1822 Bool (endsWith/985337093 var649 var2623)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (= (ite var1822 1 0) 0))) ; Cond: $z4 != 0 
(define-const var2455 Bool (ite (= 1 0) true false)) ; Statement: $z9 = 0 
(define-const var2679 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(define-const var2266 Bool var2679) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var2902 1 0) 0))) ; Cond: z3 != 0 
(define-const var853 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var2254 Int (length/-134980193 var649)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var3681 Int (length/-134980193 var2623)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1178 Int (+ var2254 var3681)) ; Statement: $i3 = $i1 + $i0 
(assert true)
(define-const var2788 Int (length/-134980193 var2623)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1401 Int (+ var1178 var2788)) ; Statement: $i4 = $i3 + $i2 
(assert true)
;(assert (<init>/543593434 var853 var1401)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var853!1 String)
(declare-const var1401!1 Int)
 ; Statement: if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (not (= (ite var2902 1 0) 0))) ; Negate: Cond: z3 == 0  
(assert true)
;(assert (append/672562846 var853!1 var2623)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var853!2 String)
(assert (= var853!2 (str.++ var853!1 var2623)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var853!2 var649)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var853!3 String)
(assert (= var853!3 (str.++ var853!2 var649)))
 ; Statement: if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2266 1 0) 0)) ; Cond: z5 == 0 
(assert true)
(define-const var2942 String (toString/-2075883882 var853!3)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1439_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var649=r0, var2359=null_type, var2623=r1, var1439=org.apache.commons.lang3.StringUtils, var2584=$z0, var3413=$z1, var1733=$z2, var939=$z6, var2902=z3, var1822=$z4, var2455=$z9, var2679=$z8, var2266=z5, var853=$r2, var2254=$i1, var3681=$i0, var1178=$i3, var2788=$i2, var1401=$i4, var2942=$r3}
; {r0=var649, null_type=var2359, r1=var2623, org.apache.commons.lang3.StringUtils=var1439, $z0=var2584, $z1=var3413, $z2=var1733, $z6=var939, z3=var2902, $z4=var1822, $z9=var2455, $z8=var2679, z5=var2266, $r2=var853, $i1=var2254, $i0=var3681, $i3=var1178, $i2=var2788, $i4=var1401, $r3=var2942}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 0;	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 0;	$z8 = 0;	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i1 + $i0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 + $i2;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4);	if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 11
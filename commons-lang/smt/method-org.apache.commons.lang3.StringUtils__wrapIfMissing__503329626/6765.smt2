(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1381 0)
(declare-sort var484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var484_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1670 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1670 null-String)))
(declare-const var58 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var58 null-String)))
(define-const var1682 Bool (var484_isEmpty/1595667738 (cast-from-String-to-String var1670))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var1682 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1535 Bool (var484_isEmpty/1595667738 (cast-from-String-to-String var58))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var1535 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1246 Bool (startsWith/-1785782452 var1670 var58)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (= (ite var1246 1 0) 0))) ; Cond: $z2 != 0 
(define-const var2244 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var2620 Bool var2244) ; Statement: z3 = $z6 
(assert true)
(define-const var1191 Bool (endsWith/985337093 var1670 var58)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (= (ite var1191 1 0) 0))) ; Cond: $z4 != 0 
(define-const var2168 Bool (ite (= 1 0) true false)) ; Statement: $z9 = 0 
(define-const var2671 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(define-const var2385 Bool var2671) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var2620 1 0) 0))) ; Cond: z3 != 0 
(define-const var1149 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var303 Int (length/-134980193 var1670)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var2130 Int (length/-134980193 var58)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3130 Int (+ var303 var2130)) ; Statement: $i3 = $i1 + $i0 
(assert true)
(define-const var1378 Int (length/-134980193 var58)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3640 Int (+ var3130 var1378)) ; Statement: $i4 = $i3 + $i2 
(assert true)
;(assert (<init>/543593434 var1149 var3640)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var1149!1 String)
(declare-const var3640!1 Int)
 ; Statement: if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (= (ite var2620 1 0) 0)) ; Cond: z3 == 0 
(assert true)
;(assert (append/672562846 var1149!1 var1670)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1149!2 String)
(assert (= var1149!2 (str.++ var1149!1 var1670)))
 ; Statement: if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var2385 1 0) 0))) ; Negate: Cond: z5 == 0  
(assert true)
;(assert (append/672562846 var1149!2 var58)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1149!3 String)
(assert (= var1149!3 (str.++ var1149!2 var58)))
(assert true) ; Non Conditional
(assert true)
(define-const var1657 String (toString/-2075883882 var1149!3)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var484_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1670=r0, var1381=null_type, var58=r1, var484=org.apache.commons.lang3.StringUtils, var1682=$z0, var1535=$z1, var1246=$z2, var2244=$z6, var2620=z3, var1191=$z4, var2168=$z9, var2671=$z8, var2385=z5, var1149=$r2, var303=$i1, var2130=$i0, var3130=$i3, var1378=$i2, var3640=$i4, var1657=$r3}
; {r0=var1670, null_type=var1381, r1=var58, org.apache.commons.lang3.StringUtils=var484, $z0=var1682, $z1=var1535, $z2=var1246, $z6=var2244, z3=var2620, $z4=var1191, $z9=var2168, $z8=var2671, z5=var2385, $r2=var1149, $i1=var303, $i0=var2130, $i3=var3130, $i2=var1378, $i4=var3640, $r3=var1657}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 0;	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 0;	$z8 = 0;	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i1 + $i0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 + $i2;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4);	if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 11
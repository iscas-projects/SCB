(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1381 0)
(declare-sort var654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var654_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1346 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1346 null-String)))
(declare-const var2505 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2505 null-String)))
(define-const var2420 Bool (var654_isEmpty/1595667738 (cast-from-String-to-String var1346))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var2420 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3990 Bool (var654_isEmpty/1595667738 (cast-from-String-to-String var2505))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var3990 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2598 Bool (startsWith/-1785782452 var1346 var2505)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (not (= (ite var2598 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var3190 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= z3 = $z6] 
(assert true) ; Non Conditional
(define-const var3735 Bool var3190) ; Statement: z3 = $z6 
(assert true)
(define-const var3534 Bool (endsWith/985337093 var1346 var2505)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (= (ite var3534 1 0) 0))) ; Cond: $z4 != 0 
(define-const var983 Bool (ite (= 1 0) true false)) ; Statement: $z9 = 0 
(define-const var1387 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(define-const var39 Bool var1387) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var3735 1 0) 0))) ; Cond: z3 != 0 
(define-const var1484 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var730 Int (length/-134980193 var1346)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var389 Int (length/-134980193 var2505)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2379 Int (+ var730 var389)) ; Statement: $i3 = $i1 + $i0 
(assert true)
(define-const var2011 Int (length/-134980193 var2505)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1550 Int (+ var2379 var2011)) ; Statement: $i4 = $i3 + $i2 
(assert true)
;(assert (<init>/543593434 var1484 var1550)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var1484!1 String)
(declare-const var1550!1 Int)
 ; Statement: if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (not (= (ite var3735 1 0) 0))) ; Negate: Cond: z3 == 0  
(assert true)
;(assert (append/672562846 var1484!1 var2505)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1484!2 String)
(assert (= var1484!2 (str.++ var1484!1 var2505)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1484!2 var1346)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1484!3 String)
(assert (= var1484!3 (str.++ var1484!2 var1346)))
 ; Statement: if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var39 1 0) 0)) ; Cond: z5 == 0 
(assert true)
(define-const var184 String (toString/-2075883882 var1484!3)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var654_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1346=r0, var1381=null_type, var2505=r1, var654=org.apache.commons.lang3.StringUtils, var2420=$z0, var3990=$z1, var2598=$z2, var3190=$z6, var3735=z3, var3534=$z4, var983=$z9, var1387=$z8, var39=z5, var1484=$r2, var730=$i1, var389=$i0, var2379=$i3, var2011=$i2, var1550=$i4, var184=$r3}
; {r0=var1346, null_type=var1381, r1=var2505, org.apache.commons.lang3.StringUtils=var654, $z0=var2420, $z1=var3990, $z2=var2598, $z6=var3190, z3=var3735, $z4=var3534, $z9=var983, $z8=var1387, z5=var39, $r2=var1484, $i1=var730, $i0=var389, $i3=var2379, $i2=var2011, $i4=var1550, $r3=var184}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 1;	goto [?= z3 = $z6];	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 0;	$z8 = 0;	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i1 + $i0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 + $i2;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4);	if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 11
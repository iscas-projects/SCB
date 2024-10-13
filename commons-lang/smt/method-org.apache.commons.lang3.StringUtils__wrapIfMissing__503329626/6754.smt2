(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2662 0)
(declare-sort var2952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2952_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2549 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2549 null-String)))
(declare-const var1524 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1524 null-String)))
(define-const var3334 Bool (var2952_isEmpty/1595667738 (cast-from-String-to-String var2549))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var3334 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1838 Bool (var2952_isEmpty/1595667738 (cast-from-String-to-String var1524))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var1838 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var218 Bool (startsWith/-1785782452 var2549 var1524)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (not (= (ite var218 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2922 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= z3 = $z6] 
(assert true) ; Non Conditional
(define-const var2596 Bool var2922) ; Statement: z3 = $z6 
(assert true)
(define-const var2080 Bool (endsWith/985337093 var2549 var1524)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (not (= (ite var2080 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var2757 Bool (ite (= 1 1) true false)) ; Statement: $z9 = 1 
(define-const var2143 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= z5 = $z8] 
(assert true) ; Non Conditional
(define-const var1078 Bool var2143) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= (ite var2596 1 0) 0)))) ; Negate: Cond: z3 != 0  
 ; Statement: if $z9 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var2757 1 0) 0))) ; Cond: $z9 != 0 
(define-const var2760 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var682 Int (length/-134980193 var2549)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var933 Int (length/-134980193 var1524)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2130 Int (+ var682 var933)) ; Statement: $i3 = $i1 + $i0 
(assert true)
(define-const var1231 Int (length/-134980193 var1524)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3664 Int (+ var2130 var1231)) ; Statement: $i4 = $i3 + $i2 
(assert true)
;(assert (<init>/543593434 var2760 var3664)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var2760!1 String)
(declare-const var3664!1 Int)
 ; Statement: if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (= (ite var2596 1 0) 0)) ; Cond: z3 == 0 
(assert true)
;(assert (append/672562846 var2760!1 var2549)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2760!2 String)
(assert (= var2760!2 (str.++ var2760!1 var2549)))
 ; Statement: if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1078 1 0) 0)) ; Cond: z5 == 0 
(assert true)
(define-const var1387 String (toString/-2075883882 var2760!2)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2952_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2549=r0, var2662=null_type, var1524=r1, var2952=org.apache.commons.lang3.StringUtils, var3334=$z0, var1838=$z1, var218=$z2, var2922=$z6, var2596=z3, var2080=$z4, var2757=$z9, var2143=$z8, var1078=z5, var2760=$r2, var682=$i1, var933=$i0, var2130=$i3, var1231=$i2, var3664=$i4, var1387=$r3}
; {r0=var2549, null_type=var2662, r1=var1524, org.apache.commons.lang3.StringUtils=var2952, $z0=var3334, $z1=var1838, $z2=var218, $z6=var2922, z3=var2596, $z4=var2080, $z9=var2757, $z8=var2143, z5=var1078, $r2=var2760, $i1=var682, $i0=var933, $i3=var2130, $i2=var1231, $i4=var3664, $r3=var1387}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 1;	goto [?= z3 = $z6];	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 1;	$z8 = 1;	goto [?= z5 = $z8];	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	if $z9 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i1 + $i0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 + $i2;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4);	if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 11
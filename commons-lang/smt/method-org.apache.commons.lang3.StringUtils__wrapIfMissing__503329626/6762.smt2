(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1004 0)
(declare-sort var223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var223_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1527 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1527 null-String)))
(declare-const var3622 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3622 null-String)))
(define-const var2550 Bool (var223_isEmpty/1595667738 (cast-from-String-to-String var1527))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var2550 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3920 Bool (var223_isEmpty/1595667738 (cast-from-String-to-String var3622))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var3920 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2860 Bool (startsWith/-1785782452 var1527 var3622)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (= (ite var2860 1 0) 0))) ; Cond: $z2 != 0 
(define-const var1499 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var741 Bool var1499) ; Statement: z3 = $z6 
(assert true)
(define-const var3184 Bool (endsWith/985337093 var1527 var3622)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (not (= (ite var3184 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var3595 Bool (ite (= 1 1) true false)) ; Statement: $z9 = 1 
(define-const var1882 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= z5 = $z8] 
(assert true) ; Non Conditional
(define-const var2971 Bool var1882) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var741 1 0) 0))) ; Cond: z3 != 0 
(define-const var510 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var2481 Int (length/-134980193 var1527)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var3100 Int (length/-134980193 var3622)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2065 Int (+ var2481 var3100)) ; Statement: $i3 = $i1 + $i0 
(assert true)
(define-const var3409 Int (length/-134980193 var3622)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var863 Int (+ var2065 var3409)) ; Statement: $i4 = $i3 + $i2 
(assert true)
;(assert (<init>/543593434 var510 var863)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var510!1 String)
(declare-const var863!1 Int)
 ; Statement: if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (= (ite var741 1 0) 0)) ; Cond: z3 == 0 
(assert true)
;(assert (append/672562846 var510!1 var1527)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var510!2 String)
(assert (= var510!2 (str.++ var510!1 var1527)))
 ; Statement: if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var2971 1 0) 0))) ; Negate: Cond: z5 == 0  
(assert true)
;(assert (append/672562846 var510!2 var3622)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var510!3 String)
(assert (= var510!3 (str.++ var510!2 var3622)))
(assert true) ; Non Conditional
(assert true)
(define-const var659 String (toString/-2075883882 var510!3)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var223_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1527=r0, var1004=null_type, var3622=r1, var223=org.apache.commons.lang3.StringUtils, var2550=$z0, var3920=$z1, var2860=$z2, var1499=$z6, var741=z3, var3184=$z4, var3595=$z9, var1882=$z8, var2971=z5, var510=$r2, var2481=$i1, var3100=$i0, var2065=$i3, var3409=$i2, var863=$i4, var659=$r3}
; {r0=var1527, null_type=var1004, r1=var3622, org.apache.commons.lang3.StringUtils=var223, $z0=var2550, $z1=var3920, $z2=var2860, $z6=var1499, z3=var741, $z4=var3184, $z9=var3595, $z8=var1882, z5=var2971, $r2=var510, $i1=var2481, $i0=var3100, $i3=var2065, $i2=var3409, $i4=var863, $r3=var659}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 0;	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 1;	$z8 = 1;	goto [?= z5 = $z8];	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i1 + $i0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 + $i2;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4);	if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 11
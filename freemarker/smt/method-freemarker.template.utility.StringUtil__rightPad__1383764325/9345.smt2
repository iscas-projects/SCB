(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3435 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3492 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3492 null-String)))
(declare-const var1211 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1211 null-Int)))
(declare-const var1127 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1127 null-String)))
(assert true)
(define-const var172 Int (length/-134980193 var3492)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (> var1211 var172)) ; Cond: i1 > i0 
(define-const var374 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var374 var1211)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var374!1 String)
(declare-const var1211!1 Int)
(assert true)
;(assert (append/672562846 var374!1 var3492)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var374!2 String)
(assert (= var374!2 (str.++ var374!1 var3492)))
(define-const var3466 Int (- var1211!1 var172)) ; Statement: i9 = i1 - i0 
(assert true)
(define-const var1015 Int (length/-134980193 var1127)) ; Statement: i2 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i2 != 0 goto i3 = i0 % i2 
(assert (not (= var1015 0))) ; Cond: i2 != 0 
(define-const var3575 Int (mod var172 var1015)) ; Statement: i3 = i0 % i2 
(define-const var1579 Int (- var1015 var3575)) ; Statement: $i4 = i2 - i3 
 ; Statement: if $i4 > i9 goto $i10 = i3 + i9 
(assert (> var1579 var3466)) ; Cond: $i4 > i9 
(define-const var1606 Int (+ var3575 var3466)) ; Statement: $i10 = i3 + i9 
(assert true) ; Non Conditional
(define-const var2039 Int var1606) ; Statement: i5 = $i10 
(define-const var480 Int var3575) ; Statement: i11 = i3 
(assert true) ; Non Conditional
 ; Statement: if i11 >= i5 goto $i6 = i5 - i3 
(assert (>= var480 var2039)) ; Cond: i11 >= i5 
(define-const var2215 Int (- var2039 var3575)) ; Statement: $i6 = i5 - i3 
(define-const var3121 Int (- var3466 var2215)) ; Statement: i12 = i9 - $i6 
(define-const var2686 Int (div var3121 var1015)) ; Statement: i13 = i12 / i2 
(define-const var713 Int 0) ; Statement: i14 = 0 
(assert true) ; Non Conditional
 ; Statement: if i14 >= i13 goto i15 = i12 % i2 
(assert (>= var713 var2686)) ; Cond: i14 >= i13 
(define-const var425 Int (mod var3121 var1015)) ; Statement: i15 = i12 % i2 
(define-const var490 Int 0) ; Statement: i16 = 0 
(assert true) ; Non Conditional
 ; Statement: if i16 >= i15 goto $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var490 var425)) ; Cond: i16 >= i15 
(assert true)
(define-const var558 String (toString/-2075883882 var374!2)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3492=r0, var3435=null_type, var1211=i1, var1127=r2, var172=i0, var374=$r1, var3466=i9, var1015=i2, var3575=i3, var1579=$i4, var1606=$i10, var2039=i5, var480=i11, var2215=$i6, var3121=i12, var2686=i13, var713=i14, var425=i15, var490=i16, var558=$r3}
; {r0=var3492, null_type=var3435, i1=var1211, r2=var1127, i0=var172, $r1=var374, i9=var3466, i2=var1015, i3=var3575, $i4=var1579, $i10=var1606, i5=var2039, i11=var480, $i6=var2215, i12=var3121, i13=var2686, i14=var713, i15=var425, i16=var490, $r3=var558}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	r2 := @parameter2: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	i9 = i1 - i0;	i2 = virtualinvoke r2.<java.lang.String: int length()>();	if i2 != 0 goto i3 = i0 % i2;	i3 = i0 % i2;	$i4 = i2 - i3;	if $i4 > i9 goto $i10 = i3 + i9;	$i10 = i3 + i9;	i5 = $i10;	i11 = i3;	if i11 >= i5 goto $i6 = i5 - i3;	$i6 = i5 - i3;	i12 = i9 - $i6;	i13 = i12 / i2;	i14 = 0;	if i14 >= i13 goto i15 = i12 % i2;	i15 = i12 % i2;	i16 = 0;	if i16 >= i15 goto $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 11
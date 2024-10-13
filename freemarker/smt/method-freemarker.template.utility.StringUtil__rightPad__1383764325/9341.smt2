(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var730 0)
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
(declare-const var2065 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2065 null-String)))
(declare-const var24 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var24 null-Int)))
(declare-const var771 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var771 null-String)))
(assert true)
(define-const var2100 Int (length/-134980193 var2065)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (> var24 var2100)) ; Cond: i1 > i0 
(define-const var435 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var435 var24)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var435!1 String)
(declare-const var24!1 Int)
(assert true)
;(assert (append/672562846 var435!1 var2065)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var435!2 String)
(assert (= var435!2 (str.++ var435!1 var2065)))
(define-const var2594 Int (- var24!1 var2100)) ; Statement: i9 = i1 - i0 
(assert true)
(define-const var341 Int (length/-134980193 var771)) ; Statement: i2 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i2 != 0 goto i3 = i0 % i2 
(assert (not (= var341 0))) ; Cond: i2 != 0 
(define-const var806 Int (mod var2100 var341)) ; Statement: i3 = i0 % i2 
(define-const var154 Int (- var341 var806)) ; Statement: $i4 = i2 - i3 
 ; Statement: if $i4 > i9 goto $i10 = i3 + i9 
(assert (not (> var154 var2594))) ; Negate: Cond: $i4 > i9  
(define-const var492 Int var341) ; Statement: $i10 = i2 
 ; Statement: goto [?= i5 = $i10] 
(assert true) ; Non Conditional
(define-const var1729 Int var492) ; Statement: i5 = $i10 
(define-const var1731 Int var806) ; Statement: i11 = i3 
(assert true) ; Non Conditional
 ; Statement: if i11 >= i5 goto $i6 = i5 - i3 
(assert (>= var1731 var1729)) ; Cond: i11 >= i5 
(define-const var1621 Int (- var1729 var806)) ; Statement: $i6 = i5 - i3 
(define-const var1012 Int (- var2594 var1621)) ; Statement: i12 = i9 - $i6 
(define-const var312 Int (div var1012 var341)) ; Statement: i13 = i12 / i2 
(define-const var1164 Int 0) ; Statement: i14 = 0 
(assert true) ; Non Conditional
 ; Statement: if i14 >= i13 goto i15 = i12 % i2 
(assert (>= var1164 var312)) ; Cond: i14 >= i13 
(define-const var1257 Int (mod var1012 var341)) ; Statement: i15 = i12 % i2 
(define-const var310 Int 0) ; Statement: i16 = 0 
(assert true) ; Non Conditional
 ; Statement: if i16 >= i15 goto $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var310 var1257)) ; Cond: i16 >= i15 
(assert true)
(define-const var2005 String (toString/-2075883882 var435!2)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2065=r0, var730=null_type, var24=i1, var771=r2, var2100=i0, var435=$r1, var2594=i9, var341=i2, var806=i3, var154=$i4, var492=$i10, var1729=i5, var1731=i11, var1621=$i6, var1012=i12, var312=i13, var1164=i14, var1257=i15, var310=i16, var2005=$r3}
; {r0=var2065, null_type=var730, i1=var24, r2=var771, i0=var2100, $r1=var435, i9=var2594, i2=var341, i3=var806, $i4=var154, $i10=var492, i5=var1729, i11=var1731, $i6=var1621, i12=var1012, i13=var312, i14=var1164, i15=var1257, i16=var310, $r3=var2005}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	r2 := @parameter2: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	i9 = i1 - i0;	i2 = virtualinvoke r2.<java.lang.String: int length()>();	if i2 != 0 goto i3 = i0 % i2;	i3 = i0 % i2;	$i4 = i2 - i3;	if $i4 > i9 goto $i10 = i3 + i9;	$i10 = i2;	goto [?= i5 = $i10];	i5 = $i10;	i11 = i3;	if i11 >= i5 goto $i6 = i5 - i3;	$i6 = i5 - i3;	i12 = i9 - $i6;	i13 = i12 / i2;	i14 = 0;	if i14 >= i13 goto i15 = i12 % i2;	i15 = i12 % i2;	i16 = 0;	if i16 >= i15 goto $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 11
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2739 0)
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
(declare-const var3085 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3085 null-String)))
(declare-const var49 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var49 null-Int)))
(declare-const var2055 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2055 null-String)))
(assert true)
(define-const var3615 Int (length/-134980193 var3085)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (> var49 var3615)) ; Cond: i1 > i0 
(define-const var2040 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2040 var49)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var2040!1 String)
(declare-const var49!1 Int)
(define-const var2724 Int (- var49!1 var3615)) ; Statement: i2 = i1 - i0 
(assert true)
(define-const var3777 Int (length/-134980193 var2055)) ; Statement: i3 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i3 != 0 goto i5 = i2 / i3 
(assert (not (= var3777 0))) ; Cond: i3 != 0 
(define-const var3078 Int (div var2724 var3777)) ; Statement: i5 = i2 / i3 
(define-const var2871 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i5 goto i7 = i2 % i3 
(assert (>= var2871 var3078)) ; Cond: i6 >= i5 
(define-const var572 Int (mod var2724 var3777)) ; Statement: i7 = i2 % i3 
(define-const var3562 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i7 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (>= var3562 var572)) ; Cond: i8 >= i7 
(assert true)
;(assert (append/672562846 var2040!1 var3085)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2040!2 String)
(assert (= var2040!2 (str.++ var2040!1 var3085)))
(assert true)
(define-const var126 String (toString/-2075883882 var2040!2)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3085=r0, var2739=null_type, var49=i1, var2055=r2, var3615=i0, var2040=$r1, var2724=i2, var3777=i3, var3078=i5, var2871=i6, var572=i7, var3562=i8, var126=$r3}
; {r0=var3085, null_type=var2739, i1=var49, r2=var2055, i0=var3615, $r1=var2040, i2=var2724, i3=var3777, i5=var3078, i6=var2871, i7=var572, i8=var3562, $r3=var126}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	r2 := @parameter2: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1);	i2 = i1 - i0;	i3 = virtualinvoke r2.<java.lang.String: int length()>();	if i3 != 0 goto i5 = i2 / i3;	i5 = i2 / i3;	i6 = 0;	if i6 >= i5 goto i7 = i2 % i3;	i7 = i2 % i3;	i8 = 0;	if i8 >= i7 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 7
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var807 0)
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
(declare-const var3466 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3466 null-String)))
(declare-const var993 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var993 null-Int)))
(declare-const var2719 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2719 null-String)))
(assert true)
(define-const var3136 Int (length/-134980193 var3466)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (> var993 var3136)) ; Cond: i1 > i0 
(define-const var989 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var989 var993)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var989!1 String)
(declare-const var993!1 Int)
(define-const var893 Int (- var993!1 var3136)) ; Statement: i2 = i1 - i0 
(assert true)
(define-const var1544 Int (length/-134980193 var2719)) ; Statement: i3 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i3 != 0 goto i5 = i2 / i3 
(assert (not (= var1544 0))) ; Cond: i3 != 0 
(define-const var1673 Int (div var893 var1544)) ; Statement: i5 = i2 / i3 
(define-const var895 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i5 goto i7 = i2 % i3 
(assert (not (>= var895 var1673))) ; Negate: Cond: i6 >= i5  
(assert true)
;(assert (append/672562846 var989!1 var2719)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var989!2 String)
(assert (= var989!2 (str.++ var989!1 var2719)))
(define-const var895!1 Int (+ var895 1)) ; Statement: i6 = i6 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i5 goto i7 = i2 % i3 
(assert (>= var895!1 var1673)) ; Cond: i6 >= i5 
(define-const var3334 Int (mod var893 var1544)) ; Statement: i7 = i2 % i3 
(define-const var3317 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i7 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (>= var3317 var3334)) ; Cond: i8 >= i7 
(assert true)
;(assert (append/672562846 var989!2 var3466)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var989!3 String)
(assert (= var989!3 (str.++ var989!2 var3466)))
(assert true)
(define-const var1678 String (toString/-2075883882 var989!3)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3466=r0, var807=null_type, var993=i1, var2719=r2, var3136=i0, var989=$r1, var893=i2, var1544=i3, var1673=i5, var895=i6, var3334=i7, var3317=i8, var1678=$r3}
; {r0=var3466, null_type=var807, i1=var993, r2=var2719, i0=var3136, $r1=var989, i2=var893, i3=var1544, i5=var1673, i6=var895, i7=var3334, i8=var3317, $r3=var1678}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	r2 := @parameter2: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1);	i2 = i1 - i0;	i3 = virtualinvoke r2.<java.lang.String: int length()>();	if i3 != 0 goto i5 = i2 / i3;	i5 = i2 / i3;	i6 = 0;	if i6 >= i5 goto i7 = i2 % i3;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	i6 = i6 + 1;	goto [?= (branch)];	if i6 >= i5 goto i7 = i2 % i3;	i7 = i2 % i3;	i8 = 0;	if i8 >= i7 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 9
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1891 0)
(declare-sort var2658 0)
(declare-sort var1040 0)
(declare-sort var199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1040-init () var1040)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/719218867 (var1040 String) void)
(declare-fun cast-from-var1040-to-var199 (var1040) var199)
(declare-const null-var1891 var1891)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2472 var1891) ; Statement: r0 := @this: org.hibernate.jdbc.Expectations$BasicExpectation 
(assert (not (= var2472 null-var1891)))
(declare-const var1857 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1857 null-Int)))
(declare-const var1563 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var1563 null-Int)))
(declare-const var3712 String) ; Statement: r18 := @parameter2: java.lang.String 
(assert (not (= var3712 null-String)))
(define-const var1689 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i8 = (int) -2 
 ; Statement: if i0 != $i8 goto $i10 = (int) -3 
(assert (not (= var1857 var1689))) ; Cond: i0 != $i8 
(define-const var3225 Int (cast-from-Int-to-Int (- 3))) ; Statement: $i10 = (int) -3 
 ; Statement: if i0 != $i10 goto $i1 = r0.<org.hibernate.jdbc.Expectations$BasicExpectation: int expectedRowCount> 
(assert (not (not (= var1857 var3225)))) ; Negate: Cond: i0 != $i10  
(define-const var3609 var1040 var1040-init) ; Statement: $r29 = new org.hibernate.jdbc.BatchFailedException 
(define-const var2802 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2802)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2802!1 String)
(assert (= var2802!1 ""))
(assert true)
(define-const var2164 String (append/672562846 var2802!1 "Batch update failed: ")) ; Statement: $r24 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Batch update failed: ") 
(declare-const var2802!2 String)
(assert (= var2802!2 (str.++ var2802!1 "Batch update failed: ")))
(assert true)
(define-const var2699 String (append/-1001720160 var2164 var1563)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var2164!1 String)
(assert (str.prefixof var2164 var2164!1))
(assert true)
(define-const var1655 String (toString/-2075883882 var2699)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/719218867 var3609 var1655)) ; Statement: specialinvoke $r29.<org.hibernate.jdbc.BatchFailedException: void <init>(java.lang.String)>($r26) 

(declare-const var3609!1 var1040)
(declare-const var1655!1 String)
(define-const var3812 var199 (cast-from-var1040-to-var199 var3609!1)) ; Statement: $r34 = (java.lang.Throwable) $r29 
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), var1040-init=([], org.hibernate.jdbc.BatchFailedException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/719218867=([org.hibernate.jdbc.BatchFailedException, java.lang.String], void), cast-from-var1040-to-var199=([org.hibernate.jdbc.BatchFailedException], java.lang.Throwable)}
; {var1891=org.hibernate.jdbc.Expectations$BasicExpectation, var2472=r0, var1857=i0, var1563=i3, var3712=r18, var2658=null_type, var1689=$i8, var3225=$i10, var1040=org.hibernate.jdbc.BatchFailedException, var3609=$r29, var2802=$r28, var2164=$r24, var2699=$r25, var1655=$r26, var199=java.lang.Throwable, var3812=$r34}
; {org.hibernate.jdbc.Expectations$BasicExpectation=var1891, r0=var2472, i0=var1857, i3=var1563, r18=var3712, null_type=var2658, $i8=var1689, $i10=var3225, org.hibernate.jdbc.BatchFailedException=var1040, $r29=var3609, $r28=var2802, $r24=var2164, $r25=var2699, $r26=var1655, java.lang.Throwable=var199, $r34=var3812}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.jdbc.Expectations$BasicExpectation;	i0 := @parameter0: int;	i3 := @parameter1: int;	r18 := @parameter2: java.lang.String;	$i8 = (int) -2;	if i0 != $i8 goto $i10 = (int) -3;	$i10 = (int) -3;	if i0 != $i10 goto $i1 = r0.<org.hibernate.jdbc.Expectations$BasicExpectation: int expectedRowCount>;	$r29 = new org.hibernate.jdbc.BatchFailedException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Batch update failed: ");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<org.hibernate.jdbc.BatchFailedException: void <init>(java.lang.String)>($r26);	$r34 = (java.lang.Throwable) $r29;	throw $r34
;block_num 3
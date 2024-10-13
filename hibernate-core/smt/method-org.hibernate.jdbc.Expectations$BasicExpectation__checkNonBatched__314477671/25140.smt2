(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var446 0)
(declare-sort var1625 0)
(declare-sort var2540 0)
(declare-sort var1192 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun expectedRowCount/1882694318 (var446) Int)
(declare-fun var2540-init () var2540)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/5680799 (var2540 String) void)
(declare-fun cast-from-var2540-to-var1192 (var2540) var1192)
(declare-const null-var446 var446)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var939 var446) ; Statement: r0 := @this: org.hibernate.jdbc.Expectations$BasicExpectation 
(assert (not (= var939 null-var446)))
(declare-const var1129 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1129 null-Int)))
(declare-const var1917 String) ; Statement: r14 := @parameter1: java.lang.String 
(assert (not (= var1917 null-String)))
(define-const var1504 Int (expectedRowCount/1882694318 var939)) ; Statement: $i1 = r0.<org.hibernate.jdbc.Expectations$BasicExpectation: int expectedRowCount> 
 ; Statement: if $i1 <= i0 goto $i2 = r0.<org.hibernate.jdbc.Expectations$BasicExpectation: int expectedRowCount> 
(assert (not (<= var1504 var1129))) ; Negate: Cond: $i1 <= i0  
(define-const var236 var2540 var2540-init) ; Statement: $r19 = new org.hibernate.StaleStateException 
(define-const var203 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var203)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var203!1 String)
(assert (= var203!1 ""))
(assert true)
(define-const var2219 String (append/672562846 var203!1 "Unexpected row count: ")) ; Statement: $r10 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected row count: ") 
(declare-const var203!2 String)
(assert (= var203!2 (str.++ var203!1 "Unexpected row count: ")))
(assert true)
(define-const var3087 String (append/-1001720160 var2219 var1129)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2219!1 String)
(assert (str.prefixof var2219 var2219!1))
(assert true)
(define-const var1895 String (append/672562846 var3087 "; expected: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; expected: ") 
(declare-const var3087!1 String)
(assert (= var3087!1 (str.++ var3087 "; expected: ")))
(define-const var1814 Int (expectedRowCount/1882694318 var939)) ; Statement: $i5 = r0.<org.hibernate.jdbc.Expectations$BasicExpectation: int expectedRowCount> 
(assert true)
(define-const var2333 String (append/-1001720160 var1895 var1814)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var1895!1 String)
(assert (str.prefixof var1895 var1895!1))
(assert true)
(define-const var981 String (append/672562846 var2333 "; statement executed: ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; statement executed: ") 
(declare-const var2333!1 String)
(assert (= var2333!1 (str.++ var2333 "; statement executed: ")))
(assert true)
(define-const var181 String (append/672562846 var981 var1917)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var981!1 String)
(assert (= var981!1 (str.++ var981 var1917)))
(assert true)
(define-const var3884 String (toString/-2075883882 var181)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/5680799 var236 var3884)) ; Statement: specialinvoke $r19.<org.hibernate.StaleStateException: void <init>(java.lang.String)>($r17) 

(declare-const var236!1 var2540)
(declare-const var3884!1 String)
(define-const var976 var1192 (cast-from-var2540-to-var1192 var236!1)) ; Statement: $r22 = (java.lang.Throwable) $r19 
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {expectedRowCount/1882694318=([org.hibernate.jdbc.Expectations$BasicExpectation], int), var2540-init=([], org.hibernate.StaleStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/5680799=([org.hibernate.StaleStateException, java.lang.String], void), cast-from-var2540-to-var1192=([org.hibernate.StaleStateException], java.lang.Throwable)}
; {var446=org.hibernate.jdbc.Expectations$BasicExpectation, var939=r0, var1129=i0, var1917=r14, var1625=null_type, var1504=$i1, var2540=org.hibernate.StaleStateException, var236=$r19, var203=$r18, var2219=$r10, var3087=$r11, var1895=$r12, var1814=$i5, var2333=$r13, var981=$r15, var181=$r16, var3884=$r17, var1192=java.lang.Throwable, var976=$r22}
; {org.hibernate.jdbc.Expectations$BasicExpectation=var446, r0=var939, i0=var1129, r14=var1917, null_type=var1625, $i1=var1504, org.hibernate.StaleStateException=var2540, $r19=var236, $r18=var203, $r10=var2219, $r11=var3087, $r12=var1895, $i5=var1814, $r13=var2333, $r15=var981, $r16=var181, $r17=var3884, java.lang.Throwable=var1192, $r22=var976}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.jdbc.Expectations$BasicExpectation;	i0 := @parameter0: int;	r14 := @parameter1: java.lang.String;	$i1 = r0.<org.hibernate.jdbc.Expectations$BasicExpectation: int expectedRowCount>;	if $i1 <= i0 goto $i2 = r0.<org.hibernate.jdbc.Expectations$BasicExpectation: int expectedRowCount>;	$r19 = new org.hibernate.StaleStateException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected row count: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; expected: ");	$i5 = r0.<org.hibernate.jdbc.Expectations$BasicExpectation: int expectedRowCount>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; statement executed: ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.hibernate.StaleStateException: void <init>(java.lang.String)>($r17);	$r22 = (java.lang.Throwable) $r19;	throw $r22
;block_num 2
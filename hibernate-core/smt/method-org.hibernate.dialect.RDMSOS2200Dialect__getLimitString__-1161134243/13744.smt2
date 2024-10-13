(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1400 0)
(declare-sort var3472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1400 var1400)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var389 var1400) ; Statement: r8 := @this: org.hibernate.dialect.RDMSOS2200Dialect 
(assert (not (= var389 null-var1400)))
(declare-const var830 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var830 null-String)))
(declare-const var3666 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3666 null-Int)))
(declare-const var34 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var34 null-Int)))
 ; Statement: if i0 <= 0 goto $r0 = new java.lang.StringBuilder 
(assert (<= var3666 0)) ; Cond: i0 <= 0 
(define-const var2198 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2198)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2198!1 String)
(assert (= var2198!1 ""))
(assert true)
(define-const var2348 String (append/672562846 var2198!1 var830)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2198!2 String)
(assert (= var2198!2 (str.++ var2198!1 var830)))
(assert true)
(define-const var2569 String (append/672562846 var2348 " fetch first ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(declare-const var2348!1 String)
(assert (= var2348!1 (str.++ var2348 " fetch first ")))
(assert true)
(define-const var3979 String (append/-1001720160 var2569 var34)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2569!1 String)
(assert (str.prefixof var2569 var2569!1))
(assert true)
(define-const var762 String (append/672562846 var3979 " rows only ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only ") 
(declare-const var3979!1 String)
(assert (= var3979!1 (str.++ var3979 " rows only ")))
(assert true)
(define-const var3794 String (toString/-2075883882 var762)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1400=org.hibernate.dialect.RDMSOS2200Dialect, var389=r8, var830=r1, var3472=null_type, var3666=i0, var34=i1, var2198=$r0, var2348=$r2, var2569=$r3, var3979=$r4, var762=$r5, var3794=$r6}
; {org.hibernate.dialect.RDMSOS2200Dialect=var1400, r8=var389, r1=var830, null_type=var3472, i0=var3666, i1=var34, $r0=var2198, $r2=var2348, $r3=var2569, $r4=var3979, $r5=var762, $r6=var3794}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.dialect.RDMSOS2200Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 <= 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3715 0)
(declare-sort var2056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3715 var3715)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2500 var3715) ; Statement: r16 := @this: org.hibernate.dialect.DB2400V7R3Dialect 
(assert (not (= var2500 null-var3715)))
(declare-const var340 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var340 null-String)))
(declare-const var1625 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1625 null-Int)))
(declare-const var3241 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3241 null-Int)))
 ; Statement: if i0 != 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (not (= var1625 0)))) ; Negate: Cond: i0 != 0  
(define-const var2858 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2858)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2858!1 String)
(assert (= var2858!1 ""))
(assert true)
(define-const var2000 String (append/672562846 var2858!1 var340)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2858!2 String)
(assert (= var2858!2 (str.++ var2858!1 var340)))
(assert true)
(define-const var2451 String (append/672562846 var2000 " fetch first ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(declare-const var2000!1 String)
(assert (= var2000!1 (str.++ var2000 " fetch first ")))
(assert true)
(define-const var3926 String (append/-1001720160 var2451 var3241)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2451!1 String)
(assert (str.prefixof var2451 var2451!1))
(assert true)
(define-const var1351 String (append/672562846 var3926 " rows only")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only") 
(declare-const var3926!1 String)
(assert (= var3926!1 (str.++ var3926 " rows only")))
(assert true)
(define-const var653 String (toString/-2075883882 var1351)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3715=org.hibernate.dialect.DB2400V7R3Dialect, var2500=r16, var340=r1, var2056=null_type, var1625=i0, var3241=i1, var2858=$r10, var2000=$r11, var2451=$r12, var3926=$r13, var1351=$r14, var653=$r15}
; {org.hibernate.dialect.DB2400V7R3Dialect=var3715, r16=var2500, r1=var340, null_type=var2056, i0=var1625, i1=var3241, $r10=var2858, $r11=var2000, $r12=var2451, $r13=var3926, $r14=var1351, $r15=var653}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: org.hibernate.dialect.DB2400V7R3Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 != 0 goto $r0 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 2
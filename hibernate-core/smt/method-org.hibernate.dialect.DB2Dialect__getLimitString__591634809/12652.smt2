(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1891 0)
(declare-sort var369 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1891 var1891)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3215 var1891) ; Statement: r16 := @this: org.hibernate.dialect.DB2Dialect 
(assert (not (= var3215 null-var1891)))
(declare-const var2359 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2359 null-String)))
(declare-const var2821 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2821 null-Int)))
(declare-const var3623 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3623 null-Int)))
 ; Statement: if i0 != 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (not (= var2821 0)))) ; Negate: Cond: i0 != 0  
(define-const var2188 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2188)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2188!1 String)
(assert (= var2188!1 ""))
(assert true)
(define-const var1799 String (append/672562846 var2188!1 var2359)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2188!2 String)
(assert (= var2188!2 (str.++ var2188!1 var2359)))
(assert true)
(define-const var2173 String (append/672562846 var1799 " fetch first ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(declare-const var1799!1 String)
(assert (= var1799!1 (str.++ var1799 " fetch first ")))
(assert true)
(define-const var3235 String (append/-1001720160 var2173 var3623)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2173!1 String)
(assert (str.prefixof var2173 var2173!1))
(assert true)
(define-const var1463 String (append/672562846 var3235 " rows only")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only") 
(declare-const var3235!1 String)
(assert (= var3235!1 (str.++ var3235 " rows only")))
(assert true)
(define-const var2105 String (toString/-2075883882 var1463)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1891=org.hibernate.dialect.DB2Dialect, var3215=r16, var2359=r1, var369=null_type, var2821=i0, var3623=i1, var2188=$r10, var1799=$r11, var2173=$r12, var3235=$r13, var1463=$r14, var2105=$r15}
; {org.hibernate.dialect.DB2Dialect=var1891, r16=var3215, r1=var2359, null_type=var369, i0=var2821, i1=var3623, $r10=var2188, $r11=var1799, $r12=var2173, $r13=var3235, $r14=var1463, $r15=var2105}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: org.hibernate.dialect.DB2Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 != 0 goto $r0 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 2
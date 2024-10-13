(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2109 0)
(declare-sort var819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2109 var2109)
(declare-const null-String String)
(declare-const var2642 var2109) ; Statement: r6 := @this: org.hibernate.dialect.DB2390V8Dialect 
(assert (not (= var2642 null-var2109)))
(declare-const var3606 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3606 null-String)))
(define-const var189 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var189)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var189!1 String)
(assert (= var189!1 ""))
(assert true)
(define-const var548 String (append/672562846 var189!1 "drop sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ") 
(declare-const var189!2 String)
(assert (= var189!2 (str.++ var189!1 "drop sequence ")))
(assert true)
(define-const var1991 String (append/672562846 var548 var3606)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var548!1 String)
(assert (= var548!1 (str.++ var548 var3606)))
(assert true)
(define-const var1899 String (append/672562846 var1991 " restrict")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" restrict") 
(declare-const var1991!1 String)
(assert (= var1991!1 (str.++ var1991 " restrict")))
(assert true)
(define-const var2916 String (toString/-2075883882 var1899)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2109=org.hibernate.dialect.DB2390V8Dialect, var2642=r6, var3606=r1, var819=null_type, var189=$r0, var548=$r2, var1991=$r3, var1899=$r4, var2916=$r5}
; {org.hibernate.dialect.DB2390V8Dialect=var2109, r6=var2642, r1=var3606, null_type=var819, $r0=var189, $r2=var548, $r3=var1991, $r4=var1899, $r5=var2916}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.DB2390V8Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" restrict");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
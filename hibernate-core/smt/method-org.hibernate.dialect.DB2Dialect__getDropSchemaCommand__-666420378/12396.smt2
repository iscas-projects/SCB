(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var6 0)
(declare-sort var3813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var6 var6)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3413 var6) ; Statement: r7 := @this: org.hibernate.dialect.DB2Dialect 
(assert (not (= var3413 null-var6)))
(declare-const var1810 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1810 null-String)))
(define-const var2111 (Array Int String) arr-String-init) ; Statement: $r0 = newarray (java.lang.String)[1] 
(define-const var2851 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2851)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2851!1 String)
(assert (= var2851!1 ""))
(assert true)
(define-const var1525 String (append/672562846 var2851!1 "drop schema ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop schema ") 
(declare-const var2851!2 String)
(assert (= var2851!2 (str.++ var2851!1 "drop schema ")))
(assert true)
(define-const var1947 String (append/672562846 var1525 var1810)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1525!1 String)
(assert (= var1525!1 (str.++ var1525 var1810)))
(assert true)
(define-const var2150 String (append/672562846 var1947 " restrict")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" restrict") 
(declare-const var1947!1 String)
(assert (= var1947!1 (str.++ var1947 " restrict")))
(assert true)
(define-const var127 String (toString/-2075883882 var2150)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2111!1 (Array Int String))
(assert (not (= var2111!1 null-__Array__Int__String__)))
(assert (= (select var2111!1 0) var127)) ; Statement: $r0[0] = $r6 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var6=org.hibernate.dialect.DB2Dialect, var3413=r7, var1810=r2, var3813=null_type, var2111=$r0, var2851=$r1, var1525=$r3, var1947=$r4, var2150=$r5, var127=$r6}
; {org.hibernate.dialect.DB2Dialect=var6, r7=var3413, r2=var1810, null_type=var3813, $r0=var2111, $r1=var2851, $r3=var1525, $r4=var1947, $r5=var2150, $r6=var127}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.dialect.DB2Dialect;	r2 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.String)[1];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop schema ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" restrict");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r0[0] = $r6;	return $r0
;block_num 1
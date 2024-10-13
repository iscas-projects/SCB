(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var138 0)
(declare-sort var2501 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/2101757332 (var2501) String)
(declare-fun cast-from-var138-to-var2501 (var138) var2501)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var138 var138)
(declare-const var2671 var138) ; Statement: r1 := @this: org.hibernate.dialect.function.StandardJDBCEscapeFunction 
(assert (not (= var2671 null-var138)))
(define-const var530 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var530)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var530!1 String)
(assert (= var530!1 ""))
(assert true)
(define-const var2412 String (append/672562846 var530!1 "{fn ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{fn ") 
(declare-const var530!2 String)
(assert (= var530!2 (str.++ var530!1 "{fn ")))
(assert true)
(define-const var3048 String (getName/2101757332 (cast-from-var138-to-var2501 var2671))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.function.StandardJDBCEscapeFunction: java.lang.String getName()>() 
(assert true)
(define-const var1768 String (append/672562846 var2412 var3048)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2412!1 String)
(assert (= var2412!1 (str.++ var2412 var3048)))
(assert true)
(define-const var2914 String (append/672562846 var1768 "...}")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...}") 
(declare-const var1768!1 String)
(assert (= var1768!1 (str.++ var1768 "...}")))
(assert true)
(define-const var579 String (toString/-2075883882 var2914)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/2101757332=([org.hibernate.dialect.function.StandardSQLFunction], java.lang.String), cast-from-var138-to-var2501=([org.hibernate.dialect.function.StandardJDBCEscapeFunction], org.hibernate.dialect.function.StandardSQLFunction), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var138=org.hibernate.dialect.function.StandardJDBCEscapeFunction, var2671=r1, var530=$r0, var2412=$r3, var2501=org.hibernate.dialect.function.StandardSQLFunction, var3048=$r2, var1768=$r4, var2914=$r5, var579=$r6}
; {org.hibernate.dialect.function.StandardJDBCEscapeFunction=var138, r1=var2671, $r0=var530, $r3=var2412, org.hibernate.dialect.function.StandardSQLFunction=var2501, $r2=var3048, $r4=var1768, $r5=var2914, $r6=var579}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.function.StandardJDBCEscapeFunction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{fn ");	$r2 = virtualinvoke r1.<org.hibernate.dialect.function.StandardJDBCEscapeFunction: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...}");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
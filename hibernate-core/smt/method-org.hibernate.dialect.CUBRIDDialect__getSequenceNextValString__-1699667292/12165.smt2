(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var779 0)
(declare-sort var3075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var779 var779)
(declare-const null-String String)
(declare-const var1119 var779) ; Statement: r6 := @this: org.hibernate.dialect.CUBRIDDialect 
(assert (not (= var1119 null-var779)))
(declare-const var1579 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1579 null-String)))
(define-const var3118 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3118)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3118!1 String)
(assert (= var3118!1 ""))
(assert true)
(define-const var1835 String (append/672562846 var3118!1 "select ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var3118!2 String)
(assert (= var3118!2 (str.++ var3118!1 "select ")))
(assert true)
(define-const var918 String (append/672562846 var1835 var1579)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1835!1 String)
(assert (= var1835!1 (str.++ var1835 var1579)))
(assert true)
(define-const var995 String (append/672562846 var918 ".next_value from table({1}) as T(X)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".next_value from table({1}) as T(X)") 
(declare-const var918!1 String)
(assert (= var918!1 (str.++ var918 ".next_value from table({1}) as T(X)")))
(assert true)
(define-const var30 String (toString/-2075883882 var995)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var779=org.hibernate.dialect.CUBRIDDialect, var1119=r6, var1579=r1, var3075=null_type, var3118=$r0, var1835=$r2, var918=$r3, var995=$r4, var30=$r5}
; {org.hibernate.dialect.CUBRIDDialect=var779, r6=var1119, r1=var1579, null_type=var3075, $r0=var3118, $r2=var1835, $r3=var918, $r4=var995, $r5=var30}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.CUBRIDDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".next_value from table({1}) as T(X)");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
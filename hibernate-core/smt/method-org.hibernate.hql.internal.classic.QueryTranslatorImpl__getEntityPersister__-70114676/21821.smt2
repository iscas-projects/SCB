(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3137 0)
(declare-sort var3562 0)
(declare-sort var3105 0)
(declare-sort var1887 0)
(declare-sort var1141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1887-init () var1887)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var1887 String) void)
(declare-fun cast-from-var1887-to-var1141 (var1887) var1141)
(declare-const null-var3137 var3137)
(declare-const null-String String)
(declare-const null-var3105 var3105)
(declare-const var2078 var3137) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var2078 null-var3137)))
(declare-const var2833 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2833 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var684 var3105) ; Statement: $r6 := @caughtexception 
(assert (not (= var684 null-var3105)))
(define-const var3439 var1887 var1887-init) ; Statement: $r13 = new org.hibernate.QueryException 
(define-const var1671 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1671)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1671!1 String)
(assert (= var1671!1 ""))
(assert true)
(define-const var1071 String (append/672562846 var1671!1 "persistent class not found: ")) ; Statement: $r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not found: ") 
(declare-const var1671!2 String)
(assert (= var1671!2 (str.++ var1671!1 "persistent class not found: ")))
(assert true)
(define-const var2226 String (append/672562846 var1071 var2833)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1071!1 String)
(assert (= var1071!1 (str.++ var1071 var2833)))
(assert true)
(define-const var3821 String (toString/-2075883882 var2226)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var3439 var3821)) ; Statement: specialinvoke $r13.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11) 

(declare-const var3439!1 var1887)
(declare-const var3821!1 String)
(define-const var836 var1141 (cast-from-var1887-to-var1141 var3439!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1887-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var1887-to-var1141=([org.hibernate.QueryException], java.lang.Throwable)}
; {var3137=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var2078=r0, var2833=r2, var3562=null_type, var3105=java.lang.Exception, var684=$r6, var1887=org.hibernate.QueryException, var3439=$r13, var1671=$r12, var1071=$r9, var2226=$r10, var3821=$r11, var1141=java.lang.Throwable, var836=$r14}
; {org.hibernate.hql.internal.classic.QueryTranslatorImpl=var3137, r0=var2078, r2=var2833, null_type=var3562, java.lang.Exception=var3105, $r6=var684, org.hibernate.QueryException=var1887, $r13=var3439, $r12=var1671, $r9=var1071, $r10=var2226, $r11=var3821, java.lang.Throwable=var1141, $r14=var836}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r2 := @parameter0: java.lang.String;	$r6 := @caughtexception;	$r13 = new org.hibernate.QueryException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not found: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2
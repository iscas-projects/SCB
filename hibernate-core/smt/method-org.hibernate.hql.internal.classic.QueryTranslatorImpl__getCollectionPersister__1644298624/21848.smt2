(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2128 0)
(declare-sort var3403 0)
(declare-sort var2266 0)
(declare-sort var1973 0)
(declare-sort var3986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1973-init () var1973)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var1973 String) void)
(declare-fun cast-from-var1973-to-var3986 (var1973) var3986)
(declare-const null-var2128 var2128)
(declare-const null-String String)
(declare-const null-var2266 var2266)
(declare-const var365 var2128) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var365 null-var2128)))
(declare-const var540 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var540 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2407 var2266) ; Statement: $r12 := @caughtexception 
(assert (not (= var2407 null-var2266)))
(define-const var3147 var1973 var1973-init) ; Statement: $r19 = new org.hibernate.QueryException 
(define-const var3148 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3148)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3148!1 String)
(assert (= var3148!1 ""))
(assert true)
(define-const var2804 String (append/672562846 var3148!1 "collection role is not queryable: ")) ; Statement: $r15 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection role is not queryable: ") 
(declare-const var3148!2 String)
(assert (= var3148!2 (str.++ var3148!1 "collection role is not queryable: ")))
(assert true)
(define-const var3421 String (append/672562846 var2804 var540)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2804!1 String)
(assert (= var2804!1 (str.++ var2804 var540)))
(assert true)
(define-const var787 String (toString/-2075883882 var3421)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var3147 var787)) ; Statement: specialinvoke $r19.<org.hibernate.QueryException: void <init>(java.lang.String)>($r17) 

(declare-const var3147!1 var1973)
(declare-const var787!1 String)
(define-const var133 var3986 (cast-from-var1973-to-var3986 var3147!1)) ; Statement: $r22 = (java.lang.Throwable) $r19 
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var1973-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var1973-to-var3986=([org.hibernate.QueryException], java.lang.Throwable)}
; {var2128=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var365=r0, var540=r2, var3403=null_type, var2266=java.lang.ClassCastException, var2407=$r12, var1973=org.hibernate.QueryException, var3147=$r19, var3148=$r18, var2804=$r15, var3421=$r16, var787=$r17, var3986=java.lang.Throwable, var133=$r22}
; {org.hibernate.hql.internal.classic.QueryTranslatorImpl=var2128, r0=var365, r2=var540, null_type=var3403, java.lang.ClassCastException=var2266, $r12=var2407, org.hibernate.QueryException=var1973, $r19=var3147, $r18=var3148, $r15=var2804, $r16=var3421, $r17=var787, java.lang.Throwable=var3986, $r22=var133}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r2 := @parameter0: java.lang.String;	$r12 := @caughtexception;	$r19 = new org.hibernate.QueryException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection role is not queryable: ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.hibernate.QueryException: void <init>(java.lang.String)>($r17);	$r22 = (java.lang.Throwable) $r19;	throw $r22
;block_num 2
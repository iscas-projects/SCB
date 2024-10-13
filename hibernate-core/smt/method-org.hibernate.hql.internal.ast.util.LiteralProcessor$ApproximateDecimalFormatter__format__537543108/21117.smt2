(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2299 0)
(declare-sort var3619 0)
(declare-sort var521 0)
(declare-sort var2936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2936-init () var2936)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/940323715 (var3619) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var2936 String var521) void)
(declare-fun cast-from-var2936-to-var521 (var2936) var521)
(declare-const null-var2299 var2299)
(declare-const null-var3619 var3619)
(declare-const null-var521 var521)
(declare-const var319 var2299) ; Statement: r11 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor$ApproximateDecimalFormatter 
(assert (not (= var319 null-var2299)))
(declare-const var1286 var3619) ; Statement: r1 := @parameter0: java.math.BigDecimal 
(assert (not (= var1286 null-var3619)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2793 var521) ; Statement: $r3 := @caughtexception 
(assert (not (= var2793 null-var521)))
(define-const var3889 var2936 var2936-init) ; Statement: $r14 = new org.hibernate.HibernateException 
(define-const var2933 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2933)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2933!1 String)
(assert (= var2933!1 ""))
(assert true)
(define-const var3139 String (append/672562846 var2933!1 "Unable to format decimal literal in approximate format [")) ; Statement: $r7 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to format decimal literal in approximate format [") 
(declare-const var2933!2 String)
(assert (= var2933!2 (str.++ var2933!1 "Unable to format decimal literal in approximate format [")))
(assert true)
(define-const var2191 String (toString/940323715 var1286)) ; Statement: $r6 = virtualinvoke r1.<java.math.BigDecimal: java.lang.String toString()>() 
(assert true)
(define-const var50 String (append/672562846 var3139 var2191)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3139!1 String)
(assert (= var3139!1 (str.++ var3139 var2191)))
(assert true)
(define-const var3163 String (append/672562846 var50 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var50!1 String)
(assert (= var50!1 (str.++ var50 "]")))
(assert true)
(define-const var3457 String (toString/-2075883882 var3163)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var3889 var3457 var2793)) ; Statement: specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3) 

(declare-const var3889!1 var2936)
(declare-const var3457!1 String)
(declare-const var2793!1 var521)
(define-const var1612 var521 (cast-from-var2936-to-var521 var3889!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2936-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/940323715=([java.math.BigDecimal], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var2936-to-var521=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2299=org.hibernate.hql.internal.ast.util.LiteralProcessor$ApproximateDecimalFormatter, var319=r11, var3619=java.math.BigDecimal, var1286=r1, var521=java.lang.Throwable, var2793=$r3, var2936=org.hibernate.HibernateException, var3889=$r14, var2933=$r13, var3139=$r7, var2191=$r6, var50=$r8, var3163=$r9, var3457=$r10, var1612=$r15}
; {org.hibernate.hql.internal.ast.util.LiteralProcessor$ApproximateDecimalFormatter=var2299, r11=var319, java.math.BigDecimal=var3619, r1=var1286, java.lang.Throwable=var521, $r3=var2793, org.hibernate.HibernateException=var2936, $r14=var3889, $r13=var2933, $r7=var3139, $r6=var2191, $r8=var50, $r9=var3163, $r10=var3457, $r15=var1612}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.math.BigDecimal: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor$ApproximateDecimalFormatter;	r1 := @parameter0: java.math.BigDecimal;	$r3 := @caughtexception;	$r14 = new org.hibernate.HibernateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to format decimal literal in approximate format [");	$r6 = virtualinvoke r1.<java.math.BigDecimal: java.lang.String toString()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2
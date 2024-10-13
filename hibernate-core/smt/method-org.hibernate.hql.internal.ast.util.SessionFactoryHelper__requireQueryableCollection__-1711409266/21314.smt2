(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2166 0)
(declare-sort var1749 0)
(declare-sort var2037 0)
(declare-sort var1627 0)
(declare-sort var2416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1627-init () var1627)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var1627 String) void)
(declare-fun cast-from-var1627-to-var2416 (var1627) var2416)
(declare-const null-var2166 var2166)
(declare-const null-String String)
(declare-const null-var2037 var2037)
(declare-const var1124 var2166) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.util.SessionFactoryHelper 
(assert (not (= var1124 null-var2166)))
(declare-const var2963 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2963 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var318 var2037) ; Statement: $r7 := @caughtexception 
(assert (not (= var318 null-var2037)))
(define-const var3993 var1627 var1627-init) ; Statement: $r24 = new org.hibernate.QueryException 
(define-const var3208 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3208)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3208!1 String)
(assert (= var3208!1 ""))
(assert true)
(define-const var1274 String (append/672562846 var3208!1 "collection role not found: ")) ; Statement: $r10 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection role not found: ") 
(declare-const var3208!2 String)
(assert (= var3208!2 (str.++ var3208!1 "collection role not found: ")))
(assert true)
(define-const var52 String (append/672562846 var1274 var2963)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1274!1 String)
(assert (= var1274!1 (str.++ var1274 var2963)))
(assert true)
(define-const var58 String (toString/-2075883882 var52)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var3993 var58)) ; Statement: specialinvoke $r24.<org.hibernate.QueryException: void <init>(java.lang.String)>($r12) 

(declare-const var3993!1 var1627)
(declare-const var58!1 String)
(define-const var2557 var2416 (cast-from-var1627-to-var2416 var3993!1)) ; Statement: $r26 = (java.lang.Throwable) $r24 
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var1627-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var1627-to-var2416=([org.hibernate.QueryException], java.lang.Throwable)}
; {var2166=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var1124=r0, var2963=r2, var1749=null_type, var2037=java.lang.Exception, var318=$r7, var1627=org.hibernate.QueryException, var3993=$r24, var3208=$r23, var1274=$r10, var52=$r11, var58=$r12, var2416=java.lang.Throwable, var2557=$r26}
; {org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var2166, r0=var1124, r2=var2963, null_type=var1749, java.lang.Exception=var2037, $r7=var318, org.hibernate.QueryException=var1627, $r24=var3993, $r23=var3208, $r10=var1274, $r11=var52, $r12=var58, java.lang.Throwable=var2416, $r26=var2557}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.util.SessionFactoryHelper;	r2 := @parameter0: java.lang.String;	$r7 := @caughtexception;	$r24 = new org.hibernate.QueryException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection role not found: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<org.hibernate.QueryException: void <init>(java.lang.String)>($r12);	$r26 = (java.lang.Throwable) $r24;	throw $r26
;block_num 2
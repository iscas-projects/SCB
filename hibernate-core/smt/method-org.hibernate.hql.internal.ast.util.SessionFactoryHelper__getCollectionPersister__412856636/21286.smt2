(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var527 0)
(declare-sort var2696 0)
(declare-sort var3675 0)
(declare-sort var1291 0)
(declare-sort var1989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1291-init () var1291)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var1291 String) void)
(declare-fun cast-from-var1291-to-var1989 (var1291) var1989)
(declare-const null-var527 var527)
(declare-const null-String String)
(declare-const null-var3675 var3675)
(declare-const var2336 var527) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.util.SessionFactoryHelper 
(assert (not (= var2336 null-var527)))
(declare-const var2765 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2765 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3600 var3675) ; Statement: $r6 := @caughtexception 
(assert (not (= var3600 null-var3675)))
(define-const var2397 var1291 var1291-init) ; Statement: $r21 = new org.hibernate.QueryException 
(define-const var3177 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3177)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3177!1 String)
(assert (= var3177!1 ""))
(assert true)
(define-const var2379 String (append/672562846 var3177!1 "collection not found: ")) ; Statement: $r9 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection not found: ") 
(declare-const var3177!2 String)
(assert (= var3177!2 (str.++ var3177!1 "collection not found: ")))
(assert true)
(define-const var3526 String (append/672562846 var2379 var2765)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2379!1 String)
(assert (= var2379!1 (str.++ var2379 var2765)))
(assert true)
(define-const var3341 String (toString/-2075883882 var3526)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var2397 var3341)) ; Statement: specialinvoke $r21.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11) 

(declare-const var2397!1 var1291)
(declare-const var3341!1 String)
(define-const var2048 var1989 (cast-from-var1291-to-var1989 var2397!1)) ; Statement: $r23 = (java.lang.Throwable) $r21 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var1291-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var1291-to-var1989=([org.hibernate.QueryException], java.lang.Throwable)}
; {var527=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var2336=r0, var2765=r2, var2696=null_type, var3675=java.lang.Exception, var3600=$r6, var1291=org.hibernate.QueryException, var2397=$r21, var3177=$r20, var2379=$r9, var3526=$r10, var3341=$r11, var1989=java.lang.Throwable, var2048=$r23}
; {org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var527, r0=var2336, r2=var2765, null_type=var2696, java.lang.Exception=var3675, $r6=var3600, org.hibernate.QueryException=var1291, $r21=var2397, $r20=var3177, $r9=var2379, $r10=var3526, $r11=var3341, java.lang.Throwable=var1989, $r23=var2048}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.util.SessionFactoryHelper;	r2 := @parameter0: java.lang.String;	$r6 := @caughtexception;	$r21 = new org.hibernate.QueryException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection not found: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11);	$r23 = (java.lang.Throwable) $r21;	throw $r23
;block_num 2
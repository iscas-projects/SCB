(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3601 0)
(declare-sort var2487 0)
(declare-sort var1962 0)
(declare-sort var2317 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1962-init () var1962)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2317) ClassObject)
(declare-fun cast-from-var3601-to-var2317 (var3601) var2317)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var1962 String) void)
(declare-const null-var3601 var3601)
(declare-const null-var2487 var2487)
(declare-const null-Int Int)
(declare-const var2116 var3601) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var2116 null-var3601)))
(declare-const var3686 var2487) ; Statement: r8 := @parameter0: java.sql.CallableStatement 
(assert (not (= var3686 null-var2487)))
(declare-const var2505 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2505 null-Int)))
(define-const var372 var1962 var1962-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var1578 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1578)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1578!1 String)
(assert (= var1578!1 ""))
(assert true)
(define-const var2128 ClassObject (getClass/1258963082 (cast-from-var3601-to-var2317 var2116))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var605 String (getName/-1958580599 var2128)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3350 String (append/672562846 var1578!1 var605)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1578!2 String)
(assert (= var1578!2 (str.++ var1578!1 var605)))
(assert true)
(define-const var2942 String (append/672562846 var3350 " does not support resultsets via stored procedures")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support resultsets via stored procedures") 
(declare-const var3350!1 String)
(assert (= var3350!1 (str.++ var3350 " does not support resultsets via stored procedures")))
(assert true)
(define-const var1161 String (toString/-2075883882 var2942)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var372 var1161)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var372!1 var1962)
(declare-const var1161!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1962-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3601-to-var2317=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var3601=org.hibernate.dialect.Dialect, var2116=r2, var2487=java.sql.CallableStatement, var3686=r8, var2505=i0, var1962=java.lang.UnsupportedOperationException, var372=$r0, var1578=$r1, var2317=java.lang.Object, var2128=$r3, var605=$r4, var3350=$r5, var2942=$r6, var1161=$r7}
; {org.hibernate.dialect.Dialect=var3601, r2=var2116, java.sql.CallableStatement=var2487, r8=var3686, i0=var2505, java.lang.UnsupportedOperationException=var1962, $r0=var372, $r1=var1578, java.lang.Object=var2317, $r3=var2128, $r4=var605, $r5=var3350, $r6=var2942, $r7=var1161}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	r8 := @parameter0: java.sql.CallableStatement;	i0 := @parameter1: int;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support resultsets via stored procedures");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1
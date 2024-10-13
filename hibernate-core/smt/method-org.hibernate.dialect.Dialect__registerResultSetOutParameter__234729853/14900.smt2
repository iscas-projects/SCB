(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3748 0)
(declare-sort var2247 0)
(declare-sort var981 0)
(declare-sort var238 0)
(declare-sort var397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var238-init () var238)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var397) ClassObject)
(declare-fun cast-from-var3748-to-var397 (var3748) var397)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var238 String) void)
(declare-const null-var3748 var3748)
(declare-const null-var2247 var2247)
(declare-const null-String String)
(declare-const var239 var3748) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var239 null-var3748)))
(declare-const var942 var2247) ; Statement: r8 := @parameter0: java.sql.CallableStatement 
(assert (not (= var942 null-var2247)))
(declare-const var3045 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var3045 null-String)))
(define-const var3029 var238 var238-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var2159 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2159)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2159!1 String)
(assert (= var2159!1 ""))
(assert true)
(define-const var2162 ClassObject (getClass/1258963082 (cast-from-var3748-to-var397 var239))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3570 String (getName/-1958580599 var2162)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1756 String (append/672562846 var2159!1 var3570)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2159!2 String)
(assert (= var2159!2 (str.++ var2159!1 var3570)))
(assert true)
(define-const var3883 String (append/672562846 var1756 " does not support resultsets via stored procedures")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support resultsets via stored procedures") 
(declare-const var1756!1 String)
(assert (= var1756!1 (str.++ var1756 " does not support resultsets via stored procedures")))
(assert true)
(define-const var1796 String (toString/-2075883882 var3883)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var3029 var1796)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var3029!1 var238)
(declare-const var1796!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var238-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3748-to-var397=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var3748=org.hibernate.dialect.Dialect, var239=r2, var2247=java.sql.CallableStatement, var942=r8, var3045=r9, var981=null_type, var238=java.lang.UnsupportedOperationException, var3029=$r0, var2159=$r1, var397=java.lang.Object, var2162=$r3, var3570=$r4, var1756=$r5, var3883=$r6, var1796=$r7}
; {org.hibernate.dialect.Dialect=var3748, r2=var239, java.sql.CallableStatement=var2247, r8=var942, r9=var3045, null_type=var981, java.lang.UnsupportedOperationException=var238, $r0=var3029, $r1=var2159, java.lang.Object=var397, $r3=var2162, $r4=var3570, $r5=var1756, $r6=var3883, $r7=var1796}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	r8 := @parameter0: java.sql.CallableStatement;	r9 := @parameter1: java.lang.String;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support resultsets via stored procedures");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var714 0)
(declare-sort var2204 0)
(declare-sort var1057 0)
(declare-sort var2254 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isOpen/117154873 (var2204) Bool)
(declare-fun cast-from-var714-to-var2204 (var714) var2204)
(declare-fun var1057-init () var1057)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-522406933 (var2254) String)
(declare-fun cast-from-var714-to-var2254 (var714) var2254)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1057 String) void)
(declare-const null-var714 var714)
(declare-const var383 var714) ; Statement: r0 := @this: org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor 
(assert (not (= var383 null-var714)))
(assert true)
(define-const var85 Bool (isOpen/117154873 (cast-from-var714-to-var2204 var383))) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor: boolean isOpen()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var85 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2519 var1057 var1057-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var1959 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1959)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1959!1 String)
(assert (= var1959!1 ""))
(assert true)
(define-const var2298 String (toString/-522406933 (cast-from-var714-to-var2254 var383))) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1883 String (append/672562846 var1959!1 var2298)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1959!2 String)
(assert (= var1959!2 (str.++ var1959!1 var2298)))
(assert true)
(define-const var3158 String (append/672562846 var1883 " is closed")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is closed") 
(declare-const var1883!1 String)
(assert (= var1883!1 (str.++ var1883 " is closed")))
(assert true)
(define-const var1054 String (toString/-2075883882 var3158)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2519 var1054)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6) 

(declare-const var2519!1 var1057)
(declare-const var1054!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isOpen/117154873=([org.hibernate.resource.jdbc.LogicalConnection], boolean), cast-from-var714-to-var2204=([org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor], org.hibernate.resource.jdbc.LogicalConnection), var1057-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var714-to-var2254=([org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var714=org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor, var383=r0, var2204=org.hibernate.resource.jdbc.LogicalConnection, var85=$z0, var1057=java.lang.IllegalStateException, var2519=$r1, var1959=$r2, var2254=java.lang.Object, var2298=$r3, var1883=$r4, var3158=$r5, var1054=$r6}
; {org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor=var714, r0=var383, org.hibernate.resource.jdbc.LogicalConnection=var2204, $z0=var85, java.lang.IllegalStateException=var1057, $r1=var2519, $r2=var1959, java.lang.Object=var2254, $r3=var2298, $r4=var1883, $r5=var3158, $r6=var1054}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor;	$z0 = virtualinvoke r0.<org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor: boolean isOpen()>();	if $z0 != 0 goto return;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is closed");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1175 0)
(declare-sort var3228 0)
(declare-sort var172 0)
(declare-sort var2663 0)
(declare-sort var1133 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun deletions/395077203 (var1175) var2663)
(declare-fun orphanRemovals/395077203 (var1175) var2663)
(declare-fun var1133-init () var1133)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3228_getEntityName/318007435 (var3228) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var1133 String) void)
(declare-const null-var1175 var1175)
(declare-const null-var3228 var3228)
(declare-const null-var172 var172)
(declare-const null-var2663 var2663)
(declare-const var2151 var1175) ; Statement: r0 := @this: org.hibernate.engine.spi.ActionQueue 
(assert (not (= var2151 null-var1175)))
(declare-const var1320 var3228) ; Statement: r4 := @parameter0: org.hibernate.engine.spi.EntityEntry 
(assert (not (= var1320 null-var3228)))
(declare-const var1989 var172) ; Statement: r21 := @parameter1: java.lang.Object 
(assert (not (= var1989 null-var172)))
(define-const var299 Bool false) ; Statement: $z0 = r21 instanceof org.hibernate.proxy.HibernateProxy 
 ; Statement: if $z0 == 0 goto $r23 = r0.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList deletions> 
(assert (= (ite var299 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1071 var2663 (deletions/395077203 var2151)) ; Statement: $r23 = r0.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList deletions> 
 ; Statement: if $r23 == null goto $r1 = r0.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList orphanRemovals> 
(assert (= var1071 null-var2663)) ; Cond: $r23 == null 
(define-const var3493 var2663 (orphanRemovals/395077203 var2151)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList orphanRemovals> 
 ; Statement: if $r1 == null goto $r2 = new org.hibernate.AssertionFailure 
(assert (= var3493 null-var2663)) ; Cond: $r1 == null 
(define-const var1231 var1133 var1133-init) ; Statement: $r2 = new org.hibernate.AssertionFailure 
(define-const var3419 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3419)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3419!1 String)
(assert (= var3419!1 ""))
(assert true)
(define-const var3067 String (append/672562846 var3419!1 "Unable to perform un-delete for instance ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to perform un-delete for instance ") 
(declare-const var3419!2 String)
(assert (= var3419!2 (str.++ var3419!1 "Unable to perform un-delete for instance ")))
(define-const var1107 String (var3228_getEntityName/318007435 var1320)) ; Statement: $r5 = interfaceinvoke r4.<org.hibernate.engine.spi.EntityEntry: java.lang.String getEntityName()>() 
(assert true)
(define-const var3619 String (append/672562846 var3067 var1107)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3067!1 String)
(assert (= var3067!1 (str.++ var3067 var1107)))
(assert true)
(define-const var3872 String (toString/-2075883882 var3619)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var1231 var3872)) ; Statement: specialinvoke $r2.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r8) 

(declare-const var1231!1 var1133)
(declare-const var3872!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {deletions/395077203=([org.hibernate.engine.spi.ActionQueue], org.hibernate.engine.spi.ExecutableList), orphanRemovals/395077203=([org.hibernate.engine.spi.ActionQueue], org.hibernate.engine.spi.ExecutableList), var1133-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3228_getEntityName/318007435=([org.hibernate.engine.spi.EntityEntry], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var1175=org.hibernate.engine.spi.ActionQueue, var2151=r0, var3228=org.hibernate.engine.spi.EntityEntry, var1320=r4, var172=java.lang.Object, var1989=r21, var299=$z0, var2663=org.hibernate.engine.spi.ExecutableList, var1071=$r23, var3493=$r1, var1133=org.hibernate.AssertionFailure, var1231=$r2, var3419=$r3, var3067=$r6, var1107=$r5, var3619=$r7, var3872=$r8}
; {org.hibernate.engine.spi.ActionQueue=var1175, r0=var2151, org.hibernate.engine.spi.EntityEntry=var3228, r4=var1320, java.lang.Object=var172, r21=var1989, $z0=var299, org.hibernate.engine.spi.ExecutableList=var2663, $r23=var1071, $r1=var3493, org.hibernate.AssertionFailure=var1133, $r2=var1231, $r3=var3419, $r6=var3067, $r5=var1107, $r7=var3619, $r8=var3872}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.spi.ActionQueue;	r4 := @parameter0: org.hibernate.engine.spi.EntityEntry;	r21 := @parameter1: java.lang.Object;	$z0 = r21 instanceof org.hibernate.proxy.HibernateProxy;	if $z0 == 0 goto $r23 = r0.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList deletions>;	$r23 = r0.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList deletions>;	if $r23 == null goto $r1 = r0.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList orphanRemovals>;	$r1 = r0.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList orphanRemovals>;	if $r1 == null goto $r2 = new org.hibernate.AssertionFailure;	$r2 = new org.hibernate.AssertionFailure;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to perform un-delete for instance ");	$r5 = interfaceinvoke r4.<org.hibernate.engine.spi.EntityEntry: java.lang.String getEntityName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 4
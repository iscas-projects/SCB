(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var962 0)
(declare-sort var2546 0)
(declare-sort var951 0)
(declare-sort var3038 0)
(declare-sort var1148 0)
(declare-sort var2725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getGraphedType/-494815520 (var962) var951)
(declare-fun var3038-init () var3038)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1148) String)
(declare-fun cast-from-var951-to-var1148 (var951) var1148)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1457327354 (var3038 String) void)
(declare-fun cast-from-var3038-to-var2725 (var3038) var2725)
(declare-const null-var962 var962)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2928 var962) ; Statement: r0 := @this: org.hibernate.graph.internal.AbstractGraph 
(assert (not (= var2928 null-var962)))
(declare-const var3556 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var3556 null-String)))
(declare-const var1998 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1998 null-Bool)))
(assert true)
(define-const var3159 var951 (getGraphedType/-494815520 var2928)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.graph.internal.AbstractGraph: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor getGraphedType()>() 
(define-const var2665 Bool true) ; Statement: $z0 = $r1 instanceof org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor 
 ; Statement: if $z0 == 0 goto $r13 = new org.hibernate.graph.CannotBecomeEntityGraphException 
(assert (= (ite var2665 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2338 var3038 var3038-init) ; Statement: $r13 = new org.hibernate.graph.CannotBecomeEntityGraphException 
(define-const var3458 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3458)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3458!1 String)
(assert (= var3458!1 ""))
(assert true)
(define-const var30 String (append/672562846 var3458!1 "Cannot transform Graph to RootGraph - ")) ; Statement: $r5 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot transform Graph to RootGraph - ") 
(declare-const var3458!2 String)
(assert (= var3458!2 (str.++ var3458!1 "Cannot transform Graph to RootGraph - ")))
(assert true)
(define-const var3954 var951 (getGraphedType/-494815520 var2928)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.graph.internal.AbstractGraph: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor getGraphedType()>() 
(assert true)
(define-const var2287 String (append/-1031950772 var30 (cast-from-var951-to-var1148 var3954))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var30!1 String)
(assert (str.prefixof var30 var30!1))
(assert true)
(define-const var621 String (append/672562846 var2287 " is not an EntityType")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not an EntityType") 
(declare-const var2287!1 String)
(assert (= var2287!1 (str.++ var2287 " is not an EntityType")))
(assert true)
(define-const var2394 String (toString/-2075883882 var621)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1457327354 var2338 var2394)) ; Statement: specialinvoke $r13.<org.hibernate.graph.CannotBecomeEntityGraphException: void <init>(java.lang.String)>($r8) 

(declare-const var2338!1 var3038)
(declare-const var2394!1 String)
(define-const var603 var2725 (cast-from-var3038-to-var2725 var2338!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getGraphedType/-494815520=([org.hibernate.graph.internal.AbstractGraph], org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor), var3038-init=([], org.hibernate.graph.CannotBecomeEntityGraphException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var951-to-var1148=([org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1457327354=([org.hibernate.graph.CannotBecomeEntityGraphException, java.lang.String], void), cast-from-var3038-to-var2725=([org.hibernate.graph.CannotBecomeEntityGraphException], java.lang.Throwable)}
; {var962=org.hibernate.graph.internal.AbstractGraph, var2928=r0, var3556=r10, var2546=null_type, var1998=z1, var951=org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor, var3159=$r1, var2665=$z0, var3038=org.hibernate.graph.CannotBecomeEntityGraphException, var2338=$r13, var3458=$r12, var30=$r5, var3954=$r4, var1148=java.lang.Object, var2287=$r6, var621=$r7, var2394=$r8, var2725=java.lang.Throwable, var603=$r14}
; {org.hibernate.graph.internal.AbstractGraph=var962, r0=var2928, r10=var3556, null_type=var2546, z1=var1998, org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor=var951, $r1=var3159, $z0=var2665, org.hibernate.graph.CannotBecomeEntityGraphException=var3038, $r13=var2338, $r12=var3458, $r5=var30, $r4=var3954, java.lang.Object=var1148, $r6=var2287, $r7=var621, $r8=var2394, java.lang.Throwable=var2725, $r14=var603}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.graph.internal.AbstractGraph;	r10 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	$r1 = virtualinvoke r0.<org.hibernate.graph.internal.AbstractGraph: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor getGraphedType()>();	$z0 = $r1 instanceof org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor;	if $z0 == 0 goto $r13 = new org.hibernate.graph.CannotBecomeEntityGraphException;	$r13 = new org.hibernate.graph.CannotBecomeEntityGraphException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot transform Graph to RootGraph - ");	$r4 = virtualinvoke r0.<org.hibernate.graph.internal.AbstractGraph: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor getGraphedType()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not an EntityType");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.graph.CannotBecomeEntityGraphException: void <init>(java.lang.String)>($r8);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2
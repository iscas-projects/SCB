(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3700 0)
(declare-sort var2405 0)
(declare-sort var3168 0)
(declare-sort var3372 0)
(declare-sort var1154 0)
(declare-sort var1932 0)
(declare-sort var1474 0)
(declare-sort var3803 0)
(declare-sort var2426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAttributeDescriptor/1473596794 (var3700) var2405)
(declare-fun var2405_getKeyGraphType/64820203 (var2405) var3168)
(declare-fun var3372-init () var3372)
(declare-fun arr-var1932-init () (Array Int var1932))
(declare-fun var2405_getDeclaringType/-2002309342 (var2405) var1474)
(declare-fun var1474_getName/-1872347228 (var1474) String)
(declare-fun cast-from-String-to-var1932 (String) var1932)
(declare-fun getAttributeName/-327642874 (var3700) String)
(declare-fun var2405_getPersistentAttributeType/1332724283 (var2405) var3803)
(declare-fun name/287885607 (var3803) String)
(declare-fun cast-from-var3168-to-var1932 (var3168) var1932)
(declare-fun String_format/-647569892 (var1154 String (Array Int var1932)) String)
(declare-fun <init>/-180914436 (var3372 String) void)
(declare-fun cast-from-var3372-to-var2426 (var3372) var2426)
(declare-const null-var3700 var3700)
(declare-const var1154-ROOT var1154)
(declare-const null-__Array__Int__var1932__ (Array Int var1932))
(declare-const var3868 var3700) ; Statement: r0 := @this: org.hibernate.graph.internal.AttributeNodeImpl 
(assert (not (= var3868 null-var3700)))
(assert true)
(define-const var1206 var2405 (getAttributeDescriptor/1473596794 var3868)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.graph.internal.AttributeNodeImpl: org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor getAttributeDescriptor()>() 
(define-const var1828 var3168 (var2405_getKeyGraphType/64820203 var1206)) ; Statement: r2 = interfaceinvoke $r1.<org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor: org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor getKeyGraphType()>() 
(define-const var3667 Bool true) ; Statement: $z0 = r2 instanceof org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor 
 ; Statement: if $z0 == 0 goto $r15 = new org.hibernate.graph.CannotContainSubGraphException 
(assert (= (ite var3667 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3329 var3372 var3372-init) ; Statement: $r15 = new org.hibernate.graph.CannotContainSubGraphException 
(define-const var2253 var1154 var1154-ROOT) ; Statement: $r5 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var1870 (Array Int var1932) arr-var1932-init) ; Statement: $r4 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var2201 var2405 (getAttributeDescriptor/1473596794 var3868)) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.graph.internal.AttributeNodeImpl: org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor getAttributeDescriptor()>() 
(define-const var67 var1474 (var2405_getDeclaringType/-2002309342 var2201)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor getDeclaringType()>() 
(define-const var2312 String (var1474_getName/-1872347228 var67)) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor: java.lang.String getName()>() 
(declare-const var1870!1 (Array Int var1932))
(assert (not (= var1870!1 null-__Array__Int__var1932__)))
(assert (= (select var1870!1 0) (cast-from-String-to-var1932 var2312))) ; Statement: $r4[0] = $r8 
(assert true)
(define-const var3676 String (getAttributeName/-327642874 var3868)) ; Statement: $r9 = virtualinvoke r0.<org.hibernate.graph.internal.AttributeNodeImpl: java.lang.String getAttributeName()>() 
(declare-const var1870!2 (Array Int var1932))
(assert (not (= var1870!2 null-__Array__Int__var1932__)))
(assert (= (select var1870!2 1) (cast-from-String-to-var1932 var3676))) ; Statement: $r4[1] = $r9 
(assert true)
(define-const var2854 var2405 (getAttributeDescriptor/1473596794 var3868)) ; Statement: $r10 = virtualinvoke r0.<org.hibernate.graph.internal.AttributeNodeImpl: org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor getAttributeDescriptor()>() 
(define-const var3193 var3803 (var2405_getPersistentAttributeType/1332724283 var2854)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor: javax.persistence.metamodel.Attribute$PersistentAttributeType getPersistentAttributeType()>() 
(assert true)
(define-const var1065 String (name/287885607 var3193)) ; Statement: $r12 = virtualinvoke $r11.<javax.persistence.metamodel.Attribute$PersistentAttributeType: java.lang.String name()>() 
(declare-const var1870!3 (Array Int var1932))
(assert (not (= var1870!3 null-__Array__Int__var1932__)))
(assert (= (select var1870!3 2) (cast-from-String-to-var1932 var1065))) ; Statement: $r4[2] = $r12 
(declare-const var1870!4 (Array Int var1932))
(assert (not (= var1870!4 null-__Array__Int__var1932__)))
(assert (= (select var1870!4 3) (cast-from-var3168-to-var1932 var1828))) ; Statement: $r4[3] = r2 
(define-const var2534 String (String_format/-647569892 var2253 "Attribute [%s#%s] (%s) cannot contain key sub-graphs - %s" var1870!4)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Attribute [%s#%s] (%s) cannot contain key sub-graphs - %s", $r4) 
(assert true)
;(assert (<init>/-180914436 var3329 var2534)) ; Statement: specialinvoke $r15.<org.hibernate.graph.CannotContainSubGraphException: void <init>(java.lang.String)>($r13) 

(declare-const var3329!1 var3372)
(declare-const var2534!1 String)
(define-const var2612 var2426 (cast-from-var3372-to-var2426 var3329!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getAttributeDescriptor/1473596794=([org.hibernate.graph.internal.AttributeNodeImpl], org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor), var2405_getKeyGraphType/64820203=([org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor], org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor), var3372-init=([], org.hibernate.graph.CannotContainSubGraphException), arr-var1932-init=([], java.lang.Object[]), var2405_getDeclaringType/-2002309342=([org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor], org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor), var1474_getName/-1872347228=([org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor], java.lang.String), cast-from-String-to-var1932=([java.lang.String], java.lang.Object), getAttributeName/-327642874=([org.hibernate.graph.internal.AttributeNodeImpl], java.lang.String), var2405_getPersistentAttributeType/1332724283=([org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor], javax.persistence.metamodel.Attribute$PersistentAttributeType), name/287885607=([javax.persistence.metamodel.Attribute$PersistentAttributeType], java.lang.String), cast-from-var3168-to-var1932=([org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-180914436=([org.hibernate.graph.CannotContainSubGraphException, java.lang.String], void), cast-from-var3372-to-var2426=([org.hibernate.graph.CannotContainSubGraphException], java.lang.Throwable)}
; {var3700=org.hibernate.graph.internal.AttributeNodeImpl, var3868=r0, var2405=org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor, var1206=$r1, var3168=org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor, var1828=r2, var3667=$z0, var3372=org.hibernate.graph.CannotContainSubGraphException, var3329=$r15, var1154=java.util.Locale, var2253=$r5, var1932=java.lang.Object, var1870=$r4, var2201=$r6, var1474=org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor, var67=$r7, var2312=$r8, var3676=$r9, var2854=$r10, var3803=javax.persistence.metamodel.Attribute$PersistentAttributeType, var3193=$r11, var1065=$r12, var2534=$r13, var2426=java.lang.Throwable, var2612=$r16}
; {org.hibernate.graph.internal.AttributeNodeImpl=var3700, r0=var3868, org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor=var2405, $r1=var1206, org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor=var3168, r2=var1828, $z0=var3667, org.hibernate.graph.CannotContainSubGraphException=var3372, $r15=var3329, java.util.Locale=var1154, $r5=var2253, java.lang.Object=var1932, $r4=var1870, $r6=var2201, org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor=var1474, $r7=var67, $r8=var2312, $r9=var3676, $r10=var2854, javax.persistence.metamodel.Attribute$PersistentAttributeType=var3803, $r11=var3193, $r12=var1065, $r13=var2534, java.lang.Throwable=var2426, $r16=var2612}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.graph.internal.AttributeNodeImpl;	$r1 = virtualinvoke r0.<org.hibernate.graph.internal.AttributeNodeImpl: org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor getAttributeDescriptor()>();	r2 = interfaceinvoke $r1.<org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor: org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor getKeyGraphType()>();	$z0 = r2 instanceof org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor;	if $z0 == 0 goto $r15 = new org.hibernate.graph.CannotContainSubGraphException;	$r15 = new org.hibernate.graph.CannotContainSubGraphException;	$r5 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = newarray (java.lang.Object)[4];	$r6 = virtualinvoke r0.<org.hibernate.graph.internal.AttributeNodeImpl: org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor getAttributeDescriptor()>();	$r7 = interfaceinvoke $r6.<org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor getDeclaringType()>();	$r8 = interfaceinvoke $r7.<org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor: java.lang.String getName()>();	$r4[0] = $r8;	$r9 = virtualinvoke r0.<org.hibernate.graph.internal.AttributeNodeImpl: java.lang.String getAttributeName()>();	$r4[1] = $r9;	$r10 = virtualinvoke r0.<org.hibernate.graph.internal.AttributeNodeImpl: org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor getAttributeDescriptor()>();	$r11 = interfaceinvoke $r10.<org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor: javax.persistence.metamodel.Attribute$PersistentAttributeType getPersistentAttributeType()>();	$r12 = virtualinvoke $r11.<javax.persistence.metamodel.Attribute$PersistentAttributeType: java.lang.String name()>();	$r4[2] = $r12;	$r4[3] = r2;	$r13 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Attribute [%s#%s] (%s) cannot contain key sub-graphs - %s", $r4);	specialinvoke $r15.<org.hibernate.graph.CannotContainSubGraphException: void <init>(java.lang.String)>($r13);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2
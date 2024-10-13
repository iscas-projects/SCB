(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1736 0)
(declare-sort var2112 0)
(declare-sort var2546 0)
(declare-sort var1642 0)
(declare-sort var2490 0)
(declare-sort var517 0)
(declare-sort var3256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2112_getType/81413620 (var2112) var2546)
(declare-fun var2546_getJavaType/565496227 (var2546) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var1642-init () var1642)
(declare-fun arr-var2490-init () (Array Int var2490))
(declare-fun getTypeName/1732526627 (var517) String)
(declare-fun cast-from-var1736-to-var517 (var1736) var517)
(declare-fun cast-from-String-to-var2490 (String) var2490)
(declare-fun var3256_getName/-1030042408 (var3256) String)
(declare-fun cast-from-var2112-to-var3256 (var2112) var3256)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun String_format/1339386452 (String (Array Int var2490)) String)
(declare-fun <init>/875830710 (var1642 String) void)
(declare-const null-var1736 var1736)
(declare-const null-var2112 var2112)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__var2490__ (Array Int var2490))
(declare-const var2584 var1736) ; Statement: r6 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType 
(assert (not (= var2584 null-var1736)))
(declare-const var1277 var2112) ; Statement: r1 := @parameter0: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute 
(assert (not (= var1277 null-var2112)))
(declare-const var140 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var140 null-ClassObject)))
(define-const var3893 var2546 (var2112_getType/81413620 var1277)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute: org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor getType()>() 
(define-const var2258 ClassObject (var2546_getJavaType/565496227 var3893)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor: java.lang.Class getJavaType()>() 
(assert true)
(define-const var2461 Bool (isAssignableFrom/-1028998700 var140 var2258)) ; Statement: $z0 = virtualinvoke r0.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var2461 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1168 var1642 var1642-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var2947 (Array Int var2490) arr-var2490-init) ; Statement: $r5 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var1269 String (getTypeName/1732526627 (cast-from-var1736-to-var517 var2584))) ; Statement: $r7 = virtualinvoke r6.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: java.lang.String getTypeName()>() 
(declare-const var2947!1 (Array Int var2490))
(assert (not (= var2947!1 null-__Array__Int__var2490__)))
(assert (= (select var2947!1 0) (cast-from-String-to-var2490 var1269))) ; Statement: $r5[0] = $r7 
(define-const var1216 String (var3256_getName/-1030042408 (cast-from-var2112-to-var3256 var1277))) ; Statement: $r8 = interfaceinvoke r1.<org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute: java.lang.String getName()>() 
(declare-const var2947!2 (Array Int var2490))
(assert (not (= var2947!2 null-__Array__Int__var2490__)))
(assert (= (select var2947!2 1) (cast-from-String-to-var2490 var1216))) ; Statement: $r5[1] = $r8 
(define-const var1093 var2546 (var2112_getType/81413620 var1277)) ; Statement: $r9 = interfaceinvoke r1.<org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute: org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor getType()>() 
(define-const var2126 ClassObject (var2546_getJavaType/565496227 var1093)) ; Statement: $r10 = interfaceinvoke $r9.<org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor: java.lang.Class getJavaType()>() 
(assert true)
(define-const var2347 String (getName/-1958580599 var2126)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2947!3 (Array Int var2490))
(assert (not (= var2947!3 null-__Array__Int__var2490__)))
(assert (= (select var2947!3 2) (cast-from-String-to-var2490 var2347))) ; Statement: $r5[2] = $r11 
(assert true)
(define-const var381 String (getName/-1958580599 var140)) ; Statement: $r12 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2947!4 (Array Int var2490))
(assert (not (= var2947!4 null-__Array__Int__var2490__)))
(assert (= (select var2947!4 3) (cast-from-String-to-var2490 var381))) ; Statement: $r5[3] = $r12 
(define-const var798 String (String_format/1339386452 "Attribute [%s#%s : %s] not castable to requested type [%s]" var2947!4)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Attribute [%s#%s : %s] not castable to requested type [%s]", $r5) 
(assert true)
;(assert (<init>/875830710 var1168 var798)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var1168!1 var1642)
(declare-const var798!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2112_getType/81413620=([org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute], org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor), var2546_getJavaType/565496227=([org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var1642-init=([], java.lang.IllegalArgumentException), arr-var2490-init=([], java.lang.Object[]), getTypeName/1732526627=([org.hibernate.metamodel.model.domain.internal.AbstractType], java.lang.String), cast-from-var1736-to-var517=([org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], org.hibernate.metamodel.model.domain.internal.AbstractType), cast-from-String-to-var2490=([java.lang.String], java.lang.Object), var3256_getName/-1030042408=([org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor], java.lang.String), cast-from-var2112-to-var3256=([org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute], org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor), getName/-1958580599=([java.lang.Class], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1736=org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType, var2584=r6, var2112=org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute, var1277=r1, var140=r0, var2546=org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor, var3893=$r2, var2258=$r3, var2461=$z0, var1642=java.lang.IllegalArgumentException, var1168=$r4, var2490=java.lang.Object, var2947=$r5, var517=org.hibernate.metamodel.model.domain.internal.AbstractType, var1269=$r7, var3256=org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor, var1216=$r8, var1093=$r9, var2126=$r10, var2347=$r11, var381=$r12, var798=$r13}
; {org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType=var1736, r6=var2584, org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute=var2112, r1=var1277, r0=var140, org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor=var2546, $r2=var3893, $r3=var2258, $z0=var2461, java.lang.IllegalArgumentException=var1642, $r4=var1168, java.lang.Object=var2490, $r5=var2947, org.hibernate.metamodel.model.domain.internal.AbstractType=var517, $r7=var1269, org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor=var3256, $r8=var1216, $r9=var1093, $r10=var2126, $r11=var2347, $r12=var381, $r13=var798}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r6 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType;	r1 := @parameter0: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute;	r0 := @parameter1: java.lang.Class;	$r2 = interfaceinvoke r1.<org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute: org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor getType()>();	$r3 = interfaceinvoke $r2.<org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor: java.lang.Class getJavaType()>();	$z0 = virtualinvoke r0.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3);	if $z0 != 0 goto return;	$r4 = new java.lang.IllegalArgumentException;	$r5 = newarray (java.lang.Object)[4];	$r7 = virtualinvoke r6.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: java.lang.String getTypeName()>();	$r5[0] = $r7;	$r8 = interfaceinvoke r1.<org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute: java.lang.String getName()>();	$r5[1] = $r8;	$r9 = interfaceinvoke r1.<org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute: org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor getType()>();	$r10 = interfaceinvoke $r9.<org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor: java.lang.Class getJavaType()>();	$r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r5[2] = $r11;	$r12 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r5[3] = $r12;	$r13 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Attribute [%s#%s : %s] not castable to requested type [%s]", $r5);	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r4
;block_num 2
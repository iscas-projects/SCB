(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var583 0)
(declare-sort var3922 0)
(declare-sort var3377 0)
(declare-sort var383 0)
(declare-sort var2037 0)
(declare-sort var995 0)
(declare-sort var3032 0)
(declare-sort var2695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAttributeDescriptor/1473596794 (var583) var3922)
(declare-fun var3922_getValueGraphType/-1119614403 (var3922) var3377)
(declare-fun var383-init () var383)
(declare-fun arr-var995-init () (Array Int var995))
(declare-fun getAttributeName/-327642874 (var583) String)
(declare-fun cast-from-String-to-var995 (String) var995)
(declare-fun var3922_getPersistentAttributeType/1332724283 (var3922) var3032)
(declare-fun name/287885607 (var3032) String)
(declare-fun String_format/-647569892 (var2037 String (Array Int var995)) String)
(declare-fun <init>/-180914436 (var383 String) void)
(declare-fun cast-from-var383-to-var2695 (var383) var2695)
(declare-const null-var583 var583)
(declare-const var2037-ROOT var2037)
(declare-const null-__Array__Int__var995__ (Array Int var995))
(declare-const var601 var583) ; Statement: r0 := @this: org.hibernate.graph.internal.AttributeNodeImpl 
(assert (not (= var601 null-var583)))
(assert true)
(define-const var79 var3922 (getAttributeDescriptor/1473596794 var601)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.graph.internal.AttributeNodeImpl: org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor getAttributeDescriptor()>() 
(define-const var488 var3377 (var3922_getValueGraphType/-1119614403 var79)) ; Statement: r2 = interfaceinvoke $r1.<org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor: org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor getValueGraphType()>() 
(define-const var2747 Bool true) ; Statement: $z0 = r2 instanceof org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor 
 ; Statement: if $z0 == 0 goto $r12 = new org.hibernate.graph.CannotContainSubGraphException 
(assert (= (ite var2747 1 0) 0)) ; Cond: $z0 == 0 
(define-const var787 var383 var383-init) ; Statement: $r12 = new org.hibernate.graph.CannotContainSubGraphException 
(define-const var720 var2037 var2037-ROOT) ; Statement: $r5 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var1911 (Array Int var995) arr-var995-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var2914 String (getAttributeName/-327642874 var601)) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.graph.internal.AttributeNodeImpl: java.lang.String getAttributeName()>() 
(declare-const var1911!1 (Array Int var995))
(assert (not (= var1911!1 null-__Array__Int__var995__)))
(assert (= (select var1911!1 0) (cast-from-String-to-var995 var2914))) ; Statement: $r4[0] = $r6 
(assert true)
(define-const var848 var3922 (getAttributeDescriptor/1473596794 var601)) ; Statement: $r7 = virtualinvoke r0.<org.hibernate.graph.internal.AttributeNodeImpl: org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor getAttributeDescriptor()>() 
(define-const var1251 var3032 (var3922_getPersistentAttributeType/1332724283 var848)) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor: javax.persistence.metamodel.Attribute$PersistentAttributeType getPersistentAttributeType()>() 
(assert true)
(define-const var2841 String (name/287885607 var1251)) ; Statement: $r9 = virtualinvoke $r8.<javax.persistence.metamodel.Attribute$PersistentAttributeType: java.lang.String name()>() 
(declare-const var1911!2 (Array Int var995))
(assert (not (= var1911!2 null-__Array__Int__var995__)))
(assert (= (select var1911!2 1) (cast-from-String-to-var995 var2841))) ; Statement: $r4[1] = $r9 
(define-const var6 String (String_format/-647569892 var720 "Attribute [%s] (%s) cannot contain value sub-graphs" var1911!2)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Attribute [%s] (%s) cannot contain value sub-graphs", $r4) 
(assert true)
;(assert (<init>/-180914436 var787 var6)) ; Statement: specialinvoke $r12.<org.hibernate.graph.CannotContainSubGraphException: void <init>(java.lang.String)>($r10) 

(declare-const var787!1 var383)
(declare-const var6!1 String)
(define-const var2090 var2695 (cast-from-var383-to-var2695 var787!1)) ; Statement: $r13 = (java.lang.Throwable) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getAttributeDescriptor/1473596794=([org.hibernate.graph.internal.AttributeNodeImpl], org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor), var3922_getValueGraphType/-1119614403=([org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor], org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor), var383-init=([], org.hibernate.graph.CannotContainSubGraphException), arr-var995-init=([], java.lang.Object[]), getAttributeName/-327642874=([org.hibernate.graph.internal.AttributeNodeImpl], java.lang.String), cast-from-String-to-var995=([java.lang.String], java.lang.Object), var3922_getPersistentAttributeType/1332724283=([org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor], javax.persistence.metamodel.Attribute$PersistentAttributeType), name/287885607=([javax.persistence.metamodel.Attribute$PersistentAttributeType], java.lang.String), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-180914436=([org.hibernate.graph.CannotContainSubGraphException, java.lang.String], void), cast-from-var383-to-var2695=([org.hibernate.graph.CannotContainSubGraphException], java.lang.Throwable)}
; {var583=org.hibernate.graph.internal.AttributeNodeImpl, var601=r0, var3922=org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor, var79=$r1, var3377=org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor, var488=r2, var2747=$z0, var383=org.hibernate.graph.CannotContainSubGraphException, var787=$r12, var2037=java.util.Locale, var720=$r5, var995=java.lang.Object, var1911=$r4, var2914=$r6, var848=$r7, var3032=javax.persistence.metamodel.Attribute$PersistentAttributeType, var1251=$r8, var2841=$r9, var6=$r10, var2695=java.lang.Throwable, var2090=$r13}
; {org.hibernate.graph.internal.AttributeNodeImpl=var583, r0=var601, org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor=var3922, $r1=var79, org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor=var3377, r2=var488, $z0=var2747, org.hibernate.graph.CannotContainSubGraphException=var383, $r12=var787, java.util.Locale=var2037, $r5=var720, java.lang.Object=var995, $r4=var1911, $r6=var2914, $r7=var848, javax.persistence.metamodel.Attribute$PersistentAttributeType=var3032, $r8=var1251, $r9=var2841, $r10=var6, java.lang.Throwable=var2695, $r13=var2090}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.graph.internal.AttributeNodeImpl;	$r1 = virtualinvoke r0.<org.hibernate.graph.internal.AttributeNodeImpl: org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor getAttributeDescriptor()>();	r2 = interfaceinvoke $r1.<org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor: org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor getValueGraphType()>();	$z0 = r2 instanceof org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor;	if $z0 == 0 goto $r12 = new org.hibernate.graph.CannotContainSubGraphException;	$r12 = new org.hibernate.graph.CannotContainSubGraphException;	$r5 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = newarray (java.lang.Object)[2];	$r6 = virtualinvoke r0.<org.hibernate.graph.internal.AttributeNodeImpl: java.lang.String getAttributeName()>();	$r4[0] = $r6;	$r7 = virtualinvoke r0.<org.hibernate.graph.internal.AttributeNodeImpl: org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor getAttributeDescriptor()>();	$r8 = interfaceinvoke $r7.<org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor: javax.persistence.metamodel.Attribute$PersistentAttributeType getPersistentAttributeType()>();	$r9 = virtualinvoke $r8.<javax.persistence.metamodel.Attribute$PersistentAttributeType: java.lang.String name()>();	$r4[1] = $r9;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Attribute [%s] (%s) cannot contain value sub-graphs", $r4);	specialinvoke $r12.<org.hibernate.graph.CannotContainSubGraphException: void <init>(java.lang.String)>($r10);	$r13 = (java.lang.Throwable) $r12;	throw $r13
;block_num 2
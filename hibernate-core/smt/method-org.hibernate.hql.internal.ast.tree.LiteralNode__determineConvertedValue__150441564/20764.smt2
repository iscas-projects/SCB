(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1827 0)
(declare-sort var3958 0)
(declare-sort var3746 0)
(declare-sort var3111 0)
(declare-sort var2476 0)
(declare-sort var1197 0)
(declare-sort var798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDataType/930127954 (var1827) var3111)
(declare-fun var3111_getReturnedClass/-1468116676 (var3111) ClassObject)
(declare-fun getModelType/-951570504 (var3958) ClassObject)
(declare-fun equals/-1650223740 (var3746 var3746) Bool)
(declare-fun cast-from-ClassObject-to-var3746 (ClassObject) var3746)
(declare-fun getJdbcType/-1098984086 (var3958) ClassObject)
(declare-fun var2476-init () var2476)
(declare-fun arr-var3746-init () (Array Int var3746))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var3746 (String) var3746)
(declare-fun String_format/-647569892 (var1197 String (Array Int var3746)) String)
(declare-fun <init>/-1391884909 (var2476 String) void)
(declare-fun cast-from-var2476-to-var798 (var2476) var798)
(declare-const null-var1827 var1827)
(declare-const null-var3958 var3958)
(declare-const null-var3746 var3746)
(declare-const var1197-ROOT var1197)
(declare-const null-__Array__Int__var3746__ (Array Int var3746))
(declare-const var166 var1827) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.LiteralNode 
(assert (not (= var166 null-var1827)))
(declare-const var3005 var3958) ; Statement: r2 := @parameter0: org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter 
(assert (not (= var3005 null-var3958)))
(declare-const var797 var3746) ; Statement: r19 := @parameter1: java.lang.Object 
(assert (not (= var797 null-var3746)))
(assert true)
(define-const var3831 var3111 (getDataType/930127954 var166)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: org.hibernate.type.Type getDataType()>() 
(define-const var45 ClassObject (var3111_getReturnedClass/-1468116676 var3831)) ; Statement: $r4 = interfaceinvoke $r1.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>() 
(assert true)
(define-const var3208 ClassObject (getModelType/-951570504 var3005)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class getModelType()>() 
(assert true)
(define-const var1497 Bool (equals/-1650223740 (cast-from-ClassObject-to-var3746 var45) (cast-from-ClassObject-to-var3746 var3208))) ; Statement: $z0 = virtualinvoke $r4.<java.lang.Object: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: org.hibernate.type.Type getDataType()>() 
(assert (= (ite var1497 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2651 var3111 (getDataType/930127954 var166)) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: org.hibernate.type.Type getDataType()>() 
(define-const var2503 ClassObject (var3111_getReturnedClass/-1468116676 var2651)) ; Statement: $r7 = interfaceinvoke $r5.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>() 
(assert true)
(define-const var1257 ClassObject (getJdbcType/-1098984086 var3005)) ; Statement: $r6 = virtualinvoke r2.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class getJdbcType()>() 
(assert true)
(define-const var1649 Bool (equals/-1650223740 (cast-from-ClassObject-to-var3746 var2503) (cast-from-ClassObject-to-var3746 var1257))) ; Statement: $z1 = virtualinvoke $r7.<java.lang.Object: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z1 == 0 goto $r39 = new org.hibernate.QueryException 
(assert (= (ite var1649 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1003 var2476 var2476-init) ; Statement: $r39 = new org.hibernate.QueryException 
(define-const var3247 var1197 var1197-ROOT) ; Statement: $r10 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var727 (Array Int var3746) arr-var3746-init) ; Statement: $r9 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var1137 ClassObject (getModelType/-951570504 var3005)) ; Statement: $r11 = virtualinvoke r2.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class getModelType()>() 
(assert true)
(define-const var3857 String (getName/-1958580599 var1137)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>() 
(declare-const var727!1 (Array Int var3746))
(assert (not (= var727!1 null-__Array__Int__var3746__)))
(assert (= (select var727!1 0) (cast-from-String-to-var3746 var3857))) ; Statement: $r9[0] = $r12 
(assert true)
(define-const var3811 ClassObject (getJdbcType/-1098984086 var3005)) ; Statement: $r13 = virtualinvoke r2.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class getJdbcType()>() 
(assert true)
(define-const var674 String (getName/-1958580599 var3811)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>() 
(declare-const var727!2 (Array Int var3746))
(assert (not (= var727!2 null-__Array__Int__var3746__)))
(assert (= (select var727!2 1) (cast-from-String-to-var3746 var674))) ; Statement: $r9[1] = $r14 
(assert true)
(define-const var1210 var3111 (getDataType/930127954 var166)) ; Statement: $r15 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: org.hibernate.type.Type getDataType()>() 
(define-const var3625 ClassObject (var3111_getReturnedClass/-1468116676 var1210)) ; Statement: $r16 = interfaceinvoke $r15.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>() 
(assert true)
(define-const var349 String (getName/-1958580599 var3625)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>() 
(declare-const var727!3 (Array Int var3746))
(assert (not (= var727!3 null-__Array__Int__var3746__)))
(assert (= (select var727!3 2) (cast-from-String-to-var3746 var349))) ; Statement: $r9[2] = $r17 
(define-const var3274 String (String_format/-647569892 var3247 "AttributeConverter domain-model attribute type [%s] and JDBC type [%s] did not match query literal type [%s]" var727!3)) ; Statement: $r18 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r10, "AttributeConverter domain-model attribute type [%s] and JDBC type [%s] did not match query literal type [%s]", $r9) 
(assert true)
;(assert (<init>/-1391884909 var1003 var3274)) ; Statement: specialinvoke $r39.<org.hibernate.QueryException: void <init>(java.lang.String)>($r18) 

(declare-const var1003!1 var2476)
(declare-const var3274!1 String)
(define-const var1602 var798 (cast-from-var2476-to-var798 var1003!1)) ; Statement: $r40 = (java.lang.Throwable) $r39 
 ; Statement: throw $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {getDataType/930127954=([org.hibernate.hql.internal.ast.tree.LiteralNode], org.hibernate.type.Type), var3111_getReturnedClass/-1468116676=([org.hibernate.type.Type], java.lang.Class), getModelType/-951570504=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], java.lang.Class), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var3746=([java.lang.Class], java.lang.Object), getJdbcType/-1098984086=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], java.lang.Class), var2476-init=([], org.hibernate.QueryException), arr-var3746-init=([], java.lang.Object[]), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var3746=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var2476-to-var798=([org.hibernate.QueryException], java.lang.Throwable)}
; {var1827=org.hibernate.hql.internal.ast.tree.LiteralNode, var166=r0, var3958=org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter, var3005=r2, var3746=java.lang.Object, var797=r19, var3111=org.hibernate.type.Type, var3831=$r1, var45=$r4, var3208=$r3, var1497=$z0, var2651=$r5, var2503=$r7, var1257=$r6, var1649=$z1, var2476=org.hibernate.QueryException, var1003=$r39, var1197=java.util.Locale, var3247=$r10, var727=$r9, var1137=$r11, var3857=$r12, var3811=$r13, var674=$r14, var1210=$r15, var3625=$r16, var349=$r17, var3274=$r18, var798=java.lang.Throwable, var1602=$r40}
; {org.hibernate.hql.internal.ast.tree.LiteralNode=var1827, r0=var166, org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter=var3958, r2=var3005, java.lang.Object=var3746, r19=var797, org.hibernate.type.Type=var3111, $r1=var3831, $r4=var45, $r3=var3208, $z0=var1497, $r5=var2651, $r7=var2503, $r6=var1257, $z1=var1649, org.hibernate.QueryException=var2476, $r39=var1003, java.util.Locale=var1197, $r10=var3247, $r9=var727, $r11=var1137, $r12=var3857, $r13=var3811, $r14=var674, $r15=var1210, $r16=var3625, $r17=var349, $r18=var3274, java.lang.Throwable=var798, $r40=var1602}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.LiteralNode;	r2 := @parameter0: org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter;	r19 := @parameter1: java.lang.Object;	$r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: org.hibernate.type.Type getDataType()>();	$r4 = interfaceinvoke $r1.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>();	$r3 = virtualinvoke r2.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class getModelType()>();	$z0 = virtualinvoke $r4.<java.lang.Object: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto $r5 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: org.hibernate.type.Type getDataType()>();	$r5 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: org.hibernate.type.Type getDataType()>();	$r7 = interfaceinvoke $r5.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>();	$r6 = virtualinvoke r2.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class getJdbcType()>();	$z1 = virtualinvoke $r7.<java.lang.Object: boolean equals(java.lang.Object)>($r6);	if $z1 == 0 goto $r39 = new org.hibernate.QueryException;	$r39 = new org.hibernate.QueryException;	$r10 = <java.util.Locale: java.util.Locale ROOT>;	$r9 = newarray (java.lang.Object)[3];	$r11 = virtualinvoke r2.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class getModelType()>();	$r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>();	$r9[0] = $r12;	$r13 = virtualinvoke r2.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class getJdbcType()>();	$r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>();	$r9[1] = $r14;	$r15 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: org.hibernate.type.Type getDataType()>();	$r16 = interfaceinvoke $r15.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>();	$r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>();	$r9[2] = $r17;	$r18 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r10, "AttributeConverter domain-model attribute type [%s] and JDBC type [%s] did not match query literal type [%s]", $r9);	specialinvoke $r39.<org.hibernate.QueryException: void <init>(java.lang.String)>($r18);	$r40 = (java.lang.Throwable) $r39;	throw $r40
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1680 0)
(declare-sort var2913 0)
(declare-sort var2272 0)
(declare-sort var1460 0)
(declare-sort var269 0)
(declare-sort var194 0)
(declare-sort var3931 0)
(declare-sort var18 0)
(declare-sort var2967 0)
(declare-sort var465 0)
(declare-sort var3468 0)
(declare-sort var1766 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2272_contains/-441121415 (var2272 var269) Bool)
(declare-fun cast-from-var1460-to-var269 (var1460) var269)
(declare-fun getStringAttribute/-798258666 (var2913 String) String)
(declare-fun var3931_bootstrap$/-533147551 (var1680 var2913 ClassObject) var194)
(declare-fun getStringAttribute/-517891316 (var2913 String var194) String)
(declare-fun configuration/-1217462027 (var2967) var18)
(declare-fun cast-from-var1680-to-var2967 (var1680) var2967)
(declare-fun isLazyLoadingEnabled/422830908 (var18) Bool)
(declare-fun getStringAttribute/2039987397 (var2913 String String) String)
(declare-fun resolveClass/1510055323 (var2967 String) ClassObject)
(declare-fun resolveJdbcType/1944180505 (var2967 String) var465)
(declare-fun builderAssistant/1141845807 (var1680) var3468)
(declare-fun buildResultMapping/1764039909 (var3468 ClassObject String String ClassObject var465 String String String String ClassObject var2272 String String Bool) var1766)
(declare-const null-var1680 var1680)
(declare-const null-var2913 var2913)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2272 var2272)
(declare-const var1460-CONSTRUCTOR var1460)
(declare-const var1342 var1680) ; Statement: r3 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder 
(assert (not (= var1342 null-var1680)))
(declare-const var2618 var2913) ; Statement: r2 := @parameter0: org.apache.ibatis.parsing.XNode 
(assert (not (= var2618 null-var2913)))
(declare-const var2742 ClassObject) ; Statement: r4 := @parameter1: java.lang.Class 
(assert (not (= var2742 null-ClassObject)))
(declare-const var2036 var2272) ; Statement: r0 := @parameter2: java.util.List 
(assert (not (= var2036 null-var2272)))
(define-const var497 var1460 var1460-CONSTRUCTOR) ; Statement: $r1 = <org.apache.ibatis.mapping.ResultFlag: org.apache.ibatis.mapping.ResultFlag CONSTRUCTOR> 
(define-const var3879 Bool (var2272_contains/-441121415 var2036 (cast-from-var1460-to-var269 var497))) ; Statement: $z0 = interfaceinvoke r0.<java.util.List: boolean contains(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("property") 
(assert (= (ite var3879 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var424 String (getStringAttribute/-798258666 var2618 "property")) ; Statement: r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("property") 
(assert true) ; Non Conditional
(assert true)
(define-const var3709 String (getStringAttribute/-798258666 var2618 "column")) ; Statement: $r14 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("column") 
(assert true)
(define-const var125 String (getStringAttribute/-798258666 var2618 "javaType")) ; Statement: $r15 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("javaType") 
(assert true)
(define-const var2805 String (getStringAttribute/-798258666 var2618 "jdbcType")) ; Statement: $r16 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("jdbcType") 
(assert true)
(define-const var509 String (getStringAttribute/-798258666 var2618 "select")) ; Statement: $r17 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("select") 
(define-const var1099 var194 (var3931_bootstrap$/-533147551 var1342 var2618 var2742)) ; Statement: $r5 = staticinvoke <org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14: java.util.function.Supplier bootstrap$(org.apache.ibatis.builder.xml.XMLMapperBuilder,org.apache.ibatis.parsing.XNode,java.lang.Class)>(r3, r2, r4) 
(assert true)
(define-const var585 String (getStringAttribute/-517891316 var2618 "resultMap" var1099)) ; Statement: $r18 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.util.function.Supplier)>("resultMap", $r5) 
(assert true)
(define-const var1648 String (getStringAttribute/-798258666 var2618 "notNullColumn")) ; Statement: $r19 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("notNullColumn") 
(assert true)
(define-const var378 String (getStringAttribute/-798258666 var2618 "columnPrefix")) ; Statement: $r20 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("columnPrefix") 
(assert true)
(define-const var2457 String (getStringAttribute/-798258666 var2618 "typeHandler")) ; Statement: $r21 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("typeHandler") 
(assert true)
(define-const var2540 String (getStringAttribute/-798258666 var2618 "resultSet")) ; Statement: $r22 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("resultSet") 
(assert true)
(define-const var569 String (getStringAttribute/-798258666 var2618 "foreignColumn")) ; Statement: $r23 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("foreignColumn") 
(define-const var1757 String "lazy") ; Statement: $r8 = "lazy" 
(define-const var107 var18 (configuration/-1217462027 (cast-from-var1680-to-var2967 var1342))) ; Statement: $r6 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var4 Bool (isLazyLoadingEnabled/422830908 var107)) ; Statement: $z1 = virtualinvoke $r6.<org.apache.ibatis.session.Configuration: boolean isLazyLoadingEnabled()>() 
 ; Statement: if $z1 == 0 goto $r25 = "eager" 
(assert (= (ite var4 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2847 String "eager") ; Statement: $r25 = "eager" 
(assert true) ; Non Conditional
(assert true)
(define-const var1138 String (getStringAttribute/2039987397 var2618 "fetchType" var2847)) ; Statement: $r7 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("fetchType", $r25) 
(assert true)
(define-const var3185 Bool (= var1757 var1138)) ; Statement: $z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
(assert true)
(define-const var52 ClassObject (resolveClass/1510055323 (cast-from-var1680-to-var2967 var1342) var125)) ; Statement: $r11 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r15) 
(assert true)
(define-const var2375 ClassObject (resolveClass/1510055323 (cast-from-var1680-to-var2967 var1342) var2457)) ; Statement: $r12 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r21) 
(assert true)
(define-const var1624 var465 (resolveJdbcType/1944180505 (cast-from-var1680-to-var2967 var1342) var2805)) ; Statement: $r13 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.type.JdbcType resolveJdbcType(java.lang.String)>($r16) 
(define-const var885 var3468 (builderAssistant/1141845807 var1342)) ; Statement: $r9 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant> 
(assert true)
(define-const var1647 var1766 (buildResultMapping/1764039909 var885 var2742 var424 var3709 var52 var1624 var509 var585 var1648 var378 var2375 var2036 var2540 var569 var3185)) ; Statement: $r10 = virtualinvoke $r9.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.ResultMapping buildResultMapping(java.lang.Class,java.lang.String,java.lang.String,java.lang.Class,org.apache.ibatis.type.JdbcType,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.Class,java.util.List,java.lang.String,java.lang.String,boolean)>(r4, r24, $r14, $r11, $r13, $r17, $r18, $r19, $r20, $r12, r0, $r22, $r23, $z2) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2272_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-var1460-to-var269=([org.apache.ibatis.mapping.ResultFlag], java.lang.Object), getStringAttribute/-798258666=([org.apache.ibatis.parsing.XNode, java.lang.String], java.lang.String), var3931_bootstrap$/-533147551=([org.apache.ibatis.builder.xml.XMLMapperBuilder, org.apache.ibatis.parsing.XNode, java.lang.Class], java.util.function.Supplier), getStringAttribute/-517891316=([org.apache.ibatis.parsing.XNode, java.lang.String, java.util.function.Supplier], java.lang.String), configuration/-1217462027=([org.apache.ibatis.builder.BaseBuilder], org.apache.ibatis.session.Configuration), cast-from-var1680-to-var2967=([org.apache.ibatis.builder.xml.XMLMapperBuilder], org.apache.ibatis.builder.BaseBuilder), isLazyLoadingEnabled/422830908=([org.apache.ibatis.session.Configuration], boolean), getStringAttribute/2039987397=([org.apache.ibatis.parsing.XNode, java.lang.String, java.lang.String], java.lang.String), resolveClass/1510055323=([org.apache.ibatis.builder.BaseBuilder, java.lang.String], java.lang.Class), resolveJdbcType/1944180505=([org.apache.ibatis.builder.BaseBuilder, java.lang.String], org.apache.ibatis.type.JdbcType), builderAssistant/1141845807=([org.apache.ibatis.builder.xml.XMLMapperBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), buildResultMapping/1764039909=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.Class, java.lang.String, java.lang.String, java.lang.Class, org.apache.ibatis.type.JdbcType, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.Class, java.util.List, java.lang.String, java.lang.String, boolean], org.apache.ibatis.mapping.ResultMapping)}
; {var1680=org.apache.ibatis.builder.xml.XMLMapperBuilder, var1342=r3, var2913=org.apache.ibatis.parsing.XNode, var2618=r2, var2742=r4, var2272=java.util.List, var2036=r0, var1460=org.apache.ibatis.mapping.ResultFlag, var497=$r1, var269=java.lang.Object, var3879=$z0, var424=r24, var3709=$r14, var125=$r15, var2805=$r16, var509=$r17, var194=java.util.function.Supplier, var3931=org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14, var1099=$r5, var585=$r18, var1648=$r19, var378=$r20, var2457=$r21, var2540=$r22, var569=$r23, var1757=$r8, var18=org.apache.ibatis.session.Configuration, var2967=org.apache.ibatis.builder.BaseBuilder, var107=$r6, var4=$z1, var2847=$r25, var1138=$r7, var3185=$z2, var52=$r11, var2375=$r12, var465=org.apache.ibatis.type.JdbcType, var1624=$r13, var3468=org.apache.ibatis.builder.MapperBuilderAssistant, var885=$r9, var1766=org.apache.ibatis.mapping.ResultMapping, var1647=$r10}
; {org.apache.ibatis.builder.xml.XMLMapperBuilder=var1680, r3=var1342, org.apache.ibatis.parsing.XNode=var2913, r2=var2618, r4=var2742, java.util.List=var2272, r0=var2036, org.apache.ibatis.mapping.ResultFlag=var1460, $r1=var497, java.lang.Object=var269, $z0=var3879, r24=var424, $r14=var3709, $r15=var125, $r16=var2805, $r17=var509, java.util.function.Supplier=var194, org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14=var3931, $r5=var1099, $r18=var585, $r19=var1648, $r20=var378, $r21=var2457, $r22=var2540, $r23=var569, $r8=var1757, org.apache.ibatis.session.Configuration=var18, org.apache.ibatis.builder.BaseBuilder=var2967, $r6=var107, $z1=var4, $r25=var2847, $r7=var1138, $z2=var3185, $r11=var52, $r12=var2375, org.apache.ibatis.type.JdbcType=var465, $r13=var1624, org.apache.ibatis.builder.MapperBuilderAssistant=var3468, $r9=var885, org.apache.ibatis.mapping.ResultMapping=var1766, $r10=var1647}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder;	r2 := @parameter0: org.apache.ibatis.parsing.XNode;	r4 := @parameter1: java.lang.Class;	r0 := @parameter2: java.util.List;	$r1 = <org.apache.ibatis.mapping.ResultFlag: org.apache.ibatis.mapping.ResultFlag CONSTRUCTOR>;	$z0 = interfaceinvoke r0.<java.util.List: boolean contains(java.lang.Object)>($r1);	if $z0 == 0 goto r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("property");	r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("property");	$r14 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("column");	$r15 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("javaType");	$r16 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("jdbcType");	$r17 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("select");	$r5 = staticinvoke <org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14: java.util.function.Supplier bootstrap$(org.apache.ibatis.builder.xml.XMLMapperBuilder,org.apache.ibatis.parsing.XNode,java.lang.Class)>(r3, r2, r4);	$r18 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.util.function.Supplier)>("resultMap", $r5);	$r19 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("notNullColumn");	$r20 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("columnPrefix");	$r21 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("typeHandler");	$r22 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("resultSet");	$r23 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("foreignColumn");	$r8 = "lazy";	$r6 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.session.Configuration configuration>;	$z1 = virtualinvoke $r6.<org.apache.ibatis.session.Configuration: boolean isLazyLoadingEnabled()>();	if $z1 == 0 goto $r25 = "eager";	$r25 = "eager";	$r7 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("fetchType", $r25);	$z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7);	$r11 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r15);	$r12 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r21);	$r13 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.type.JdbcType resolveJdbcType(java.lang.String)>($r16);	$r9 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant>;	$r10 = virtualinvoke $r9.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.ResultMapping buildResultMapping(java.lang.Class,java.lang.String,java.lang.String,java.lang.Class,org.apache.ibatis.type.JdbcType,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.Class,java.util.List,java.lang.String,java.lang.String,boolean)>(r4, r24, $r14, $r11, $r13, $r17, $r18, $r19, $r20, $r12, r0, $r22, $r23, $z2);	return $r10
;block_num 5
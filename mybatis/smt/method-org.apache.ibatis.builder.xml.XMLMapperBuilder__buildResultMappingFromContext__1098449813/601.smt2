(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1435 0)
(declare-sort var3656 0)
(declare-sort var3345 0)
(declare-sort var2869 0)
(declare-sort var1444 0)
(declare-sort var1604 0)
(declare-sort var3889 0)
(declare-sort var38 0)
(declare-sort var1651 0)
(declare-sort var657 0)
(declare-sort var3393 0)
(declare-sort var2005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3345_contains/-441121415 (var3345 var1444) Bool)
(declare-fun cast-from-var2869-to-var1444 (var2869) var1444)
(declare-fun getStringAttribute/-798258666 (var3656 String) String)
(declare-fun var3889_bootstrap$/-533147551 (var1435 var3656 ClassObject) var1604)
(declare-fun getStringAttribute/-517891316 (var3656 String var1604) String)
(declare-fun configuration/-1217462027 (var1651) var38)
(declare-fun cast-from-var1435-to-var1651 (var1435) var1651)
(declare-fun isLazyLoadingEnabled/422830908 (var38) Bool)
(declare-fun getStringAttribute/2039987397 (var3656 String String) String)
(declare-fun resolveClass/1510055323 (var1651 String) ClassObject)
(declare-fun resolveJdbcType/1944180505 (var1651 String) var657)
(declare-fun builderAssistant/1141845807 (var1435) var3393)
(declare-fun buildResultMapping/1764039909 (var3393 ClassObject String String ClassObject var657 String String String String ClassObject var3345 String String Bool) var2005)
(declare-const null-var1435 var1435)
(declare-const null-var3656 var3656)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3345 var3345)
(declare-const var2869-CONSTRUCTOR var2869)
(declare-const var2756 var1435) ; Statement: r3 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder 
(assert (not (= var2756 null-var1435)))
(declare-const var2658 var3656) ; Statement: r2 := @parameter0: org.apache.ibatis.parsing.XNode 
(assert (not (= var2658 null-var3656)))
(declare-const var2966 ClassObject) ; Statement: r4 := @parameter1: java.lang.Class 
(assert (not (= var2966 null-ClassObject)))
(declare-const var2123 var3345) ; Statement: r0 := @parameter2: java.util.List 
(assert (not (= var2123 null-var3345)))
(define-const var42 var2869 var2869-CONSTRUCTOR) ; Statement: $r1 = <org.apache.ibatis.mapping.ResultFlag: org.apache.ibatis.mapping.ResultFlag CONSTRUCTOR> 
(define-const var224 Bool (var3345_contains/-441121415 var2123 (cast-from-var2869-to-var1444 var42))) ; Statement: $z0 = interfaceinvoke r0.<java.util.List: boolean contains(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("property") 
(assert (= (ite var224 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1851 String (getStringAttribute/-798258666 var2658 "property")) ; Statement: r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("property") 
(assert true) ; Non Conditional
(assert true)
(define-const var205 String (getStringAttribute/-798258666 var2658 "column")) ; Statement: $r14 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("column") 
(assert true)
(define-const var2822 String (getStringAttribute/-798258666 var2658 "javaType")) ; Statement: $r15 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("javaType") 
(assert true)
(define-const var2283 String (getStringAttribute/-798258666 var2658 "jdbcType")) ; Statement: $r16 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("jdbcType") 
(assert true)
(define-const var3642 String (getStringAttribute/-798258666 var2658 "select")) ; Statement: $r17 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("select") 
(define-const var2256 var1604 (var3889_bootstrap$/-533147551 var2756 var2658 var2966)) ; Statement: $r5 = staticinvoke <org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14: java.util.function.Supplier bootstrap$(org.apache.ibatis.builder.xml.XMLMapperBuilder,org.apache.ibatis.parsing.XNode,java.lang.Class)>(r3, r2, r4) 
(assert true)
(define-const var3962 String (getStringAttribute/-517891316 var2658 "resultMap" var2256)) ; Statement: $r18 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.util.function.Supplier)>("resultMap", $r5) 
(assert true)
(define-const var380 String (getStringAttribute/-798258666 var2658 "notNullColumn")) ; Statement: $r19 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("notNullColumn") 
(assert true)
(define-const var491 String (getStringAttribute/-798258666 var2658 "columnPrefix")) ; Statement: $r20 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("columnPrefix") 
(assert true)
(define-const var414 String (getStringAttribute/-798258666 var2658 "typeHandler")) ; Statement: $r21 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("typeHandler") 
(assert true)
(define-const var1494 String (getStringAttribute/-798258666 var2658 "resultSet")) ; Statement: $r22 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("resultSet") 
(assert true)
(define-const var508 String (getStringAttribute/-798258666 var2658 "foreignColumn")) ; Statement: $r23 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("foreignColumn") 
(define-const var16 String "lazy") ; Statement: $r8 = "lazy" 
(define-const var3185 var38 (configuration/-1217462027 (cast-from-var1435-to-var1651 var2756))) ; Statement: $r6 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var3790 Bool (isLazyLoadingEnabled/422830908 var3185)) ; Statement: $z1 = virtualinvoke $r6.<org.apache.ibatis.session.Configuration: boolean isLazyLoadingEnabled()>() 
 ; Statement: if $z1 == 0 goto $r25 = "eager" 
(assert (not (= (ite var3790 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var957 String "lazy") ; Statement: $r25 = "lazy" 
 ; Statement: goto [?= $r7 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("fetchType", $r25)] 
(assert true) ; Non Conditional
(assert true)
(define-const var425 String (getStringAttribute/2039987397 var2658 "fetchType" var957)) ; Statement: $r7 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("fetchType", $r25) 
(assert true)
(define-const var179 Bool (= var16 var425)) ; Statement: $z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
(assert true)
(define-const var956 ClassObject (resolveClass/1510055323 (cast-from-var1435-to-var1651 var2756) var2822)) ; Statement: $r11 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r15) 
(assert true)
(define-const var2220 ClassObject (resolveClass/1510055323 (cast-from-var1435-to-var1651 var2756) var414)) ; Statement: $r12 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r21) 
(assert true)
(define-const var3998 var657 (resolveJdbcType/1944180505 (cast-from-var1435-to-var1651 var2756) var2283)) ; Statement: $r13 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.type.JdbcType resolveJdbcType(java.lang.String)>($r16) 
(define-const var600 var3393 (builderAssistant/1141845807 var2756)) ; Statement: $r9 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant> 
(assert true)
(define-const var1294 var2005 (buildResultMapping/1764039909 var600 var2966 var1851 var205 var956 var3998 var3642 var3962 var380 var491 var2220 var2123 var1494 var508 var179)) ; Statement: $r10 = virtualinvoke $r9.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.ResultMapping buildResultMapping(java.lang.Class,java.lang.String,java.lang.String,java.lang.Class,org.apache.ibatis.type.JdbcType,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.Class,java.util.List,java.lang.String,java.lang.String,boolean)>(r4, r24, $r14, $r11, $r13, $r17, $r18, $r19, $r20, $r12, r0, $r22, $r23, $z2) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3345_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-var2869-to-var1444=([org.apache.ibatis.mapping.ResultFlag], java.lang.Object), getStringAttribute/-798258666=([org.apache.ibatis.parsing.XNode, java.lang.String], java.lang.String), var3889_bootstrap$/-533147551=([org.apache.ibatis.builder.xml.XMLMapperBuilder, org.apache.ibatis.parsing.XNode, java.lang.Class], java.util.function.Supplier), getStringAttribute/-517891316=([org.apache.ibatis.parsing.XNode, java.lang.String, java.util.function.Supplier], java.lang.String), configuration/-1217462027=([org.apache.ibatis.builder.BaseBuilder], org.apache.ibatis.session.Configuration), cast-from-var1435-to-var1651=([org.apache.ibatis.builder.xml.XMLMapperBuilder], org.apache.ibatis.builder.BaseBuilder), isLazyLoadingEnabled/422830908=([org.apache.ibatis.session.Configuration], boolean), getStringAttribute/2039987397=([org.apache.ibatis.parsing.XNode, java.lang.String, java.lang.String], java.lang.String), resolveClass/1510055323=([org.apache.ibatis.builder.BaseBuilder, java.lang.String], java.lang.Class), resolveJdbcType/1944180505=([org.apache.ibatis.builder.BaseBuilder, java.lang.String], org.apache.ibatis.type.JdbcType), builderAssistant/1141845807=([org.apache.ibatis.builder.xml.XMLMapperBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), buildResultMapping/1764039909=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.Class, java.lang.String, java.lang.String, java.lang.Class, org.apache.ibatis.type.JdbcType, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.Class, java.util.List, java.lang.String, java.lang.String, boolean], org.apache.ibatis.mapping.ResultMapping)}
; {var1435=org.apache.ibatis.builder.xml.XMLMapperBuilder, var2756=r3, var3656=org.apache.ibatis.parsing.XNode, var2658=r2, var2966=r4, var3345=java.util.List, var2123=r0, var2869=org.apache.ibatis.mapping.ResultFlag, var42=$r1, var1444=java.lang.Object, var224=$z0, var1851=r24, var205=$r14, var2822=$r15, var2283=$r16, var3642=$r17, var1604=java.util.function.Supplier, var3889=org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14, var2256=$r5, var3962=$r18, var380=$r19, var491=$r20, var414=$r21, var1494=$r22, var508=$r23, var16=$r8, var38=org.apache.ibatis.session.Configuration, var1651=org.apache.ibatis.builder.BaseBuilder, var3185=$r6, var3790=$z1, var957=$r25, var425=$r7, var179=$z2, var956=$r11, var2220=$r12, var657=org.apache.ibatis.type.JdbcType, var3998=$r13, var3393=org.apache.ibatis.builder.MapperBuilderAssistant, var600=$r9, var2005=org.apache.ibatis.mapping.ResultMapping, var1294=$r10}
; {org.apache.ibatis.builder.xml.XMLMapperBuilder=var1435, r3=var2756, org.apache.ibatis.parsing.XNode=var3656, r2=var2658, r4=var2966, java.util.List=var3345, r0=var2123, org.apache.ibatis.mapping.ResultFlag=var2869, $r1=var42, java.lang.Object=var1444, $z0=var224, r24=var1851, $r14=var205, $r15=var2822, $r16=var2283, $r17=var3642, java.util.function.Supplier=var1604, org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14=var3889, $r5=var2256, $r18=var3962, $r19=var380, $r20=var491, $r21=var414, $r22=var1494, $r23=var508, $r8=var16, org.apache.ibatis.session.Configuration=var38, org.apache.ibatis.builder.BaseBuilder=var1651, $r6=var3185, $z1=var3790, $r25=var957, $r7=var425, $z2=var179, $r11=var956, $r12=var2220, org.apache.ibatis.type.JdbcType=var657, $r13=var3998, org.apache.ibatis.builder.MapperBuilderAssistant=var3393, $r9=var600, org.apache.ibatis.mapping.ResultMapping=var2005, $r10=var1294}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder;	r2 := @parameter0: org.apache.ibatis.parsing.XNode;	r4 := @parameter1: java.lang.Class;	r0 := @parameter2: java.util.List;	$r1 = <org.apache.ibatis.mapping.ResultFlag: org.apache.ibatis.mapping.ResultFlag CONSTRUCTOR>;	$z0 = interfaceinvoke r0.<java.util.List: boolean contains(java.lang.Object)>($r1);	if $z0 == 0 goto r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("property");	r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("property");	$r14 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("column");	$r15 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("javaType");	$r16 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("jdbcType");	$r17 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("select");	$r5 = staticinvoke <org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14: java.util.function.Supplier bootstrap$(org.apache.ibatis.builder.xml.XMLMapperBuilder,org.apache.ibatis.parsing.XNode,java.lang.Class)>(r3, r2, r4);	$r18 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.util.function.Supplier)>("resultMap", $r5);	$r19 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("notNullColumn");	$r20 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("columnPrefix");	$r21 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("typeHandler");	$r22 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("resultSet");	$r23 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("foreignColumn");	$r8 = "lazy";	$r6 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.session.Configuration configuration>;	$z1 = virtualinvoke $r6.<org.apache.ibatis.session.Configuration: boolean isLazyLoadingEnabled()>();	if $z1 == 0 goto $r25 = "eager";	$r25 = "lazy";	goto [?= $r7 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("fetchType", $r25)];	$r7 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("fetchType", $r25);	$z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7);	$r11 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r15);	$r12 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r21);	$r13 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.type.JdbcType resolveJdbcType(java.lang.String)>($r16);	$r9 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant>;	$r10 = virtualinvoke $r9.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.ResultMapping buildResultMapping(java.lang.Class,java.lang.String,java.lang.String,java.lang.Class,org.apache.ibatis.type.JdbcType,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.Class,java.util.List,java.lang.String,java.lang.String,boolean)>(r4, r24, $r14, $r11, $r13, $r17, $r18, $r19, $r20, $r12, r0, $r22, $r23, $z2);	return $r10
;block_num 5
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var920 0)
(declare-sort var1518 0)
(declare-sort var1979 0)
(declare-sort var420 0)
(declare-sort var1235 0)
(declare-sort var2020 0)
(declare-sort var2835 0)
(declare-sort var3801 0)
(declare-sort var2234 0)
(declare-sort var3207 0)
(declare-sort var2728 0)
(declare-sort var2430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1979_contains/-441121415 (var1979 var1235) Bool)
(declare-fun cast-from-var420-to-var1235 (var420) var1235)
(declare-fun getStringAttribute/-798258666 (var1518 String) String)
(declare-fun var2835_bootstrap$/-533147551 (var920 var1518 ClassObject) var2020)
(declare-fun getStringAttribute/-517891316 (var1518 String var2020) String)
(declare-fun configuration/-1217462027 (var2234) var3801)
(declare-fun cast-from-var920-to-var2234 (var920) var2234)
(declare-fun isLazyLoadingEnabled/422830908 (var3801) Bool)
(declare-fun getStringAttribute/2039987397 (var1518 String String) String)
(declare-fun resolveClass/1510055323 (var2234 String) ClassObject)
(declare-fun resolveJdbcType/1944180505 (var2234 String) var3207)
(declare-fun builderAssistant/1141845807 (var920) var2728)
(declare-fun buildResultMapping/1764039909 (var2728 ClassObject String String ClassObject var3207 String String String String ClassObject var1979 String String Bool) var2430)
(declare-const null-var920 var920)
(declare-const null-var1518 var1518)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1979 var1979)
(declare-const var420-CONSTRUCTOR var420)
(declare-const var2725 var920) ; Statement: r3 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder 
(assert (not (= var2725 null-var920)))
(declare-const var3959 var1518) ; Statement: r2 := @parameter0: org.apache.ibatis.parsing.XNode 
(assert (not (= var3959 null-var1518)))
(declare-const var1050 ClassObject) ; Statement: r4 := @parameter1: java.lang.Class 
(assert (not (= var1050 null-ClassObject)))
(declare-const var2387 var1979) ; Statement: r0 := @parameter2: java.util.List 
(assert (not (= var2387 null-var1979)))
(define-const var798 var420 var420-CONSTRUCTOR) ; Statement: $r1 = <org.apache.ibatis.mapping.ResultFlag: org.apache.ibatis.mapping.ResultFlag CONSTRUCTOR> 
(define-const var1383 Bool (var1979_contains/-441121415 var2387 (cast-from-var420-to-var1235 var798))) ; Statement: $z0 = interfaceinvoke r0.<java.util.List: boolean contains(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("property") 
(assert (not (= (ite var1383 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var569 String (getStringAttribute/-798258666 var3959 "name")) ; Statement: r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("name") 
 ; Statement: goto [?= $r14 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("column")] 
(assert true) ; Non Conditional
(assert true)
(define-const var961 String (getStringAttribute/-798258666 var3959 "column")) ; Statement: $r14 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("column") 
(assert true)
(define-const var3635 String (getStringAttribute/-798258666 var3959 "javaType")) ; Statement: $r15 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("javaType") 
(assert true)
(define-const var1542 String (getStringAttribute/-798258666 var3959 "jdbcType")) ; Statement: $r16 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("jdbcType") 
(assert true)
(define-const var2390 String (getStringAttribute/-798258666 var3959 "select")) ; Statement: $r17 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("select") 
(define-const var1060 var2020 (var2835_bootstrap$/-533147551 var2725 var3959 var1050)) ; Statement: $r5 = staticinvoke <org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14: java.util.function.Supplier bootstrap$(org.apache.ibatis.builder.xml.XMLMapperBuilder,org.apache.ibatis.parsing.XNode,java.lang.Class)>(r3, r2, r4) 
(assert true)
(define-const var519 String (getStringAttribute/-517891316 var3959 "resultMap" var1060)) ; Statement: $r18 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.util.function.Supplier)>("resultMap", $r5) 
(assert true)
(define-const var1064 String (getStringAttribute/-798258666 var3959 "notNullColumn")) ; Statement: $r19 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("notNullColumn") 
(assert true)
(define-const var462 String (getStringAttribute/-798258666 var3959 "columnPrefix")) ; Statement: $r20 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("columnPrefix") 
(assert true)
(define-const var1543 String (getStringAttribute/-798258666 var3959 "typeHandler")) ; Statement: $r21 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("typeHandler") 
(assert true)
(define-const var490 String (getStringAttribute/-798258666 var3959 "resultSet")) ; Statement: $r22 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("resultSet") 
(assert true)
(define-const var1904 String (getStringAttribute/-798258666 var3959 "foreignColumn")) ; Statement: $r23 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("foreignColumn") 
(define-const var3248 String "lazy") ; Statement: $r8 = "lazy" 
(define-const var3618 var3801 (configuration/-1217462027 (cast-from-var920-to-var2234 var2725))) ; Statement: $r6 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var573 Bool (isLazyLoadingEnabled/422830908 var3618)) ; Statement: $z1 = virtualinvoke $r6.<org.apache.ibatis.session.Configuration: boolean isLazyLoadingEnabled()>() 
 ; Statement: if $z1 == 0 goto $r25 = "eager" 
(assert (not (= (ite var573 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3600 String "lazy") ; Statement: $r25 = "lazy" 
 ; Statement: goto [?= $r7 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("fetchType", $r25)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1467 String (getStringAttribute/2039987397 var3959 "fetchType" var3600)) ; Statement: $r7 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("fetchType", $r25) 
(assert true)
(define-const var1653 Bool (= var3248 var1467)) ; Statement: $z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
(assert true)
(define-const var703 ClassObject (resolveClass/1510055323 (cast-from-var920-to-var2234 var2725) var3635)) ; Statement: $r11 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r15) 
(assert true)
(define-const var2293 ClassObject (resolveClass/1510055323 (cast-from-var920-to-var2234 var2725) var1543)) ; Statement: $r12 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r21) 
(assert true)
(define-const var684 var3207 (resolveJdbcType/1944180505 (cast-from-var920-to-var2234 var2725) var1542)) ; Statement: $r13 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.type.JdbcType resolveJdbcType(java.lang.String)>($r16) 
(define-const var3794 var2728 (builderAssistant/1141845807 var2725)) ; Statement: $r9 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant> 
(assert true)
(define-const var3542 var2430 (buildResultMapping/1764039909 var3794 var1050 var569 var961 var703 var684 var2390 var519 var1064 var462 var2293 var2387 var490 var1904 var1653)) ; Statement: $r10 = virtualinvoke $r9.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.ResultMapping buildResultMapping(java.lang.Class,java.lang.String,java.lang.String,java.lang.Class,org.apache.ibatis.type.JdbcType,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.Class,java.util.List,java.lang.String,java.lang.String,boolean)>(r4, r24, $r14, $r11, $r13, $r17, $r18, $r19, $r20, $r12, r0, $r22, $r23, $z2) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1979_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-var420-to-var1235=([org.apache.ibatis.mapping.ResultFlag], java.lang.Object), getStringAttribute/-798258666=([org.apache.ibatis.parsing.XNode, java.lang.String], java.lang.String), var2835_bootstrap$/-533147551=([org.apache.ibatis.builder.xml.XMLMapperBuilder, org.apache.ibatis.parsing.XNode, java.lang.Class], java.util.function.Supplier), getStringAttribute/-517891316=([org.apache.ibatis.parsing.XNode, java.lang.String, java.util.function.Supplier], java.lang.String), configuration/-1217462027=([org.apache.ibatis.builder.BaseBuilder], org.apache.ibatis.session.Configuration), cast-from-var920-to-var2234=([org.apache.ibatis.builder.xml.XMLMapperBuilder], org.apache.ibatis.builder.BaseBuilder), isLazyLoadingEnabled/422830908=([org.apache.ibatis.session.Configuration], boolean), getStringAttribute/2039987397=([org.apache.ibatis.parsing.XNode, java.lang.String, java.lang.String], java.lang.String), resolveClass/1510055323=([org.apache.ibatis.builder.BaseBuilder, java.lang.String], java.lang.Class), resolveJdbcType/1944180505=([org.apache.ibatis.builder.BaseBuilder, java.lang.String], org.apache.ibatis.type.JdbcType), builderAssistant/1141845807=([org.apache.ibatis.builder.xml.XMLMapperBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), buildResultMapping/1764039909=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.Class, java.lang.String, java.lang.String, java.lang.Class, org.apache.ibatis.type.JdbcType, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.Class, java.util.List, java.lang.String, java.lang.String, boolean], org.apache.ibatis.mapping.ResultMapping)}
; {var920=org.apache.ibatis.builder.xml.XMLMapperBuilder, var2725=r3, var1518=org.apache.ibatis.parsing.XNode, var3959=r2, var1050=r4, var1979=java.util.List, var2387=r0, var420=org.apache.ibatis.mapping.ResultFlag, var798=$r1, var1235=java.lang.Object, var1383=$z0, var569=r24, var961=$r14, var3635=$r15, var1542=$r16, var2390=$r17, var2020=java.util.function.Supplier, var2835=org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14, var1060=$r5, var519=$r18, var1064=$r19, var462=$r20, var1543=$r21, var490=$r22, var1904=$r23, var3248=$r8, var3801=org.apache.ibatis.session.Configuration, var2234=org.apache.ibatis.builder.BaseBuilder, var3618=$r6, var573=$z1, var3600=$r25, var1467=$r7, var1653=$z2, var703=$r11, var2293=$r12, var3207=org.apache.ibatis.type.JdbcType, var684=$r13, var2728=org.apache.ibatis.builder.MapperBuilderAssistant, var3794=$r9, var2430=org.apache.ibatis.mapping.ResultMapping, var3542=$r10}
; {org.apache.ibatis.builder.xml.XMLMapperBuilder=var920, r3=var2725, org.apache.ibatis.parsing.XNode=var1518, r2=var3959, r4=var1050, java.util.List=var1979, r0=var2387, org.apache.ibatis.mapping.ResultFlag=var420, $r1=var798, java.lang.Object=var1235, $z0=var1383, r24=var569, $r14=var961, $r15=var3635, $r16=var1542, $r17=var2390, java.util.function.Supplier=var2020, org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14=var2835, $r5=var1060, $r18=var519, $r19=var1064, $r20=var462, $r21=var1543, $r22=var490, $r23=var1904, $r8=var3248, org.apache.ibatis.session.Configuration=var3801, org.apache.ibatis.builder.BaseBuilder=var2234, $r6=var3618, $z1=var573, $r25=var3600, $r7=var1467, $z2=var1653, $r11=var703, $r12=var2293, org.apache.ibatis.type.JdbcType=var3207, $r13=var684, org.apache.ibatis.builder.MapperBuilderAssistant=var2728, $r9=var3794, org.apache.ibatis.mapping.ResultMapping=var2430, $r10=var3542}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder;	r2 := @parameter0: org.apache.ibatis.parsing.XNode;	r4 := @parameter1: java.lang.Class;	r0 := @parameter2: java.util.List;	$r1 = <org.apache.ibatis.mapping.ResultFlag: org.apache.ibatis.mapping.ResultFlag CONSTRUCTOR>;	$z0 = interfaceinvoke r0.<java.util.List: boolean contains(java.lang.Object)>($r1);	if $z0 == 0 goto r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("property");	r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("name");	goto [?= $r14 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("column")];	$r14 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("column");	$r15 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("javaType");	$r16 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("jdbcType");	$r17 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("select");	$r5 = staticinvoke <org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14: java.util.function.Supplier bootstrap$(org.apache.ibatis.builder.xml.XMLMapperBuilder,org.apache.ibatis.parsing.XNode,java.lang.Class)>(r3, r2, r4);	$r18 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.util.function.Supplier)>("resultMap", $r5);	$r19 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("notNullColumn");	$r20 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("columnPrefix");	$r21 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("typeHandler");	$r22 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("resultSet");	$r23 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("foreignColumn");	$r8 = "lazy";	$r6 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.session.Configuration configuration>;	$z1 = virtualinvoke $r6.<org.apache.ibatis.session.Configuration: boolean isLazyLoadingEnabled()>();	if $z1 == 0 goto $r25 = "eager";	$r25 = "lazy";	goto [?= $r7 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("fetchType", $r25)];	$r7 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("fetchType", $r25);	$z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7);	$r11 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r15);	$r12 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r21);	$r13 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.type.JdbcType resolveJdbcType(java.lang.String)>($r16);	$r9 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant>;	$r10 = virtualinvoke $r9.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.ResultMapping buildResultMapping(java.lang.Class,java.lang.String,java.lang.String,java.lang.Class,org.apache.ibatis.type.JdbcType,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.Class,java.util.List,java.lang.String,java.lang.String,boolean)>(r4, r24, $r14, $r11, $r13, $r17, $r18, $r19, $r20, $r12, r0, $r22, $r23, $z2);	return $r10
;block_num 5
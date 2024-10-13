(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var984 0)
(declare-sort var2751 0)
(declare-sort var587 0)
(declare-sort var3447 0)
(declare-sort var2625 0)
(declare-sort var3910 0)
(declare-sort var2885 0)
(declare-sort var1593 0)
(declare-sort var2417 0)
(declare-sort var1934 0)
(declare-sort var3621 0)
(declare-sort var1710 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var587_contains/-441121415 (var587 var2625) Bool)
(declare-fun cast-from-var3447-to-var2625 (var3447) var2625)
(declare-fun getStringAttribute/-798258666 (var2751 String) String)
(declare-fun var2885_bootstrap$/-533147551 (var984 var2751 ClassObject) var3910)
(declare-fun getStringAttribute/-517891316 (var2751 String var3910) String)
(declare-fun configuration/-1217462027 (var2417) var1593)
(declare-fun cast-from-var984-to-var2417 (var984) var2417)
(declare-fun isLazyLoadingEnabled/422830908 (var1593) Bool)
(declare-fun getStringAttribute/2039987397 (var2751 String String) String)
(declare-fun resolveClass/1510055323 (var2417 String) ClassObject)
(declare-fun resolveJdbcType/1944180505 (var2417 String) var1934)
(declare-fun builderAssistant/1141845807 (var984) var3621)
(declare-fun buildResultMapping/1764039909 (var3621 ClassObject String String ClassObject var1934 String String String String ClassObject var587 String String Bool) var1710)
(declare-const null-var984 var984)
(declare-const null-var2751 var2751)
(declare-const null-ClassObject ClassObject)
(declare-const null-var587 var587)
(declare-const var3447-CONSTRUCTOR var3447)
(declare-const var123 var984) ; Statement: r3 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder 
(assert (not (= var123 null-var984)))
(declare-const var1859 var2751) ; Statement: r2 := @parameter0: org.apache.ibatis.parsing.XNode 
(assert (not (= var1859 null-var2751)))
(declare-const var3726 ClassObject) ; Statement: r4 := @parameter1: java.lang.Class 
(assert (not (= var3726 null-ClassObject)))
(declare-const var3009 var587) ; Statement: r0 := @parameter2: java.util.List 
(assert (not (= var3009 null-var587)))
(define-const var1842 var3447 var3447-CONSTRUCTOR) ; Statement: $r1 = <org.apache.ibatis.mapping.ResultFlag: org.apache.ibatis.mapping.ResultFlag CONSTRUCTOR> 
(define-const var3790 Bool (var587_contains/-441121415 var3009 (cast-from-var3447-to-var2625 var1842))) ; Statement: $z0 = interfaceinvoke r0.<java.util.List: boolean contains(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("property") 
(assert (not (= (ite var3790 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var988 String (getStringAttribute/-798258666 var1859 "name")) ; Statement: r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("name") 
 ; Statement: goto [?= $r14 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("column")] 
(assert true) ; Non Conditional
(assert true)
(define-const var2622 String (getStringAttribute/-798258666 var1859 "column")) ; Statement: $r14 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("column") 
(assert true)
(define-const var3457 String (getStringAttribute/-798258666 var1859 "javaType")) ; Statement: $r15 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("javaType") 
(assert true)
(define-const var3135 String (getStringAttribute/-798258666 var1859 "jdbcType")) ; Statement: $r16 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("jdbcType") 
(assert true)
(define-const var253 String (getStringAttribute/-798258666 var1859 "select")) ; Statement: $r17 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("select") 
(define-const var3104 var3910 (var2885_bootstrap$/-533147551 var123 var1859 var3726)) ; Statement: $r5 = staticinvoke <org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14: java.util.function.Supplier bootstrap$(org.apache.ibatis.builder.xml.XMLMapperBuilder,org.apache.ibatis.parsing.XNode,java.lang.Class)>(r3, r2, r4) 
(assert true)
(define-const var955 String (getStringAttribute/-517891316 var1859 "resultMap" var3104)) ; Statement: $r18 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.util.function.Supplier)>("resultMap", $r5) 
(assert true)
(define-const var1657 String (getStringAttribute/-798258666 var1859 "notNullColumn")) ; Statement: $r19 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("notNullColumn") 
(assert true)
(define-const var41 String (getStringAttribute/-798258666 var1859 "columnPrefix")) ; Statement: $r20 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("columnPrefix") 
(assert true)
(define-const var2583 String (getStringAttribute/-798258666 var1859 "typeHandler")) ; Statement: $r21 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("typeHandler") 
(assert true)
(define-const var1437 String (getStringAttribute/-798258666 var1859 "resultSet")) ; Statement: $r22 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("resultSet") 
(assert true)
(define-const var1714 String (getStringAttribute/-798258666 var1859 "foreignColumn")) ; Statement: $r23 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("foreignColumn") 
(define-const var965 String "lazy") ; Statement: $r8 = "lazy" 
(define-const var685 var1593 (configuration/-1217462027 (cast-from-var984-to-var2417 var123))) ; Statement: $r6 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var150 Bool (isLazyLoadingEnabled/422830908 var685)) ; Statement: $z1 = virtualinvoke $r6.<org.apache.ibatis.session.Configuration: boolean isLazyLoadingEnabled()>() 
 ; Statement: if $z1 == 0 goto $r25 = "eager" 
(assert (= (ite var150 1 0) 0)) ; Cond: $z1 == 0 
(define-const var741 String "eager") ; Statement: $r25 = "eager" 
(assert true) ; Non Conditional
(assert true)
(define-const var3867 String (getStringAttribute/2039987397 var1859 "fetchType" var741)) ; Statement: $r7 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("fetchType", $r25) 
(assert true)
(define-const var208 Bool (= var965 var3867)) ; Statement: $z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
(assert true)
(define-const var770 ClassObject (resolveClass/1510055323 (cast-from-var984-to-var2417 var123) var3457)) ; Statement: $r11 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r15) 
(assert true)
(define-const var122 ClassObject (resolveClass/1510055323 (cast-from-var984-to-var2417 var123) var2583)) ; Statement: $r12 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r21) 
(assert true)
(define-const var2729 var1934 (resolveJdbcType/1944180505 (cast-from-var984-to-var2417 var123) var3135)) ; Statement: $r13 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.type.JdbcType resolveJdbcType(java.lang.String)>($r16) 
(define-const var1789 var3621 (builderAssistant/1141845807 var123)) ; Statement: $r9 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant> 
(assert true)
(define-const var3020 var1710 (buildResultMapping/1764039909 var1789 var3726 var988 var2622 var770 var2729 var253 var955 var1657 var41 var122 var3009 var1437 var1714 var208)) ; Statement: $r10 = virtualinvoke $r9.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.ResultMapping buildResultMapping(java.lang.Class,java.lang.String,java.lang.String,java.lang.Class,org.apache.ibatis.type.JdbcType,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.Class,java.util.List,java.lang.String,java.lang.String,boolean)>(r4, r24, $r14, $r11, $r13, $r17, $r18, $r19, $r20, $r12, r0, $r22, $r23, $z2) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var587_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-var3447-to-var2625=([org.apache.ibatis.mapping.ResultFlag], java.lang.Object), getStringAttribute/-798258666=([org.apache.ibatis.parsing.XNode, java.lang.String], java.lang.String), var2885_bootstrap$/-533147551=([org.apache.ibatis.builder.xml.XMLMapperBuilder, org.apache.ibatis.parsing.XNode, java.lang.Class], java.util.function.Supplier), getStringAttribute/-517891316=([org.apache.ibatis.parsing.XNode, java.lang.String, java.util.function.Supplier], java.lang.String), configuration/-1217462027=([org.apache.ibatis.builder.BaseBuilder], org.apache.ibatis.session.Configuration), cast-from-var984-to-var2417=([org.apache.ibatis.builder.xml.XMLMapperBuilder], org.apache.ibatis.builder.BaseBuilder), isLazyLoadingEnabled/422830908=([org.apache.ibatis.session.Configuration], boolean), getStringAttribute/2039987397=([org.apache.ibatis.parsing.XNode, java.lang.String, java.lang.String], java.lang.String), resolveClass/1510055323=([org.apache.ibatis.builder.BaseBuilder, java.lang.String], java.lang.Class), resolveJdbcType/1944180505=([org.apache.ibatis.builder.BaseBuilder, java.lang.String], org.apache.ibatis.type.JdbcType), builderAssistant/1141845807=([org.apache.ibatis.builder.xml.XMLMapperBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), buildResultMapping/1764039909=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.Class, java.lang.String, java.lang.String, java.lang.Class, org.apache.ibatis.type.JdbcType, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.Class, java.util.List, java.lang.String, java.lang.String, boolean], org.apache.ibatis.mapping.ResultMapping)}
; {var984=org.apache.ibatis.builder.xml.XMLMapperBuilder, var123=r3, var2751=org.apache.ibatis.parsing.XNode, var1859=r2, var3726=r4, var587=java.util.List, var3009=r0, var3447=org.apache.ibatis.mapping.ResultFlag, var1842=$r1, var2625=java.lang.Object, var3790=$z0, var988=r24, var2622=$r14, var3457=$r15, var3135=$r16, var253=$r17, var3910=java.util.function.Supplier, var2885=org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14, var3104=$r5, var955=$r18, var1657=$r19, var41=$r20, var2583=$r21, var1437=$r22, var1714=$r23, var965=$r8, var1593=org.apache.ibatis.session.Configuration, var2417=org.apache.ibatis.builder.BaseBuilder, var685=$r6, var150=$z1, var741=$r25, var3867=$r7, var208=$z2, var770=$r11, var122=$r12, var1934=org.apache.ibatis.type.JdbcType, var2729=$r13, var3621=org.apache.ibatis.builder.MapperBuilderAssistant, var1789=$r9, var1710=org.apache.ibatis.mapping.ResultMapping, var3020=$r10}
; {org.apache.ibatis.builder.xml.XMLMapperBuilder=var984, r3=var123, org.apache.ibatis.parsing.XNode=var2751, r2=var1859, r4=var3726, java.util.List=var587, r0=var3009, org.apache.ibatis.mapping.ResultFlag=var3447, $r1=var1842, java.lang.Object=var2625, $z0=var3790, r24=var988, $r14=var2622, $r15=var3457, $r16=var3135, $r17=var253, java.util.function.Supplier=var3910, org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14=var2885, $r5=var3104, $r18=var955, $r19=var1657, $r20=var41, $r21=var2583, $r22=var1437, $r23=var1714, $r8=var965, org.apache.ibatis.session.Configuration=var1593, org.apache.ibatis.builder.BaseBuilder=var2417, $r6=var685, $z1=var150, $r25=var741, $r7=var3867, $z2=var208, $r11=var770, $r12=var122, org.apache.ibatis.type.JdbcType=var1934, $r13=var2729, org.apache.ibatis.builder.MapperBuilderAssistant=var3621, $r9=var1789, org.apache.ibatis.mapping.ResultMapping=var1710, $r10=var3020}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder;	r2 := @parameter0: org.apache.ibatis.parsing.XNode;	r4 := @parameter1: java.lang.Class;	r0 := @parameter2: java.util.List;	$r1 = <org.apache.ibatis.mapping.ResultFlag: org.apache.ibatis.mapping.ResultFlag CONSTRUCTOR>;	$z0 = interfaceinvoke r0.<java.util.List: boolean contains(java.lang.Object)>($r1);	if $z0 == 0 goto r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("property");	r24 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("name");	goto [?= $r14 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("column")];	$r14 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("column");	$r15 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("javaType");	$r16 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("jdbcType");	$r17 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("select");	$r5 = staticinvoke <org.apache.ibatis.builder.xml.XMLMapperBuilder$lambda_buildResultMappingFromContext_0__14: java.util.function.Supplier bootstrap$(org.apache.ibatis.builder.xml.XMLMapperBuilder,org.apache.ibatis.parsing.XNode,java.lang.Class)>(r3, r2, r4);	$r18 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.util.function.Supplier)>("resultMap", $r5);	$r19 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("notNullColumn");	$r20 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("columnPrefix");	$r21 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("typeHandler");	$r22 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("resultSet");	$r23 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("foreignColumn");	$r8 = "lazy";	$r6 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.session.Configuration configuration>;	$z1 = virtualinvoke $r6.<org.apache.ibatis.session.Configuration: boolean isLazyLoadingEnabled()>();	if $z1 == 0 goto $r25 = "eager";	$r25 = "eager";	$r7 = virtualinvoke r2.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("fetchType", $r25);	$z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7);	$r11 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r15);	$r12 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>($r21);	$r13 = virtualinvoke r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.type.JdbcType resolveJdbcType(java.lang.String)>($r16);	$r9 = r3.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant>;	$r10 = virtualinvoke $r9.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.ResultMapping buildResultMapping(java.lang.Class,java.lang.String,java.lang.String,java.lang.Class,org.apache.ibatis.type.JdbcType,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.Class,java.util.List,java.lang.String,java.lang.String,boolean)>(r4, r24, $r14, $r11, $r13, $r17, $r18, $r19, $r20, $r12, r0, $r22, $r23, $z2);	return $r10
;block_num 5
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var592 0)
(declare-sort var2792 0)
(declare-sort var2116 0)
(declare-sort var3010 0)
(declare-sort var1133 0)
(declare-sort var2040 0)
(declare-sort var1987 0)
(declare-sort var846 0)
(declare-sort var2857 0)
(declare-sort var441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resolveResultJavaType/1315795284 (var592 ClassObject String ClassObject) ClassObject)
(declare-fun resolveTypeHandler/2103691376 (var2040 ClassObject ClassObject) var1133)
(declare-fun cast-from-var592-to-var2040 (var592) var2040)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun parseCompositeColumnName/1486157414 (var592 String) var3010)
(declare-fun var1987-init () var1987)
(declare-fun configuration/-1217462027 (var2040) var846)
(declare-fun <init>/-1843057489 (var1987 var846 String String ClassObject) void)
(declare-fun jdbcType/-440640461 (var1987 var2116) var1987)
(declare-fun applyCurrentNamespace/296309646 (var592 String Bool) String)
(declare-fun nestedQueryId/725225408 (var1987 String) var1987)
(declare-fun nestedResultMapId/-2092657559 (var1987 String) var1987)
(declare-fun resultSet/-891056089 (var1987 String) var1987)
(declare-fun typeHandler/288997941 (var1987 var1133) var1987)
(declare-fun flags/-36581666 (var1987 var3010) var1987)
(declare-fun composites/1630311141 (var1987 var3010) var1987)
(declare-fun parseMultipleColumnNames/1620927130 (var592 String) var2857)
(declare-fun notNullColumns/1011836924 (var1987 var2857) var1987)
(declare-fun columnPrefix/-1430304016 (var1987 String) var1987)
(declare-fun foreignColumn/-192971582 (var1987 String) var1987)
(declare-fun lazy/-345882893 (var1987 Bool) var1987)
(declare-fun build/-425815056 (var1987) var441)
(declare-const null-var592 var592)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var2116 var2116)
(declare-const null-var3010 var3010)
(declare-const null-Bool Bool)
(declare-const var1383 var592) ; Statement: r0 := @this: org.apache.ibatis.builder.MapperBuilderAssistant 
(assert (not (= var1383 null-var592)))
(declare-const var3978 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3978 null-ClassObject)))
(declare-const var1623 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1623 null-String)))
(declare-const var2918 String) ; Statement: r9 := @parameter2: java.lang.String 
(assert (not (= var2918 null-String)))
(declare-const var3941 ClassObject) ; Statement: r3 := @parameter3: java.lang.Class 
(assert (not (= var3941 null-ClassObject)))
(declare-const var2641 var2116) ; Statement: r10 := @parameter4: org.apache.ibatis.type.JdbcType 
(assert (not (= var2641 null-var2116)))
(declare-const var233 String) ; Statement: r7 := @parameter5: java.lang.String 
(assert (not (= var233 null-String)))
(declare-const var2901 String) ; Statement: r11 := @parameter6: java.lang.String 
(assert (not (= var2901 null-String)))
(declare-const var3277 String) ; Statement: r16 := @parameter7: java.lang.String 
(assert (not (= var3277 null-String)))
(declare-const var1022 String) ; Statement: r19 := @parameter8: java.lang.String 
(assert (not (= var1022 null-String)))
(declare-const var137 ClassObject) ; Statement: r5 := @parameter9: java.lang.Class 
(assert (not (= var137 null-ClassObject)))
(declare-const var266 var3010) ; Statement: r13 := @parameter10: java.util.List 
(assert (not (= var266 null-var3010)))
(declare-const var876 String) ; Statement: r12 := @parameter11: java.lang.String 
(assert (not (= var876 null-String)))
(declare-const var3235 String) ; Statement: r8 := @parameter12: java.lang.String 
(assert (not (= var3235 null-String)))
(declare-const var1622 Bool) ; Statement: z0 := @parameter13: boolean 
(assert (not (= var1622 null-Bool)))
(assert true)
(define-const var3762 ClassObject (resolveResultJavaType/1315795284 var1383 var3978 var1623 var3941)) ; Statement: r4 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.Class resolveResultJavaType(java.lang.Class,java.lang.String,java.lang.Class)>(r1, r2, r3) 
(assert true)
(define-const var1131 var1133 (resolveTypeHandler/2103691376 (cast-from-var592-to-var2040 var1383) var3762 var137)) ; Statement: r6 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.type.TypeHandler resolveTypeHandler(java.lang.Class,java.lang.Class)>(r4, r5) 
 ; Statement: if r7 == null goto (branch) 
(assert (not (= var233 null-String))) ; Negate: Cond: r7 == null  
(assert true)
(define-const var889 Bool (isEmpty/-1285796103 var233)) ; Statement: $z2 = virtualinvoke r7.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto r25 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.List parseCompositeColumnName(java.lang.String)>(r9) 
(assert (= (ite var889 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2429 var3010 (parseCompositeColumnName/1486157414 var1383 var2918)) ; Statement: r25 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.List parseCompositeColumnName(java.lang.String)>(r9) 
(assert true) ; Non Conditional
(define-const var2516 var1987 var1987-init) ; Statement: $r35 = new org.apache.ibatis.mapping.ResultMapping$Builder 
(define-const var41 var846 (configuration/-1217462027 (cast-from-var592-to-var2040 var1383))) ; Statement: $r27 = r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.session.Configuration configuration> 
(assert true)
;(assert (<init>/-1843057489 var2516 var41 var1623 var2918 var3762)) ; Statement: specialinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: void <init>(org.apache.ibatis.session.Configuration,java.lang.String,java.lang.String,java.lang.Class)>($r27, r2, r9, r4) 

(declare-const var2516!1 var1987)
(declare-const var41!1 var846)
(declare-const var1623!1 String)
(declare-const var2918!1 String)
(declare-const var3762!1 ClassObject)
(assert true)
(define-const var3903 var1987 (jdbcType/-440640461 var2516!1 var2641)) ; Statement: $r28 = virtualinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder jdbcType(org.apache.ibatis.type.JdbcType)>(r10) 
(assert true)
(define-const var2412 String (applyCurrentNamespace/296309646 var1383 var233 (ite (= 1 1) true false))) ; Statement: $r29 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r7, 1) 
(assert true)
(define-const var1312 var1987 (nestedQueryId/725225408 var3903 var2412)) ; Statement: $r30 = virtualinvoke $r28.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedQueryId(java.lang.String)>($r29) 
(assert true)
(define-const var52 String (applyCurrentNamespace/296309646 var1383 var2901 (ite (= 1 1) true false))) ; Statement: $r31 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r11, 1) 
(assert true)
(define-const var2772 var1987 (nestedResultMapId/-2092657559 var1312 var52)) ; Statement: $r32 = virtualinvoke $r30.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedResultMapId(java.lang.String)>($r31) 
(assert true)
(define-const var1441 var1987 (resultSet/-891056089 var2772 var876)) ; Statement: $r33 = virtualinvoke $r32.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder resultSet(java.lang.String)>(r12) 
(assert true)
(define-const var578 var1987 (typeHandler/288997941 var1441 var1131)) ; Statement: $r14 = virtualinvoke $r33.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder typeHandler(org.apache.ibatis.type.TypeHandler)>(r6) 
 ; Statement: if r13 != null goto $r34 = r13 
(assert (not (= var266 null-var3010))) ; Cond: r13 != null 
(define-const var3468 var3010 var266) ; Statement: $r34 = r13 
(assert true) ; Non Conditional
(assert true)
(define-const var59 var1987 (flags/-36581666 var578 var3468)) ; Statement: $r15 = virtualinvoke $r14.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder flags(java.util.List)>($r34) 
(assert true)
(define-const var1101 var1987 (composites/1630311141 var59 var2429)) ; Statement: $r18 = virtualinvoke $r15.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder composites(java.util.List)>(r25) 
(assert true)
(define-const var1029 var2857 (parseMultipleColumnNames/1620927130 var1383 var3277)) ; Statement: $r17 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.Set parseMultipleColumnNames(java.lang.String)>(r16) 
(assert true)
(define-const var177 var1987 (notNullColumns/1011836924 var1101 var1029)) ; Statement: $r20 = virtualinvoke $r18.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder notNullColumns(java.util.Set)>($r17) 
(assert true)
(define-const var996 var1987 (columnPrefix/-1430304016 var177 var1022)) ; Statement: $r21 = virtualinvoke $r20.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder columnPrefix(java.lang.String)>(r19) 
(assert true)
(define-const var2833 var1987 (foreignColumn/-192971582 var996 var3235)) ; Statement: $r22 = virtualinvoke $r21.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder foreignColumn(java.lang.String)>(r8) 
(assert true)
(define-const var3577 var1987 (lazy/-345882893 var2833 var1622)) ; Statement: $r23 = virtualinvoke $r22.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder lazy(boolean)>(z0) 
(assert true)
(define-const var343 var441 (build/-425815056 var3577)) ; Statement: $r24 = virtualinvoke $r23.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping build()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {resolveResultJavaType/1315795284=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.Class, java.lang.String, java.lang.Class], java.lang.Class), resolveTypeHandler/2103691376=([org.apache.ibatis.builder.BaseBuilder, java.lang.Class, java.lang.Class], org.apache.ibatis.type.TypeHandler), cast-from-var592-to-var2040=([org.apache.ibatis.builder.MapperBuilderAssistant], org.apache.ibatis.builder.BaseBuilder), isEmpty/-1285796103=([java.lang.String], boolean), parseCompositeColumnName/1486157414=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String], java.util.List), var1987-init=([], org.apache.ibatis.mapping.ResultMapping$Builder), configuration/-1217462027=([org.apache.ibatis.builder.BaseBuilder], org.apache.ibatis.session.Configuration), <init>/-1843057489=([org.apache.ibatis.mapping.ResultMapping$Builder, org.apache.ibatis.session.Configuration, java.lang.String, java.lang.String, java.lang.Class], void), jdbcType/-440640461=([org.apache.ibatis.mapping.ResultMapping$Builder, org.apache.ibatis.type.JdbcType], org.apache.ibatis.mapping.ResultMapping$Builder), applyCurrentNamespace/296309646=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, boolean], java.lang.String), nestedQueryId/725225408=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), nestedResultMapId/-2092657559=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), resultSet/-891056089=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), typeHandler/288997941=([org.apache.ibatis.mapping.ResultMapping$Builder, org.apache.ibatis.type.TypeHandler], org.apache.ibatis.mapping.ResultMapping$Builder), flags/-36581666=([org.apache.ibatis.mapping.ResultMapping$Builder, java.util.List], org.apache.ibatis.mapping.ResultMapping$Builder), composites/1630311141=([org.apache.ibatis.mapping.ResultMapping$Builder, java.util.List], org.apache.ibatis.mapping.ResultMapping$Builder), parseMultipleColumnNames/1620927130=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String], java.util.Set), notNullColumns/1011836924=([org.apache.ibatis.mapping.ResultMapping$Builder, java.util.Set], org.apache.ibatis.mapping.ResultMapping$Builder), columnPrefix/-1430304016=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), foreignColumn/-192971582=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), lazy/-345882893=([org.apache.ibatis.mapping.ResultMapping$Builder, boolean], org.apache.ibatis.mapping.ResultMapping$Builder), build/-425815056=([org.apache.ibatis.mapping.ResultMapping$Builder], org.apache.ibatis.mapping.ResultMapping)}
; {var592=org.apache.ibatis.builder.MapperBuilderAssistant, var1383=r0, var3978=r1, var1623=r2, var2792=null_type, var2918=r9, var3941=r3, var2116=org.apache.ibatis.type.JdbcType, var2641=r10, var233=r7, var2901=r11, var3277=r16, var1022=r19, var137=r5, var3010=java.util.List, var266=r13, var876=r12, var3235=r8, var1622=z0, var3762=r4, var1133=org.apache.ibatis.type.TypeHandler, var2040=org.apache.ibatis.builder.BaseBuilder, var1131=r6, var889=$z2, var2429=r25, var1987=org.apache.ibatis.mapping.ResultMapping$Builder, var2516=$r35, var846=org.apache.ibatis.session.Configuration, var41=$r27, var3903=$r28, var2412=$r29, var1312=$r30, var52=$r31, var2772=$r32, var1441=$r33, var578=$r14, var3468=$r34, var59=$r15, var1101=$r18, var2857=java.util.Set, var1029=$r17, var177=$r20, var996=$r21, var2833=$r22, var3577=$r23, var441=org.apache.ibatis.mapping.ResultMapping, var343=$r24}
; {org.apache.ibatis.builder.MapperBuilderAssistant=var592, r0=var1383, r1=var3978, r2=var1623, null_type=var2792, r9=var2918, r3=var3941, org.apache.ibatis.type.JdbcType=var2116, r10=var2641, r7=var233, r11=var2901, r16=var3277, r19=var1022, r5=var137, java.util.List=var3010, r13=var266, r12=var876, r8=var3235, z0=var1622, r4=var3762, org.apache.ibatis.type.TypeHandler=var1133, org.apache.ibatis.builder.BaseBuilder=var2040, r6=var1131, $z2=var889, r25=var2429, org.apache.ibatis.mapping.ResultMapping$Builder=var1987, $r35=var2516, org.apache.ibatis.session.Configuration=var846, $r27=var41, $r28=var3903, $r29=var2412, $r30=var1312, $r31=var52, $r32=var2772, $r33=var1441, $r14=var578, $r34=var3468, $r15=var59, $r18=var1101, java.util.Set=var2857, $r17=var1029, $r20=var177, $r21=var996, $r22=var2833, $r23=var3577, org.apache.ibatis.mapping.ResultMapping=var441, $r24=var343}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.MapperBuilderAssistant;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r9 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.Class;	r10 := @parameter4: org.apache.ibatis.type.JdbcType;	r7 := @parameter5: java.lang.String;	r11 := @parameter6: java.lang.String;	r16 := @parameter7: java.lang.String;	r19 := @parameter8: java.lang.String;	r5 := @parameter9: java.lang.Class;	r13 := @parameter10: java.util.List;	r12 := @parameter11: java.lang.String;	r8 := @parameter12: java.lang.String;	z0 := @parameter13: boolean;	r4 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.Class resolveResultJavaType(java.lang.Class,java.lang.String,java.lang.Class)>(r1, r2, r3);	r6 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.type.TypeHandler resolveTypeHandler(java.lang.Class,java.lang.Class)>(r4, r5);	if r7 == null goto (branch);	$z2 = virtualinvoke r7.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto r25 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.List parseCompositeColumnName(java.lang.String)>(r9);	r25 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.List parseCompositeColumnName(java.lang.String)>(r9);	$r35 = new org.apache.ibatis.mapping.ResultMapping$Builder;	$r27 = r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.session.Configuration configuration>;	specialinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: void <init>(org.apache.ibatis.session.Configuration,java.lang.String,java.lang.String,java.lang.Class)>($r27, r2, r9, r4);	$r28 = virtualinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder jdbcType(org.apache.ibatis.type.JdbcType)>(r10);	$r29 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r7, 1);	$r30 = virtualinvoke $r28.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedQueryId(java.lang.String)>($r29);	$r31 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r11, 1);	$r32 = virtualinvoke $r30.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedResultMapId(java.lang.String)>($r31);	$r33 = virtualinvoke $r32.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder resultSet(java.lang.String)>(r12);	$r14 = virtualinvoke $r33.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder typeHandler(org.apache.ibatis.type.TypeHandler)>(r6);	if r13 != null goto $r34 = r13;	$r34 = r13;	$r15 = virtualinvoke $r14.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder flags(java.util.List)>($r34);	$r18 = virtualinvoke $r15.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder composites(java.util.List)>(r25);	$r17 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.Set parseMultipleColumnNames(java.lang.String)>(r16);	$r20 = virtualinvoke $r18.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder notNullColumns(java.util.Set)>($r17);	$r21 = virtualinvoke $r20.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder columnPrefix(java.lang.String)>(r19);	$r22 = virtualinvoke $r21.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder foreignColumn(java.lang.String)>(r8);	$r23 = virtualinvoke $r22.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder lazy(boolean)>(z0);	$r24 = virtualinvoke $r23.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping build()>();	return $r24
;block_num 6
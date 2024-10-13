(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var807 0)
(declare-sort var2287 0)
(declare-sort var738 0)
(declare-sort var1802 0)
(declare-sort var2269 0)
(declare-sort var710 0)
(declare-sort var2887 0)
(declare-sort var3656 0)
(declare-sort var676 0)
(declare-sort var3072 0)
(declare-sort var2208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resolveResultJavaType/1315795284 (var807 ClassObject String ClassObject) ClassObject)
(declare-fun resolveTypeHandler/2103691376 (var710 ClassObject ClassObject) var2269)
(declare-fun cast-from-var807-to-var710 (var807) var710)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun parseCompositeColumnName/1486157414 (var807 String) var1802)
(declare-fun var2887-init () var2887)
(declare-fun configuration/-1217462027 (var710) var3656)
(declare-fun <init>/-1843057489 (var2887 var3656 String String ClassObject) void)
(declare-fun jdbcType/-440640461 (var2887 var738) var2887)
(declare-fun applyCurrentNamespace/296309646 (var807 String Bool) String)
(declare-fun nestedQueryId/725225408 (var2887 String) var2887)
(declare-fun nestedResultMapId/-2092657559 (var2887 String) var2887)
(declare-fun resultSet/-891056089 (var2887 String) var2887)
(declare-fun typeHandler/288997941 (var2887 var2269) var2887)
(declare-fun var676-init () var676)
(declare-fun cast-from-var676-to-var1802 (var676) var1802)
(declare-fun <init>/-325640736 (var676) void)
(declare-fun flags/-36581666 (var2887 var1802) var2887)
(declare-fun composites/1630311141 (var2887 var1802) var2887)
(declare-fun parseMultipleColumnNames/1620927130 (var807 String) var3072)
(declare-fun notNullColumns/1011836924 (var2887 var3072) var2887)
(declare-fun columnPrefix/-1430304016 (var2887 String) var2887)
(declare-fun foreignColumn/-192971582 (var2887 String) var2887)
(declare-fun lazy/-345882893 (var2887 Bool) var2887)
(declare-fun build/-425815056 (var2887) var2208)
(declare-const null-var807 var807)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var738 var738)
(declare-const null-var1802 var1802)
(declare-const null-Bool Bool)
(declare-const var1052 var807) ; Statement: r0 := @this: org.apache.ibatis.builder.MapperBuilderAssistant 
(assert (not (= var1052 null-var807)))
(declare-const var985 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var985 null-ClassObject)))
(declare-const var3380 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3380 null-String)))
(declare-const var1963 String) ; Statement: r9 := @parameter2: java.lang.String 
(assert (not (= var1963 null-String)))
(declare-const var2231 ClassObject) ; Statement: r3 := @parameter3: java.lang.Class 
(assert (not (= var2231 null-ClassObject)))
(declare-const var3796 var738) ; Statement: r10 := @parameter4: org.apache.ibatis.type.JdbcType 
(assert (not (= var3796 null-var738)))
(declare-const var1560 String) ; Statement: r7 := @parameter5: java.lang.String 
(assert (not (= var1560 null-String)))
(declare-const var1478 String) ; Statement: r11 := @parameter6: java.lang.String 
(assert (not (= var1478 null-String)))
(declare-const var2520 String) ; Statement: r16 := @parameter7: java.lang.String 
(assert (not (= var2520 null-String)))
(declare-const var636 String) ; Statement: r19 := @parameter8: java.lang.String 
(assert (not (= var636 null-String)))
(declare-const var3411 ClassObject) ; Statement: r5 := @parameter9: java.lang.Class 
(assert (not (= var3411 null-ClassObject)))
(declare-const var2988 var1802) ; Statement: r13 := @parameter10: java.util.List 
(assert (not (= var2988 null-var1802)))
(declare-const var1941 String) ; Statement: r12 := @parameter11: java.lang.String 
(assert (not (= var1941 null-String)))
(declare-const var2820 String) ; Statement: r8 := @parameter12: java.lang.String 
(assert (not (= var2820 null-String)))
(declare-const var3133 Bool) ; Statement: z0 := @parameter13: boolean 
(assert (not (= var3133 null-Bool)))
(assert true)
(define-const var2079 ClassObject (resolveResultJavaType/1315795284 var1052 var985 var3380 var2231)) ; Statement: r4 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.Class resolveResultJavaType(java.lang.Class,java.lang.String,java.lang.Class)>(r1, r2, r3) 
(assert true)
(define-const var1270 var2269 (resolveTypeHandler/2103691376 (cast-from-var807-to-var710 var1052) var2079 var3411)) ; Statement: r6 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.type.TypeHandler resolveTypeHandler(java.lang.Class,java.lang.Class)>(r4, r5) 
 ; Statement: if r7 == null goto (branch) 
(assert (not (= var1560 null-String))) ; Negate: Cond: r7 == null  
(assert true)
(define-const var3407 Bool (isEmpty/-1285796103 var1560)) ; Statement: $z2 = virtualinvoke r7.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto r25 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.List parseCompositeColumnName(java.lang.String)>(r9) 
(assert (= (ite var3407 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var653 var1802 (parseCompositeColumnName/1486157414 var1052 var1963)) ; Statement: r25 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.List parseCompositeColumnName(java.lang.String)>(r9) 
(assert true) ; Non Conditional
(define-const var239 var2887 var2887-init) ; Statement: $r35 = new org.apache.ibatis.mapping.ResultMapping$Builder 
(define-const var193 var3656 (configuration/-1217462027 (cast-from-var807-to-var710 var1052))) ; Statement: $r27 = r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.session.Configuration configuration> 
(assert true)
;(assert (<init>/-1843057489 var239 var193 var3380 var1963 var2079)) ; Statement: specialinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: void <init>(org.apache.ibatis.session.Configuration,java.lang.String,java.lang.String,java.lang.Class)>($r27, r2, r9, r4) 

(declare-const var239!1 var2887)
(declare-const var193!1 var3656)
(declare-const var3380!1 String)
(declare-const var1963!1 String)
(declare-const var2079!1 ClassObject)
(assert true)
(define-const var996 var2887 (jdbcType/-440640461 var239!1 var3796)) ; Statement: $r28 = virtualinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder jdbcType(org.apache.ibatis.type.JdbcType)>(r10) 
(assert true)
(define-const var3794 String (applyCurrentNamespace/296309646 var1052 var1560 (ite (= 1 1) true false))) ; Statement: $r29 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r7, 1) 
(assert true)
(define-const var3064 var2887 (nestedQueryId/725225408 var996 var3794)) ; Statement: $r30 = virtualinvoke $r28.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedQueryId(java.lang.String)>($r29) 
(assert true)
(define-const var1165 String (applyCurrentNamespace/296309646 var1052 var1478 (ite (= 1 1) true false))) ; Statement: $r31 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r11, 1) 
(assert true)
(define-const var71 var2887 (nestedResultMapId/-2092657559 var3064 var1165)) ; Statement: $r32 = virtualinvoke $r30.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedResultMapId(java.lang.String)>($r31) 
(assert true)
(define-const var1269 var2887 (resultSet/-891056089 var71 var1941)) ; Statement: $r33 = virtualinvoke $r32.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder resultSet(java.lang.String)>(r12) 
(assert true)
(define-const var3348 var2887 (typeHandler/288997941 var1269 var1270)) ; Statement: $r14 = virtualinvoke $r33.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder typeHandler(org.apache.ibatis.type.TypeHandler)>(r6) 
 ; Statement: if r13 != null goto $r34 = r13 
(assert (not (not (= var2988 null-var1802)))) ; Negate: Cond: r13 != null  
(define-const var3253 var676 var676-init) ; Statement: $r36 = new java.util.ArrayList 
(define-const var2643 var1802 (cast-from-var676-to-var1802 var3253)) ; Statement: $r34 = $r36 
(assert true)
;(assert (<init>/-325640736 var3253)) ; Statement: specialinvoke $r36.<java.util.ArrayList: void <init>()>() 

(declare-const var3253!1 var676)
 ; Statement: goto [?= $r15 = virtualinvoke $r14.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder flags(java.util.List)>($r34)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3171 var2887 (flags/-36581666 var3348 var2643)) ; Statement: $r15 = virtualinvoke $r14.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder flags(java.util.List)>($r34) 
(assert true)
(define-const var50 var2887 (composites/1630311141 var3171 var653)) ; Statement: $r18 = virtualinvoke $r15.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder composites(java.util.List)>(r25) 
(assert true)
(define-const var3357 var3072 (parseMultipleColumnNames/1620927130 var1052 var2520)) ; Statement: $r17 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.Set parseMultipleColumnNames(java.lang.String)>(r16) 
(assert true)
(define-const var123 var2887 (notNullColumns/1011836924 var50 var3357)) ; Statement: $r20 = virtualinvoke $r18.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder notNullColumns(java.util.Set)>($r17) 
(assert true)
(define-const var1405 var2887 (columnPrefix/-1430304016 var123 var636)) ; Statement: $r21 = virtualinvoke $r20.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder columnPrefix(java.lang.String)>(r19) 
(assert true)
(define-const var640 var2887 (foreignColumn/-192971582 var1405 var2820)) ; Statement: $r22 = virtualinvoke $r21.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder foreignColumn(java.lang.String)>(r8) 
(assert true)
(define-const var3301 var2887 (lazy/-345882893 var640 var3133)) ; Statement: $r23 = virtualinvoke $r22.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder lazy(boolean)>(z0) 
(assert true)
(define-const var3291 var2208 (build/-425815056 var3301)) ; Statement: $r24 = virtualinvoke $r23.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping build()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {resolveResultJavaType/1315795284=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.Class, java.lang.String, java.lang.Class], java.lang.Class), resolveTypeHandler/2103691376=([org.apache.ibatis.builder.BaseBuilder, java.lang.Class, java.lang.Class], org.apache.ibatis.type.TypeHandler), cast-from-var807-to-var710=([org.apache.ibatis.builder.MapperBuilderAssistant], org.apache.ibatis.builder.BaseBuilder), isEmpty/-1285796103=([java.lang.String], boolean), parseCompositeColumnName/1486157414=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String], java.util.List), var2887-init=([], org.apache.ibatis.mapping.ResultMapping$Builder), configuration/-1217462027=([org.apache.ibatis.builder.BaseBuilder], org.apache.ibatis.session.Configuration), <init>/-1843057489=([org.apache.ibatis.mapping.ResultMapping$Builder, org.apache.ibatis.session.Configuration, java.lang.String, java.lang.String, java.lang.Class], void), jdbcType/-440640461=([org.apache.ibatis.mapping.ResultMapping$Builder, org.apache.ibatis.type.JdbcType], org.apache.ibatis.mapping.ResultMapping$Builder), applyCurrentNamespace/296309646=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, boolean], java.lang.String), nestedQueryId/725225408=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), nestedResultMapId/-2092657559=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), resultSet/-891056089=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), typeHandler/288997941=([org.apache.ibatis.mapping.ResultMapping$Builder, org.apache.ibatis.type.TypeHandler], org.apache.ibatis.mapping.ResultMapping$Builder), var676-init=([], java.util.ArrayList), cast-from-var676-to-var1802=([java.util.ArrayList], java.util.List), <init>/-325640736=([java.util.ArrayList], void), flags/-36581666=([org.apache.ibatis.mapping.ResultMapping$Builder, java.util.List], org.apache.ibatis.mapping.ResultMapping$Builder), composites/1630311141=([org.apache.ibatis.mapping.ResultMapping$Builder, java.util.List], org.apache.ibatis.mapping.ResultMapping$Builder), parseMultipleColumnNames/1620927130=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String], java.util.Set), notNullColumns/1011836924=([org.apache.ibatis.mapping.ResultMapping$Builder, java.util.Set], org.apache.ibatis.mapping.ResultMapping$Builder), columnPrefix/-1430304016=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), foreignColumn/-192971582=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), lazy/-345882893=([org.apache.ibatis.mapping.ResultMapping$Builder, boolean], org.apache.ibatis.mapping.ResultMapping$Builder), build/-425815056=([org.apache.ibatis.mapping.ResultMapping$Builder], org.apache.ibatis.mapping.ResultMapping)}
; {var807=org.apache.ibatis.builder.MapperBuilderAssistant, var1052=r0, var985=r1, var3380=r2, var2287=null_type, var1963=r9, var2231=r3, var738=org.apache.ibatis.type.JdbcType, var3796=r10, var1560=r7, var1478=r11, var2520=r16, var636=r19, var3411=r5, var1802=java.util.List, var2988=r13, var1941=r12, var2820=r8, var3133=z0, var2079=r4, var2269=org.apache.ibatis.type.TypeHandler, var710=org.apache.ibatis.builder.BaseBuilder, var1270=r6, var3407=$z2, var653=r25, var2887=org.apache.ibatis.mapping.ResultMapping$Builder, var239=$r35, var3656=org.apache.ibatis.session.Configuration, var193=$r27, var996=$r28, var3794=$r29, var3064=$r30, var1165=$r31, var71=$r32, var1269=$r33, var3348=$r14, var676=java.util.ArrayList, var3253=$r36, var2643=$r34, var3171=$r15, var50=$r18, var3072=java.util.Set, var3357=$r17, var123=$r20, var1405=$r21, var640=$r22, var3301=$r23, var2208=org.apache.ibatis.mapping.ResultMapping, var3291=$r24}
; {org.apache.ibatis.builder.MapperBuilderAssistant=var807, r0=var1052, r1=var985, r2=var3380, null_type=var2287, r9=var1963, r3=var2231, org.apache.ibatis.type.JdbcType=var738, r10=var3796, r7=var1560, r11=var1478, r16=var2520, r19=var636, r5=var3411, java.util.List=var1802, r13=var2988, r12=var1941, r8=var2820, z0=var3133, r4=var2079, org.apache.ibatis.type.TypeHandler=var2269, org.apache.ibatis.builder.BaseBuilder=var710, r6=var1270, $z2=var3407, r25=var653, org.apache.ibatis.mapping.ResultMapping$Builder=var2887, $r35=var239, org.apache.ibatis.session.Configuration=var3656, $r27=var193, $r28=var996, $r29=var3794, $r30=var3064, $r31=var1165, $r32=var71, $r33=var1269, $r14=var3348, java.util.ArrayList=var676, $r36=var3253, $r34=var2643, $r15=var3171, $r18=var50, java.util.Set=var3072, $r17=var3357, $r20=var123, $r21=var1405, $r22=var640, $r23=var3301, org.apache.ibatis.mapping.ResultMapping=var2208, $r24=var3291}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.MapperBuilderAssistant;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r9 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.Class;	r10 := @parameter4: org.apache.ibatis.type.JdbcType;	r7 := @parameter5: java.lang.String;	r11 := @parameter6: java.lang.String;	r16 := @parameter7: java.lang.String;	r19 := @parameter8: java.lang.String;	r5 := @parameter9: java.lang.Class;	r13 := @parameter10: java.util.List;	r12 := @parameter11: java.lang.String;	r8 := @parameter12: java.lang.String;	z0 := @parameter13: boolean;	r4 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.Class resolveResultJavaType(java.lang.Class,java.lang.String,java.lang.Class)>(r1, r2, r3);	r6 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.type.TypeHandler resolveTypeHandler(java.lang.Class,java.lang.Class)>(r4, r5);	if r7 == null goto (branch);	$z2 = virtualinvoke r7.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto r25 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.List parseCompositeColumnName(java.lang.String)>(r9);	r25 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.List parseCompositeColumnName(java.lang.String)>(r9);	$r35 = new org.apache.ibatis.mapping.ResultMapping$Builder;	$r27 = r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.session.Configuration configuration>;	specialinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: void <init>(org.apache.ibatis.session.Configuration,java.lang.String,java.lang.String,java.lang.Class)>($r27, r2, r9, r4);	$r28 = virtualinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder jdbcType(org.apache.ibatis.type.JdbcType)>(r10);	$r29 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r7, 1);	$r30 = virtualinvoke $r28.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedQueryId(java.lang.String)>($r29);	$r31 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r11, 1);	$r32 = virtualinvoke $r30.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedResultMapId(java.lang.String)>($r31);	$r33 = virtualinvoke $r32.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder resultSet(java.lang.String)>(r12);	$r14 = virtualinvoke $r33.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder typeHandler(org.apache.ibatis.type.TypeHandler)>(r6);	if r13 != null goto $r34 = r13;	$r36 = new java.util.ArrayList;	$r34 = $r36;	specialinvoke $r36.<java.util.ArrayList: void <init>()>();	goto [?= $r15 = virtualinvoke $r14.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder flags(java.util.List)>($r34)];	$r15 = virtualinvoke $r14.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder flags(java.util.List)>($r34);	$r18 = virtualinvoke $r15.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder composites(java.util.List)>(r25);	$r17 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.Set parseMultipleColumnNames(java.lang.String)>(r16);	$r20 = virtualinvoke $r18.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder notNullColumns(java.util.Set)>($r17);	$r21 = virtualinvoke $r20.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder columnPrefix(java.lang.String)>(r19);	$r22 = virtualinvoke $r21.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder foreignColumn(java.lang.String)>(r8);	$r23 = virtualinvoke $r22.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder lazy(boolean)>(z0);	$r24 = virtualinvoke $r23.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping build()>();	return $r24
;block_num 6
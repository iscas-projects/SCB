(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var454 0)
(declare-sort var3021 0)
(declare-sort var3671 0)
(declare-sort var307 0)
(declare-sort var3180 0)
(declare-sort var1391 0)
(declare-sort var2316 0)
(declare-sort var1500 0)
(declare-sort var3832 0)
(declare-sort var3797 0)
(declare-sort var2310 0)
(declare-sort var2931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resolveResultJavaType/1315795284 (var454 ClassObject String ClassObject) ClassObject)
(declare-fun resolveTypeHandler/2103691376 (var1391 ClassObject ClassObject) var3180)
(declare-fun cast-from-var454-to-var1391 (var454) var1391)
(declare-fun var2316_emptyList/582664469 () var307)
(declare-fun var1500-init () var1500)
(declare-fun configuration/-1217462027 (var1391) var3832)
(declare-fun <init>/-1843057489 (var1500 var3832 String String ClassObject) void)
(declare-fun jdbcType/-440640461 (var1500 var3671) var1500)
(declare-fun applyCurrentNamespace/296309646 (var454 String Bool) String)
(declare-fun nestedQueryId/725225408 (var1500 String) var1500)
(declare-fun nestedResultMapId/-2092657559 (var1500 String) var1500)
(declare-fun resultSet/-891056089 (var1500 String) var1500)
(declare-fun typeHandler/288997941 (var1500 var3180) var1500)
(declare-fun var3797-init () var3797)
(declare-fun cast-from-var3797-to-var307 (var3797) var307)
(declare-fun <init>/-325640736 (var3797) void)
(declare-fun flags/-36581666 (var1500 var307) var1500)
(declare-fun composites/1630311141 (var1500 var307) var1500)
(declare-fun parseMultipleColumnNames/1620927130 (var454 String) var2310)
(declare-fun notNullColumns/1011836924 (var1500 var2310) var1500)
(declare-fun columnPrefix/-1430304016 (var1500 String) var1500)
(declare-fun foreignColumn/-192971582 (var1500 String) var1500)
(declare-fun lazy/-345882893 (var1500 Bool) var1500)
(declare-fun build/-425815056 (var1500) var2931)
(declare-const null-var454 var454)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var3671 var3671)
(declare-const null-var307 var307)
(declare-const null-Bool Bool)
(declare-const var1166 var454) ; Statement: r0 := @this: org.apache.ibatis.builder.MapperBuilderAssistant 
(assert (not (= var1166 null-var454)))
(declare-const var230 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var230 null-ClassObject)))
(declare-const var2087 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2087 null-String)))
(declare-const var3583 String) ; Statement: r9 := @parameter2: java.lang.String 
(assert (not (= var3583 null-String)))
(declare-const var269 ClassObject) ; Statement: r3 := @parameter3: java.lang.Class 
(assert (not (= var269 null-ClassObject)))
(declare-const var3893 var3671) ; Statement: r10 := @parameter4: org.apache.ibatis.type.JdbcType 
(assert (not (= var3893 null-var3671)))
(declare-const var373 String) ; Statement: r7 := @parameter5: java.lang.String 
(assert (not (= var373 null-String)))
(declare-const var1627 String) ; Statement: r11 := @parameter6: java.lang.String 
(assert (not (= var1627 null-String)))
(declare-const var2583 String) ; Statement: r16 := @parameter7: java.lang.String 
(assert (not (= var2583 null-String)))
(declare-const var1945 String) ; Statement: r19 := @parameter8: java.lang.String 
(assert (not (= var1945 null-String)))
(declare-const var1102 ClassObject) ; Statement: r5 := @parameter9: java.lang.Class 
(assert (not (= var1102 null-ClassObject)))
(declare-const var95 var307) ; Statement: r13 := @parameter10: java.util.List 
(assert (not (= var95 null-var307)))
(declare-const var1958 String) ; Statement: r12 := @parameter11: java.lang.String 
(assert (not (= var1958 null-String)))
(declare-const var395 String) ; Statement: r8 := @parameter12: java.lang.String 
(assert (not (= var395 null-String)))
(declare-const var2992 Bool) ; Statement: z0 := @parameter13: boolean 
(assert (not (= var2992 null-Bool)))
(assert true)
(define-const var3176 ClassObject (resolveResultJavaType/1315795284 var1166 var230 var2087 var269)) ; Statement: r4 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.Class resolveResultJavaType(java.lang.Class,java.lang.String,java.lang.Class)>(r1, r2, r3) 
(assert true)
(define-const var711 var3180 (resolveTypeHandler/2103691376 (cast-from-var454-to-var1391 var1166) var3176 var1102)) ; Statement: r6 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.type.TypeHandler resolveTypeHandler(java.lang.Class,java.lang.Class)>(r4, r5) 
 ; Statement: if r7 == null goto (branch) 
(assert (= var373 null-String)) ; Cond: r7 == null 
 ; Statement: if r8 == null goto r25 = staticinvoke <java.util.Collections: java.util.List emptyList()>() 
(assert (= var395 null-String)) ; Cond: r8 == null 
(define-const var1829 var307 var2316_emptyList/582664469) ; Statement: r25 = staticinvoke <java.util.Collections: java.util.List emptyList()>() 
 ; Statement: goto [?= $r35 = new org.apache.ibatis.mapping.ResultMapping$Builder] 
(assert true) ; Non Conditional
(define-const var134 var1500 var1500-init) ; Statement: $r35 = new org.apache.ibatis.mapping.ResultMapping$Builder 
(define-const var1533 var3832 (configuration/-1217462027 (cast-from-var454-to-var1391 var1166))) ; Statement: $r27 = r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.session.Configuration configuration> 
(assert true)
;(assert (<init>/-1843057489 var134 var1533 var2087 var3583 var3176)) ; Statement: specialinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: void <init>(org.apache.ibatis.session.Configuration,java.lang.String,java.lang.String,java.lang.Class)>($r27, r2, r9, r4) 

(declare-const var134!1 var1500)
(declare-const var1533!1 var3832)
(declare-const var2087!1 String)
(declare-const var3583!1 String)
(declare-const var3176!1 ClassObject)
(assert true)
(define-const var1407 var1500 (jdbcType/-440640461 var134!1 var3893)) ; Statement: $r28 = virtualinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder jdbcType(org.apache.ibatis.type.JdbcType)>(r10) 
(assert true)
(define-const var1228 String (applyCurrentNamespace/296309646 var1166 var373 (ite (= 1 1) true false))) ; Statement: $r29 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r7, 1) 
(assert true)
(define-const var1889 var1500 (nestedQueryId/725225408 var1407 var1228)) ; Statement: $r30 = virtualinvoke $r28.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedQueryId(java.lang.String)>($r29) 
(assert true)
(define-const var2464 String (applyCurrentNamespace/296309646 var1166 var1627 (ite (= 1 1) true false))) ; Statement: $r31 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r11, 1) 
(assert true)
(define-const var3393 var1500 (nestedResultMapId/-2092657559 var1889 var2464)) ; Statement: $r32 = virtualinvoke $r30.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedResultMapId(java.lang.String)>($r31) 
(assert true)
(define-const var1855 var1500 (resultSet/-891056089 var3393 var1958)) ; Statement: $r33 = virtualinvoke $r32.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder resultSet(java.lang.String)>(r12) 
(assert true)
(define-const var2220 var1500 (typeHandler/288997941 var1855 var711)) ; Statement: $r14 = virtualinvoke $r33.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder typeHandler(org.apache.ibatis.type.TypeHandler)>(r6) 
 ; Statement: if r13 != null goto $r34 = r13 
(assert (not (not (= var95 null-var307)))) ; Negate: Cond: r13 != null  
(define-const var2355 var3797 var3797-init) ; Statement: $r36 = new java.util.ArrayList 
(define-const var2767 var307 (cast-from-var3797-to-var307 var2355)) ; Statement: $r34 = $r36 
(assert true)
;(assert (<init>/-325640736 var2355)) ; Statement: specialinvoke $r36.<java.util.ArrayList: void <init>()>() 

(declare-const var2355!1 var3797)
 ; Statement: goto [?= $r15 = virtualinvoke $r14.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder flags(java.util.List)>($r34)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2329 var1500 (flags/-36581666 var2220 var2767)) ; Statement: $r15 = virtualinvoke $r14.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder flags(java.util.List)>($r34) 
(assert true)
(define-const var1133 var1500 (composites/1630311141 var2329 var1829)) ; Statement: $r18 = virtualinvoke $r15.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder composites(java.util.List)>(r25) 
(assert true)
(define-const var602 var2310 (parseMultipleColumnNames/1620927130 var1166 var2583)) ; Statement: $r17 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.Set parseMultipleColumnNames(java.lang.String)>(r16) 
(assert true)
(define-const var3995 var1500 (notNullColumns/1011836924 var1133 var602)) ; Statement: $r20 = virtualinvoke $r18.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder notNullColumns(java.util.Set)>($r17) 
(assert true)
(define-const var2661 var1500 (columnPrefix/-1430304016 var3995 var1945)) ; Statement: $r21 = virtualinvoke $r20.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder columnPrefix(java.lang.String)>(r19) 
(assert true)
(define-const var700 var1500 (foreignColumn/-192971582 var2661 var395)) ; Statement: $r22 = virtualinvoke $r21.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder foreignColumn(java.lang.String)>(r8) 
(assert true)
(define-const var3598 var1500 (lazy/-345882893 var700 var2992)) ; Statement: $r23 = virtualinvoke $r22.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder lazy(boolean)>(z0) 
(assert true)
(define-const var1062 var2931 (build/-425815056 var3598)) ; Statement: $r24 = virtualinvoke $r23.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping build()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {resolveResultJavaType/1315795284=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.Class, java.lang.String, java.lang.Class], java.lang.Class), resolveTypeHandler/2103691376=([org.apache.ibatis.builder.BaseBuilder, java.lang.Class, java.lang.Class], org.apache.ibatis.type.TypeHandler), cast-from-var454-to-var1391=([org.apache.ibatis.builder.MapperBuilderAssistant], org.apache.ibatis.builder.BaseBuilder), var2316_emptyList/582664469=([], java.util.List), var1500-init=([], org.apache.ibatis.mapping.ResultMapping$Builder), configuration/-1217462027=([org.apache.ibatis.builder.BaseBuilder], org.apache.ibatis.session.Configuration), <init>/-1843057489=([org.apache.ibatis.mapping.ResultMapping$Builder, org.apache.ibatis.session.Configuration, java.lang.String, java.lang.String, java.lang.Class], void), jdbcType/-440640461=([org.apache.ibatis.mapping.ResultMapping$Builder, org.apache.ibatis.type.JdbcType], org.apache.ibatis.mapping.ResultMapping$Builder), applyCurrentNamespace/296309646=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, boolean], java.lang.String), nestedQueryId/725225408=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), nestedResultMapId/-2092657559=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), resultSet/-891056089=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), typeHandler/288997941=([org.apache.ibatis.mapping.ResultMapping$Builder, org.apache.ibatis.type.TypeHandler], org.apache.ibatis.mapping.ResultMapping$Builder), var3797-init=([], java.util.ArrayList), cast-from-var3797-to-var307=([java.util.ArrayList], java.util.List), <init>/-325640736=([java.util.ArrayList], void), flags/-36581666=([org.apache.ibatis.mapping.ResultMapping$Builder, java.util.List], org.apache.ibatis.mapping.ResultMapping$Builder), composites/1630311141=([org.apache.ibatis.mapping.ResultMapping$Builder, java.util.List], org.apache.ibatis.mapping.ResultMapping$Builder), parseMultipleColumnNames/1620927130=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String], java.util.Set), notNullColumns/1011836924=([org.apache.ibatis.mapping.ResultMapping$Builder, java.util.Set], org.apache.ibatis.mapping.ResultMapping$Builder), columnPrefix/-1430304016=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), foreignColumn/-192971582=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), lazy/-345882893=([org.apache.ibatis.mapping.ResultMapping$Builder, boolean], org.apache.ibatis.mapping.ResultMapping$Builder), build/-425815056=([org.apache.ibatis.mapping.ResultMapping$Builder], org.apache.ibatis.mapping.ResultMapping)}
; {var454=org.apache.ibatis.builder.MapperBuilderAssistant, var1166=r0, var230=r1, var2087=r2, var3021=null_type, var3583=r9, var269=r3, var3671=org.apache.ibatis.type.JdbcType, var3893=r10, var373=r7, var1627=r11, var2583=r16, var1945=r19, var1102=r5, var307=java.util.List, var95=r13, var1958=r12, var395=r8, var2992=z0, var3176=r4, var3180=org.apache.ibatis.type.TypeHandler, var1391=org.apache.ibatis.builder.BaseBuilder, var711=r6, var2316=java.util.Collections, var1829=r25, var1500=org.apache.ibatis.mapping.ResultMapping$Builder, var134=$r35, var3832=org.apache.ibatis.session.Configuration, var1533=$r27, var1407=$r28, var1228=$r29, var1889=$r30, var2464=$r31, var3393=$r32, var1855=$r33, var2220=$r14, var3797=java.util.ArrayList, var2355=$r36, var2767=$r34, var2329=$r15, var1133=$r18, var2310=java.util.Set, var602=$r17, var3995=$r20, var2661=$r21, var700=$r22, var3598=$r23, var2931=org.apache.ibatis.mapping.ResultMapping, var1062=$r24}
; {org.apache.ibatis.builder.MapperBuilderAssistant=var454, r0=var1166, r1=var230, r2=var2087, null_type=var3021, r9=var3583, r3=var269, org.apache.ibatis.type.JdbcType=var3671, r10=var3893, r7=var373, r11=var1627, r16=var2583, r19=var1945, r5=var1102, java.util.List=var307, r13=var95, r12=var1958, r8=var395, z0=var2992, r4=var3176, org.apache.ibatis.type.TypeHandler=var3180, org.apache.ibatis.builder.BaseBuilder=var1391, r6=var711, java.util.Collections=var2316, r25=var1829, org.apache.ibatis.mapping.ResultMapping$Builder=var1500, $r35=var134, org.apache.ibatis.session.Configuration=var3832, $r27=var1533, $r28=var1407, $r29=var1228, $r30=var1889, $r31=var2464, $r32=var3393, $r33=var1855, $r14=var2220, java.util.ArrayList=var3797, $r36=var2355, $r34=var2767, $r15=var2329, $r18=var1133, java.util.Set=var2310, $r17=var602, $r20=var3995, $r21=var2661, $r22=var700, $r23=var3598, org.apache.ibatis.mapping.ResultMapping=var2931, $r24=var1062}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.builder.MapperBuilderAssistant;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r9 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.Class;	r10 := @parameter4: org.apache.ibatis.type.JdbcType;	r7 := @parameter5: java.lang.String;	r11 := @parameter6: java.lang.String;	r16 := @parameter7: java.lang.String;	r19 := @parameter8: java.lang.String;	r5 := @parameter9: java.lang.Class;	r13 := @parameter10: java.util.List;	r12 := @parameter11: java.lang.String;	r8 := @parameter12: java.lang.String;	z0 := @parameter13: boolean;	r4 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.Class resolveResultJavaType(java.lang.Class,java.lang.String,java.lang.Class)>(r1, r2, r3);	r6 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.type.TypeHandler resolveTypeHandler(java.lang.Class,java.lang.Class)>(r4, r5);	if r7 == null goto (branch);	if r8 == null goto r25 = staticinvoke <java.util.Collections: java.util.List emptyList()>();	r25 = staticinvoke <java.util.Collections: java.util.List emptyList()>();	goto [?= $r35 = new org.apache.ibatis.mapping.ResultMapping$Builder];	$r35 = new org.apache.ibatis.mapping.ResultMapping$Builder;	$r27 = r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.session.Configuration configuration>;	specialinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: void <init>(org.apache.ibatis.session.Configuration,java.lang.String,java.lang.String,java.lang.Class)>($r27, r2, r9, r4);	$r28 = virtualinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder jdbcType(org.apache.ibatis.type.JdbcType)>(r10);	$r29 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r7, 1);	$r30 = virtualinvoke $r28.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedQueryId(java.lang.String)>($r29);	$r31 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r11, 1);	$r32 = virtualinvoke $r30.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedResultMapId(java.lang.String)>($r31);	$r33 = virtualinvoke $r32.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder resultSet(java.lang.String)>(r12);	$r14 = virtualinvoke $r33.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder typeHandler(org.apache.ibatis.type.TypeHandler)>(r6);	if r13 != null goto $r34 = r13;	$r36 = new java.util.ArrayList;	$r34 = $r36;	specialinvoke $r36.<java.util.ArrayList: void <init>()>();	goto [?= $r15 = virtualinvoke $r14.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder flags(java.util.List)>($r34)];	$r15 = virtualinvoke $r14.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder flags(java.util.List)>($r34);	$r18 = virtualinvoke $r15.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder composites(java.util.List)>(r25);	$r17 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.Set parseMultipleColumnNames(java.lang.String)>(r16);	$r20 = virtualinvoke $r18.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder notNullColumns(java.util.Set)>($r17);	$r21 = virtualinvoke $r20.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder columnPrefix(java.lang.String)>(r19);	$r22 = virtualinvoke $r21.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder foreignColumn(java.lang.String)>(r8);	$r23 = virtualinvoke $r22.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder lazy(boolean)>(z0);	$r24 = virtualinvoke $r23.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping build()>();	return $r24
;block_num 6
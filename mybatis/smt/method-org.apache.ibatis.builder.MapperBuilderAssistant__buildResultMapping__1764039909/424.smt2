(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var469 0)
(declare-sort var3691 0)
(declare-sort var2095 0)
(declare-sort var3268 0)
(declare-sort var239 0)
(declare-sort var1766 0)
(declare-sort var3128 0)
(declare-sort var1079 0)
(declare-sort var1755 0)
(declare-sort var1758 0)
(declare-sort var2000 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resolveResultJavaType/1315795284 (var469 ClassObject String ClassObject) ClassObject)
(declare-fun resolveTypeHandler/2103691376 (var1766 ClassObject ClassObject) var239)
(declare-fun cast-from-var469-to-var1766 (var469) var1766)
(declare-fun var3128_emptyList/582664469 () var3268)
(declare-fun var1079-init () var1079)
(declare-fun configuration/-1217462027 (var1766) var1755)
(declare-fun <init>/-1843057489 (var1079 var1755 String String ClassObject) void)
(declare-fun jdbcType/-440640461 (var1079 var2095) var1079)
(declare-fun applyCurrentNamespace/296309646 (var469 String Bool) String)
(declare-fun nestedQueryId/725225408 (var1079 String) var1079)
(declare-fun nestedResultMapId/-2092657559 (var1079 String) var1079)
(declare-fun resultSet/-891056089 (var1079 String) var1079)
(declare-fun typeHandler/288997941 (var1079 var239) var1079)
(declare-fun flags/-36581666 (var1079 var3268) var1079)
(declare-fun composites/1630311141 (var1079 var3268) var1079)
(declare-fun parseMultipleColumnNames/1620927130 (var469 String) var1758)
(declare-fun notNullColumns/1011836924 (var1079 var1758) var1079)
(declare-fun columnPrefix/-1430304016 (var1079 String) var1079)
(declare-fun foreignColumn/-192971582 (var1079 String) var1079)
(declare-fun lazy/-345882893 (var1079 Bool) var1079)
(declare-fun build/-425815056 (var1079) var2000)
(declare-const null-var469 var469)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var2095 var2095)
(declare-const null-var3268 var3268)
(declare-const null-Bool Bool)
(declare-const var1120 var469) ; Statement: r0 := @this: org.apache.ibatis.builder.MapperBuilderAssistant 
(assert (not (= var1120 null-var469)))
(declare-const var3725 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3725 null-ClassObject)))
(declare-const var2571 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2571 null-String)))
(declare-const var3498 String) ; Statement: r9 := @parameter2: java.lang.String 
(assert (not (= var3498 null-String)))
(declare-const var1502 ClassObject) ; Statement: r3 := @parameter3: java.lang.Class 
(assert (not (= var1502 null-ClassObject)))
(declare-const var2407 var2095) ; Statement: r10 := @parameter4: org.apache.ibatis.type.JdbcType 
(assert (not (= var2407 null-var2095)))
(declare-const var3252 String) ; Statement: r7 := @parameter5: java.lang.String 
(assert (not (= var3252 null-String)))
(declare-const var3241 String) ; Statement: r11 := @parameter6: java.lang.String 
(assert (not (= var3241 null-String)))
(declare-const var3914 String) ; Statement: r16 := @parameter7: java.lang.String 
(assert (not (= var3914 null-String)))
(declare-const var391 String) ; Statement: r19 := @parameter8: java.lang.String 
(assert (not (= var391 null-String)))
(declare-const var483 ClassObject) ; Statement: r5 := @parameter9: java.lang.Class 
(assert (not (= var483 null-ClassObject)))
(declare-const var1261 var3268) ; Statement: r13 := @parameter10: java.util.List 
(assert (not (= var1261 null-var3268)))
(declare-const var1712 String) ; Statement: r12 := @parameter11: java.lang.String 
(assert (not (= var1712 null-String)))
(declare-const var9 String) ; Statement: r8 := @parameter12: java.lang.String 
(assert (not (= var9 null-String)))
(declare-const var3167 Bool) ; Statement: z0 := @parameter13: boolean 
(assert (not (= var3167 null-Bool)))
(assert true)
(define-const var934 ClassObject (resolveResultJavaType/1315795284 var1120 var3725 var2571 var1502)) ; Statement: r4 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.Class resolveResultJavaType(java.lang.Class,java.lang.String,java.lang.Class)>(r1, r2, r3) 
(assert true)
(define-const var216 var239 (resolveTypeHandler/2103691376 (cast-from-var469-to-var1766 var1120) var934 var483)) ; Statement: r6 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.type.TypeHandler resolveTypeHandler(java.lang.Class,java.lang.Class)>(r4, r5) 
 ; Statement: if r7 == null goto (branch) 
(assert (= var3252 null-String)) ; Cond: r7 == null 
 ; Statement: if r8 == null goto r25 = staticinvoke <java.util.Collections: java.util.List emptyList()>() 
(assert (= var9 null-String)) ; Cond: r8 == null 
(define-const var2669 var3268 var3128_emptyList/582664469) ; Statement: r25 = staticinvoke <java.util.Collections: java.util.List emptyList()>() 
 ; Statement: goto [?= $r35 = new org.apache.ibatis.mapping.ResultMapping$Builder] 
(assert true) ; Non Conditional
(define-const var394 var1079 var1079-init) ; Statement: $r35 = new org.apache.ibatis.mapping.ResultMapping$Builder 
(define-const var157 var1755 (configuration/-1217462027 (cast-from-var469-to-var1766 var1120))) ; Statement: $r27 = r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.session.Configuration configuration> 
(assert true)
;(assert (<init>/-1843057489 var394 var157 var2571 var3498 var934)) ; Statement: specialinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: void <init>(org.apache.ibatis.session.Configuration,java.lang.String,java.lang.String,java.lang.Class)>($r27, r2, r9, r4) 

(declare-const var394!1 var1079)
(declare-const var157!1 var1755)
(declare-const var2571!1 String)
(declare-const var3498!1 String)
(declare-const var934!1 ClassObject)
(assert true)
(define-const var3580 var1079 (jdbcType/-440640461 var394!1 var2407)) ; Statement: $r28 = virtualinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder jdbcType(org.apache.ibatis.type.JdbcType)>(r10) 
(assert true)
(define-const var2147 String (applyCurrentNamespace/296309646 var1120 var3252 (ite (= 1 1) true false))) ; Statement: $r29 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r7, 1) 
(assert true)
(define-const var845 var1079 (nestedQueryId/725225408 var3580 var2147)) ; Statement: $r30 = virtualinvoke $r28.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedQueryId(java.lang.String)>($r29) 
(assert true)
(define-const var2331 String (applyCurrentNamespace/296309646 var1120 var3241 (ite (= 1 1) true false))) ; Statement: $r31 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r11, 1) 
(assert true)
(define-const var879 var1079 (nestedResultMapId/-2092657559 var845 var2331)) ; Statement: $r32 = virtualinvoke $r30.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedResultMapId(java.lang.String)>($r31) 
(assert true)
(define-const var1274 var1079 (resultSet/-891056089 var879 var1712)) ; Statement: $r33 = virtualinvoke $r32.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder resultSet(java.lang.String)>(r12) 
(assert true)
(define-const var3911 var1079 (typeHandler/288997941 var1274 var216)) ; Statement: $r14 = virtualinvoke $r33.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder typeHandler(org.apache.ibatis.type.TypeHandler)>(r6) 
 ; Statement: if r13 != null goto $r34 = r13 
(assert (not (= var1261 null-var3268))) ; Cond: r13 != null 
(define-const var2216 var3268 var1261) ; Statement: $r34 = r13 
(assert true) ; Non Conditional
(assert true)
(define-const var3516 var1079 (flags/-36581666 var3911 var2216)) ; Statement: $r15 = virtualinvoke $r14.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder flags(java.util.List)>($r34) 
(assert true)
(define-const var1694 var1079 (composites/1630311141 var3516 var2669)) ; Statement: $r18 = virtualinvoke $r15.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder composites(java.util.List)>(r25) 
(assert true)
(define-const var3537 var1758 (parseMultipleColumnNames/1620927130 var1120 var3914)) ; Statement: $r17 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.Set parseMultipleColumnNames(java.lang.String)>(r16) 
(assert true)
(define-const var3327 var1079 (notNullColumns/1011836924 var1694 var3537)) ; Statement: $r20 = virtualinvoke $r18.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder notNullColumns(java.util.Set)>($r17) 
(assert true)
(define-const var1283 var1079 (columnPrefix/-1430304016 var3327 var391)) ; Statement: $r21 = virtualinvoke $r20.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder columnPrefix(java.lang.String)>(r19) 
(assert true)
(define-const var3768 var1079 (foreignColumn/-192971582 var1283 var9)) ; Statement: $r22 = virtualinvoke $r21.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder foreignColumn(java.lang.String)>(r8) 
(assert true)
(define-const var883 var1079 (lazy/-345882893 var3768 var3167)) ; Statement: $r23 = virtualinvoke $r22.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder lazy(boolean)>(z0) 
(assert true)
(define-const var586 var2000 (build/-425815056 var883)) ; Statement: $r24 = virtualinvoke $r23.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping build()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {resolveResultJavaType/1315795284=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.Class, java.lang.String, java.lang.Class], java.lang.Class), resolveTypeHandler/2103691376=([org.apache.ibatis.builder.BaseBuilder, java.lang.Class, java.lang.Class], org.apache.ibatis.type.TypeHandler), cast-from-var469-to-var1766=([org.apache.ibatis.builder.MapperBuilderAssistant], org.apache.ibatis.builder.BaseBuilder), var3128_emptyList/582664469=([], java.util.List), var1079-init=([], org.apache.ibatis.mapping.ResultMapping$Builder), configuration/-1217462027=([org.apache.ibatis.builder.BaseBuilder], org.apache.ibatis.session.Configuration), <init>/-1843057489=([org.apache.ibatis.mapping.ResultMapping$Builder, org.apache.ibatis.session.Configuration, java.lang.String, java.lang.String, java.lang.Class], void), jdbcType/-440640461=([org.apache.ibatis.mapping.ResultMapping$Builder, org.apache.ibatis.type.JdbcType], org.apache.ibatis.mapping.ResultMapping$Builder), applyCurrentNamespace/296309646=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, boolean], java.lang.String), nestedQueryId/725225408=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), nestedResultMapId/-2092657559=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), resultSet/-891056089=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), typeHandler/288997941=([org.apache.ibatis.mapping.ResultMapping$Builder, org.apache.ibatis.type.TypeHandler], org.apache.ibatis.mapping.ResultMapping$Builder), flags/-36581666=([org.apache.ibatis.mapping.ResultMapping$Builder, java.util.List], org.apache.ibatis.mapping.ResultMapping$Builder), composites/1630311141=([org.apache.ibatis.mapping.ResultMapping$Builder, java.util.List], org.apache.ibatis.mapping.ResultMapping$Builder), parseMultipleColumnNames/1620927130=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String], java.util.Set), notNullColumns/1011836924=([org.apache.ibatis.mapping.ResultMapping$Builder, java.util.Set], org.apache.ibatis.mapping.ResultMapping$Builder), columnPrefix/-1430304016=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), foreignColumn/-192971582=([org.apache.ibatis.mapping.ResultMapping$Builder, java.lang.String], org.apache.ibatis.mapping.ResultMapping$Builder), lazy/-345882893=([org.apache.ibatis.mapping.ResultMapping$Builder, boolean], org.apache.ibatis.mapping.ResultMapping$Builder), build/-425815056=([org.apache.ibatis.mapping.ResultMapping$Builder], org.apache.ibatis.mapping.ResultMapping)}
; {var469=org.apache.ibatis.builder.MapperBuilderAssistant, var1120=r0, var3725=r1, var2571=r2, var3691=null_type, var3498=r9, var1502=r3, var2095=org.apache.ibatis.type.JdbcType, var2407=r10, var3252=r7, var3241=r11, var3914=r16, var391=r19, var483=r5, var3268=java.util.List, var1261=r13, var1712=r12, var9=r8, var3167=z0, var934=r4, var239=org.apache.ibatis.type.TypeHandler, var1766=org.apache.ibatis.builder.BaseBuilder, var216=r6, var3128=java.util.Collections, var2669=r25, var1079=org.apache.ibatis.mapping.ResultMapping$Builder, var394=$r35, var1755=org.apache.ibatis.session.Configuration, var157=$r27, var3580=$r28, var2147=$r29, var845=$r30, var2331=$r31, var879=$r32, var1274=$r33, var3911=$r14, var2216=$r34, var3516=$r15, var1694=$r18, var1758=java.util.Set, var3537=$r17, var3327=$r20, var1283=$r21, var3768=$r22, var883=$r23, var2000=org.apache.ibatis.mapping.ResultMapping, var586=$r24}
; {org.apache.ibatis.builder.MapperBuilderAssistant=var469, r0=var1120, r1=var3725, r2=var2571, null_type=var3691, r9=var3498, r3=var1502, org.apache.ibatis.type.JdbcType=var2095, r10=var2407, r7=var3252, r11=var3241, r16=var3914, r19=var391, r5=var483, java.util.List=var3268, r13=var1261, r12=var1712, r8=var9, z0=var3167, r4=var934, org.apache.ibatis.type.TypeHandler=var239, org.apache.ibatis.builder.BaseBuilder=var1766, r6=var216, java.util.Collections=var3128, r25=var2669, org.apache.ibatis.mapping.ResultMapping$Builder=var1079, $r35=var394, org.apache.ibatis.session.Configuration=var1755, $r27=var157, $r28=var3580, $r29=var2147, $r30=var845, $r31=var2331, $r32=var879, $r33=var1274, $r14=var3911, $r34=var2216, $r15=var3516, $r18=var1694, java.util.Set=var1758, $r17=var3537, $r20=var3327, $r21=var1283, $r22=var3768, $r23=var883, org.apache.ibatis.mapping.ResultMapping=var2000, $r24=var586}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.builder.MapperBuilderAssistant;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r9 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.Class;	r10 := @parameter4: org.apache.ibatis.type.JdbcType;	r7 := @parameter5: java.lang.String;	r11 := @parameter6: java.lang.String;	r16 := @parameter7: java.lang.String;	r19 := @parameter8: java.lang.String;	r5 := @parameter9: java.lang.Class;	r13 := @parameter10: java.util.List;	r12 := @parameter11: java.lang.String;	r8 := @parameter12: java.lang.String;	z0 := @parameter13: boolean;	r4 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.Class resolveResultJavaType(java.lang.Class,java.lang.String,java.lang.Class)>(r1, r2, r3);	r6 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.type.TypeHandler resolveTypeHandler(java.lang.Class,java.lang.Class)>(r4, r5);	if r7 == null goto (branch);	if r8 == null goto r25 = staticinvoke <java.util.Collections: java.util.List emptyList()>();	r25 = staticinvoke <java.util.Collections: java.util.List emptyList()>();	goto [?= $r35 = new org.apache.ibatis.mapping.ResultMapping$Builder];	$r35 = new org.apache.ibatis.mapping.ResultMapping$Builder;	$r27 = r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.session.Configuration configuration>;	specialinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: void <init>(org.apache.ibatis.session.Configuration,java.lang.String,java.lang.String,java.lang.Class)>($r27, r2, r9, r4);	$r28 = virtualinvoke $r35.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder jdbcType(org.apache.ibatis.type.JdbcType)>(r10);	$r29 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r7, 1);	$r30 = virtualinvoke $r28.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedQueryId(java.lang.String)>($r29);	$r31 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r11, 1);	$r32 = virtualinvoke $r30.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder nestedResultMapId(java.lang.String)>($r31);	$r33 = virtualinvoke $r32.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder resultSet(java.lang.String)>(r12);	$r14 = virtualinvoke $r33.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder typeHandler(org.apache.ibatis.type.TypeHandler)>(r6);	if r13 != null goto $r34 = r13;	$r34 = r13;	$r15 = virtualinvoke $r14.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder flags(java.util.List)>($r34);	$r18 = virtualinvoke $r15.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder composites(java.util.List)>(r25);	$r17 = specialinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.util.Set parseMultipleColumnNames(java.lang.String)>(r16);	$r20 = virtualinvoke $r18.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder notNullColumns(java.util.Set)>($r17);	$r21 = virtualinvoke $r20.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder columnPrefix(java.lang.String)>(r19);	$r22 = virtualinvoke $r21.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder foreignColumn(java.lang.String)>(r8);	$r23 = virtualinvoke $r22.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping$Builder lazy(boolean)>(z0);	$r24 = virtualinvoke $r23.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping build()>();	return $r24
;block_num 6
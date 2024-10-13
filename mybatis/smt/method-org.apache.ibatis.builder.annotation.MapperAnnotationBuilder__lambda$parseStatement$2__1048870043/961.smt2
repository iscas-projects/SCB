(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var711 0)
(declare-sort var3941 0)
(declare-sort var2622 0)
(declare-sort var2457 0)
(declare-sort var3959 0)
(declare-sort var1560 0)
(declare-sort var3167 0)
(declare-sort var2374 0)
(declare-sort var919 0)
(declare-sort var719 0)
(declare-sort var3458 0)
(declare-sort var2118 0)
(declare-sort var1274 0)
(declare-sort var3845 0)
(declare-sort var578 0)
(declare-sort var1912 0)
(declare-sort var516 0)
(declare-sort var1080 0)
(declare-sort var2321 0)
(declare-sort var3977 0)
(declare-sort var342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2374!class ClassObject)
(declare-fun getAnnotation/1211161445 (var2457) var3959)
(declare-fun buildSqlSource/1129554691 (var711 var3959 ClassObject var3941 var2622) var1560)
(declare-fun getSqlCommandType/1172365906 (var2457) var3167)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun getAnnotationWrapper/-1343245648 (var711 var2622 Bool (Array Int ClassObject)) var919)
(declare-fun var3458_bootstrap$/449714105 () var719)
(declare-fun map/1305667865 (var919 var719) var919)
(declare-fun orElse/-757175127 (var919 var2118) var2118)
(declare-fun cast-from-var2118-to-var2374 (var2118) var2374)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-1562462879 (var711) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1227988463 (var2622) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun equals/1194252418 (var3845 var2118) Bool)
(declare-fun cast-from-var3167-to-var3845 (var3167) var3845)
(declare-fun cast-from-var3167-to-var2118 (var3167) var2118)
(declare-fun cast-from-var1912-to-var578 (var1912) var578)
(declare-fun configuration/-1562462879 (var711) var1080)
(declare-fun getDefaultResultSetType/2016612370 (var1080) var2321)
(declare-fun assistant/-1562462879 (var711) var3977)
(declare-fun var711_getReturnType/-629822788 (var2622 ClassObject) ClassObject)
(declare-fun getDatabaseId/1468239399 (var2457) String)
(declare-fun isDirtySelect/42750390 (var2457) Bool)
(declare-fun addMappedStatement/-1285273847 (var3977 String var1560 var516 var3167 Int Int String ClassObject String ClassObject var2321 Bool Bool Bool var578 String String String var3941 String Bool) var342)
(declare-const null-var711 var711)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3941 var3941)
(declare-const null-var2622 var2622)
(declare-const null-var2457 var2457)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-NullType var1274)
(declare-const null-var2118 var2118)
(declare-const null-String String)
(declare-const var3167-INSERT var3167)
(declare-const var3167-UPDATE var3167)
(declare-const var1912-INSTANCE var1912)
(declare-const null-Int Int)
(declare-const var516-PREPARED var516)
(declare-const var3167-SELECT var3167)
(declare-const null-var2374 var2374)
(declare-const var2544 var711) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var2544 null-var711)))
(declare-const var3565 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var3565 null-ClassObject)))
(declare-const var506 var3941) ; Statement: r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver 
(assert (not (= var506 null-var3941)))
(declare-const var63 var2622) ; Statement: r4 := @parameter2: java.lang.reflect.Method 
(assert (not (= var63 null-var2622)))
(declare-const var1034 var2457) ; Statement: r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper 
(assert (not (= var1034 null-var2457)))
(assert true)
(define-const var3376 var3959 (getAnnotation/1211161445 var1034)) ; Statement: $r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>() 
(assert true)
(define-const var1331 var1560 (buildSqlSource/1129554691 var2544 var3376 var3565 var506 var63)) ; Statement: r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4) 
(assert true)
(define-const var274 var3167 (getSqlCommandType/1172365906 var1034)) ; Statement: r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>() 
(define-const var1729 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r8 = newarray (java.lang.Class)[1] 
(declare-const var1729!1 (Array Int ClassObject))
(assert (not (= var1729!1 null-__Array__Int__ClassObject__)))
(assert (= (select var1729!1 0) var2374!class)) ; Statement: $r8[0] = class "Lorg/apache/ibatis/annotations/Options;" 
(assert true)
(define-const var2331 var919 (getAnnotationWrapper/-1343245648 var2544 var63 (ite (= 1 0) true false) var1729!1)) ; Statement: $r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8) 
(define-const var2732 var719 var3458_bootstrap$/449714105) ; Statement: $r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var3811 var919 (map/1305667865 var2331 var2732)) ; Statement: $r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9) 
(assert true)
(define-const var315 var2118 (orElse/-757175127 var3811 null-var2118)) ; Statement: $r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null) 
(define-const var1276 var2374 (cast-from-var2118-to-var2374 var315)) ; Statement: r13 = (org.apache.ibatis.annotations.Options) $r12 
(define-const var3712 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3712)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3712!1 String)
(assert (= var3712!1 ""))
(define-const var3592 ClassObject (type/-1562462879 var2544)) ; Statement: $r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(assert true)
(define-const var1004 String (getName/-1958580599 var3592)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1017 String (append/672562846 var3712!1 var1004)) ; Statement: $r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3712!2 String)
(assert (= var3712!2 (str.++ var3712!1 var1004)))
(assert true)
(define-const var3019 String (append/672562846 var1017 ".")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1017!1 String)
(assert (= var1017!1 (str.++ var1017 ".")))
(assert true)
(define-const var1842 String (getName/1227988463 var63)) ; Statement: $r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1136 String (append/672562846 var3019 var1842)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3019!1 String)
(assert (= var3019!1 (str.++ var3019 var1842)))
(assert true)
(define-const var1190 String (toString/-2075883882 var1136)) ; Statement: r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var535 String null-String) ; Statement: r55 = null 
(define-const var1674 String null-String) ; Statement: r56 = null 
(define-const var1430 var3167 var3167-INSERT) ; Statement: $r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT> 
(assert true)
(define-const var3868 Bool (equals/1194252418 (cast-from-var3167-to-var3845 var1430) (cast-from-var3167-to-var2118 var274))) ; Statement: $z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1] 
(assert (not (not (= (ite var3868 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2306 var3167 var3167-UPDATE) ; Statement: $r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE> 
(assert true)
(define-const var3818 Bool (equals/1194252418 (cast-from-var3167-to-var3845 var2306) (cast-from-var3167-to-var2118 var274))) ; Statement: $z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert (= (ite var3818 1 0) 0)) ; Cond: $z9 == 0 
(define-const var1329 var578 (cast-from-var1912-to-var578 var1912-INSTANCE)) ; Statement: r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert true) ; Non Conditional
(define-const var3668 Int null-Int) ; Statement: r60 = null 
(define-const var25 Int null-Int) ; Statement: r61 = null 
(define-const var2995 var516 var516-PREPARED) ; Statement: r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED> 
(define-const var998 var1080 (configuration/-1562462879 var2544)) ; Statement: $r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var3441 var2321 (getDefaultResultSetType/2016612370 var998)) ; Statement: r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>() 
(define-const var2084 var3167 var3167-SELECT) ; Statement: $r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT> 
 ; Statement: if r7 != $r29 goto $z15 = 0 
(assert (not (not (= var274 var2084)))) ; Negate: Cond: r7 != $r29  
(define-const var2973 Bool (ite (= 1 1) true false)) ; Statement: $z15 = 1 
(define-const var2280 Bool (ite (= 1 1) true false)) ; Statement: $z14 = 1 
 ; Statement: goto [?= z2 = $z15] 
(assert true) ; Non Conditional
(define-const var609 Bool var2973) ; Statement: z2 = $z15 
 ; Statement: if $z14 != 0 goto $z11 = 0 
(assert (not (= (ite var2280 1 0) 0))) ; Cond: $z14 != 0 
(define-const var161 Bool (ite (= 1 0) true false)) ; Statement: $z11 = 0 
(assert true) ; Non Conditional
(define-const var2665 Bool var161) ; Statement: z12 = $z11 
(define-const var1118 Bool var609) ; Statement: z13 = z2 
 ; Statement: if r13 == null goto r66 = null 
(assert (= var1276 null-var2374)) ; Cond: r13 == null 
(define-const var3966 String null-String) ; Statement: r66 = null 
 ; Statement: if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(assert (= (ite var609 1 0) 0)) ; Cond: z2 == 0 
(define-const var106 var3977 (assistant/-1562462879 var2544)) ; Statement: $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(define-const var3272 var516 var2995) ; Statement: $r34 = r62 
(define-const var2378 Int var3668) ; Statement: $r35 = r60 
(define-const var1371 Int var25) ; Statement: $r36 = r61 
(define-const var3625 String var3966) ; Statement: $r37 = r66 
(define-const var119 ClassObject (type/-1562462879 var2544)) ; Statement: $r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(define-const var3145 ClassObject (var711_getReturnType/-629822788 var63 var119)) ; Statement: $r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67) 
(define-const var2941 var2321 var3441) ; Statement: $r38 = r63 
(define-const var3386 Bool var2665) ; Statement: $z4 = z12 
(define-const var665 Bool var1118) ; Statement: $z5 = z13 
(define-const var1996 var578 var1329) ; Statement: $r39 = r57 
(define-const var3021 String var535) ; Statement: $r40 = r55 
(define-const var1454 String var1674) ; Statement: $r41 = r56 
(assert true)
(define-const var384 String (getDatabaseId/1468239399 var1034)) ; Statement: $r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>() 
 ; Statement: if r13 == null goto $r68 = null 
(assert (= var1276 null-var2374)) ; Cond: r13 == null 
(define-const var2743 String null-String) ; Statement: $r68 = null 
(assert true) ; Non Conditional
(assert true)
(define-const var3419 Bool (isDirtySelect/42750390 var1034)) ; Statement: $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>() 
(assert true)
;(assert (addMappedStatement/-1285273847 var106 var1190 var1331 var3272 var274 var2378 var1371 null-String var3565 var3625 var3145 var2941 var3386 var665 (ite (= 1 0) true false) var1996 var3021 var1454 var384 var506 var2743 var3419)) ; Statement: virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3) 

(declare-const var106!1 var3977)
(declare-const var1190!1 String)
(declare-const var1331!1 var1560)
(declare-const var3272!1 var516)
(declare-const var274!1 var3167)
(declare-const var2378!1 Int)
(declare-const var1371!1 Int)
(declare-const var2844 var1274)
(declare-const var3565!1 ClassObject)
(declare-const var3625!1 String)
(declare-const var3145!1 ClassObject)
(declare-const var2941!1 var2321)
(declare-const var3386!1 Bool)
(declare-const var665!1 Bool)
(declare-const var2527 Int)
(declare-const var1996!1 var578)
(declare-const var3021!1 String)
(declare-const var1454!1 String)
(declare-const var384!1 String)
(declare-const var506!1 var3941)
(declare-const var2743!1 String)
(declare-const var3419!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotation/1211161445=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.annotation.Annotation), buildSqlSource/1129554691=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.annotation.Annotation, java.lang.Class, org.apache.ibatis.scripting.LanguageDriver, java.lang.reflect.Method], org.apache.ibatis.mapping.SqlSource), getSqlCommandType/1172365906=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], org.apache.ibatis.mapping.SqlCommandType), arr-ClassObject-init=([], java.lang.Class[]), getAnnotationWrapper/-1343245648=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.reflect.Method, boolean, java.lang.Class[]], java.util.Optional), var3458_bootstrap$/449714105=([], java.util.function.Function), map/1305667865=([java.util.Optional, java.util.function.Function], java.util.Optional), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-var2118-to-var2374=([java.lang.Object], org.apache.ibatis.annotations.Options), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), equals/1194252418=([java.lang.Enum, java.lang.Object], boolean), cast-from-var3167-to-var3845=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Enum), cast-from-var3167-to-var2118=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Object), cast-from-var1912-to-var578=([org.apache.ibatis.executor.keygen.NoKeyGenerator], org.apache.ibatis.executor.keygen.KeyGenerator), configuration/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.session.Configuration), getDefaultResultSetType/2016612370=([org.apache.ibatis.session.Configuration], org.apache.ibatis.mapping.ResultSetType), assistant/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), var711_getReturnType/-629822788=([java.lang.reflect.Method, java.lang.Class], java.lang.Class), getDatabaseId/1468239399=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.String), isDirtySelect/42750390=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], boolean), addMappedStatement/-1285273847=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, org.apache.ibatis.mapping.SqlSource, org.apache.ibatis.mapping.StatementType, org.apache.ibatis.mapping.SqlCommandType, java.lang.Integer, java.lang.Integer, java.lang.String, java.lang.Class, java.lang.String, java.lang.Class, org.apache.ibatis.mapping.ResultSetType, boolean, boolean, boolean, org.apache.ibatis.executor.keygen.KeyGenerator, java.lang.String, java.lang.String, java.lang.String, org.apache.ibatis.scripting.LanguageDriver, java.lang.String, boolean], org.apache.ibatis.mapping.MappedStatement)}
; {var711=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var2544=r0, var3565=r2, var3941=org.apache.ibatis.scripting.LanguageDriver, var506=r3, var2622=java.lang.reflect.Method, var63=r4, var2457=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper, var1034=r1, var3959=java.lang.annotation.Annotation, var3376=$r5, var1560=org.apache.ibatis.mapping.SqlSource, var1331=r6, var3167=org.apache.ibatis.mapping.SqlCommandType, var274=r7, var1729=$r8, var2374=org.apache.ibatis.annotations.Options, var919=java.util.Optional, var2331=$r10, var719=java.util.function.Function, var3458=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6, var2732=$r9, var3811=$r11, var2118=java.lang.Object, var315=$r12, var1276=r13, var3712=$r69, var3592=$r15, var1004=$r16, var1017=$r17, var3019=$r19, var1842=$r18, var1136=$r20, var1190=r21, var1274=null_type, var535=r55, var1674=r56, var1430=$r22, var3845=java.lang.Enum, var3868=$z0, var2306=$r53, var3818=$z9, var578=org.apache.ibatis.executor.keygen.KeyGenerator, var1912=org.apache.ibatis.executor.keygen.NoKeyGenerator, var1329=r57, var3668=r60, var25=r61, var516=org.apache.ibatis.mapping.StatementType, var2995=r62, var1080=org.apache.ibatis.session.Configuration, var998=$r28, var2321=org.apache.ibatis.mapping.ResultSetType, var3441=r63, var2084=$r29, var2973=$z15, var2280=$z14, var609=z2, var161=$z11, var2665=z12, var1118=z13, var3966=r66, var3977=org.apache.ibatis.builder.MapperBuilderAssistant, var106=$r30, var3272=$r34, var2378=$r35, var1371=$r36, var3625=$r37, var119=$r67, var3145=$r32, var2941=$r38, var3386=$z4, var665=$z5, var1996=$r39, var3021=$r40, var1454=$r41, var384=$r31, var2743=$r68, var3419=$z3, var2844=null, var2527=0, var342=org.apache.ibatis.mapping.MappedStatement}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var711, r0=var2544, r2=var3565, org.apache.ibatis.scripting.LanguageDriver=var3941, r3=var506, java.lang.reflect.Method=var2622, r4=var63, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper=var2457, r1=var1034, java.lang.annotation.Annotation=var3959, $r5=var3376, org.apache.ibatis.mapping.SqlSource=var1560, r6=var1331, org.apache.ibatis.mapping.SqlCommandType=var3167, r7=var274, $r8=var1729, org.apache.ibatis.annotations.Options=var2374, java.util.Optional=var919, $r10=var2331, java.util.function.Function=var719, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6=var3458, $r9=var2732, $r11=var3811, java.lang.Object=var2118, $r12=var315, r13=var1276, $r69=var3712, $r15=var3592, $r16=var1004, $r17=var1017, $r19=var3019, $r18=var1842, $r20=var1136, r21=var1190, null_type=var1274, r55=var535, r56=var1674, $r22=var1430, java.lang.Enum=var3845, $z0=var3868, $r53=var2306, $z9=var3818, org.apache.ibatis.executor.keygen.KeyGenerator=var578, org.apache.ibatis.executor.keygen.NoKeyGenerator=var1912, r57=var1329, r60=var3668, r61=var25, org.apache.ibatis.mapping.StatementType=var516, r62=var2995, org.apache.ibatis.session.Configuration=var1080, $r28=var998, org.apache.ibatis.mapping.ResultSetType=var2321, r63=var3441, $r29=var2084, $z15=var2973, $z14=var2280, z2=var609, $z11=var161, z12=var2665, z13=var1118, r66=var3966, org.apache.ibatis.builder.MapperBuilderAssistant=var3977, $r30=var106, $r34=var3272, $r35=var2378, $r36=var1371, $r37=var3625, $r67=var119, $r32=var3145, $r38=var2941, $z4=var3386, $z5=var665, $r39=var1996, $r40=var3021, $r41=var1454, $r31=var384, $r68=var2743, $z3=var3419, null=var2844, 0=var2527, org.apache.ibatis.mapping.MappedStatement=var342}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r2 := @parameter0: java.lang.Class;	r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver;	r4 := @parameter2: java.lang.reflect.Method;	r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper;	$r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>();	r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4);	r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>();	$r8 = newarray (java.lang.Class)[1];	$r8[0] = class "Lorg/apache/ibatis/annotations/Options;";	$r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8);	$r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>();	$r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9);	$r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null);	r13 = (org.apache.ibatis.annotations.Options) $r12;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	r55 = null;	r56 = null;	$r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT>;	$z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1];	$r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE>;	$z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r60 = null;	r61 = null;	r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED>;	$r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration>;	r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>();	$r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT>;	if r7 != $r29 goto $z15 = 0;	$z15 = 1;	$z14 = 1;	goto [?= z2 = $z15];	z2 = $z15;	if $z14 != 0 goto $z11 = 0;	$z11 = 0;	z12 = $z11;	z13 = z2;	if r13 == null goto r66 = null;	r66 = null;	if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r34 = r62;	$r35 = r60;	$r36 = r61;	$r37 = r66;	$r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67);	$r38 = r63;	$z4 = z12;	$z5 = z13;	$r39 = r57;	$r40 = r55;	$r41 = r56;	$r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>();	if r13 == null goto $r68 = null;	$r68 = null;	$z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>();	virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3);	return
;block_num 12
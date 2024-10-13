(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2566 0)
(declare-sort var1781 0)
(declare-sort var1868 0)
(declare-sort var859 0)
(declare-sort var564 0)
(declare-sort var1558 0)
(declare-sort var897 0)
(declare-sort var2201 0)
(declare-sort var3677 0)
(declare-sort var2786 0)
(declare-sort var1636 0)
(declare-sort var885 0)
(declare-sort var1681 0)
(declare-sort var290 0)
(declare-sort var3506 0)
(declare-sort var168 0)
(declare-sort var1258 0)
(declare-sort var1740 0)
(declare-sort var3398 0)
(declare-sort var1452 0)
(declare-sort var3559 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2201!class ClassObject)
(declare-fun getAnnotation/1211161445 (var859) var564)
(declare-fun buildSqlSource/1129554691 (var2566 var564 ClassObject var1781 var1868) var1558)
(declare-fun getSqlCommandType/1172365906 (var859) var897)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun getAnnotationWrapper/-1343245648 (var2566 var1868 Bool (Array Int ClassObject)) var3677)
(declare-fun var1636_bootstrap$/449714105 () var2786)
(declare-fun map/1305667865 (var3677 var2786) var3677)
(declare-fun orElse/-757175127 (var3677 var885) var885)
(declare-fun cast-from-var885-to-var2201 (var885) var2201)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-1562462879 (var2566) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1227988463 (var1868) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun equals/1194252418 (var290 var885) Bool)
(declare-fun cast-from-var897-to-var290 (var897) var290)
(declare-fun cast-from-var897-to-var885 (var897) var885)
(declare-fun cast-from-var168-to-var3506 (var168) var3506)
(declare-fun configuration/-1562462879 (var2566) var1740)
(declare-fun getDefaultResultSetType/2016612370 (var1740) var3398)
(declare-fun assistant/-1562462879 (var2566) var1452)
(declare-fun var2566_getReturnType/-629822788 (var1868 ClassObject) ClassObject)
(declare-fun getDatabaseId/1468239399 (var859) String)
(declare-fun isDirtySelect/42750390 (var859) Bool)
(declare-fun addMappedStatement/-1285273847 (var1452 String var1558 var1258 var897 Int Int String ClassObject String ClassObject var3398 Bool Bool Bool var3506 String String String var1781 String Bool) var3559)
(declare-const null-var2566 var2566)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1781 var1781)
(declare-const null-var1868 var1868)
(declare-const null-var859 var859)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-NullType var1681)
(declare-const null-var885 var885)
(declare-const null-String String)
(declare-const var897-INSERT var897)
(declare-const var897-UPDATE var897)
(declare-const var168-INSTANCE var168)
(declare-const null-Int Int)
(declare-const var1258-PREPARED var1258)
(declare-const var897-SELECT var897)
(declare-const null-var2201 var2201)
(declare-const var655 var2566) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var655 null-var2566)))
(declare-const var215 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var215 null-ClassObject)))
(declare-const var85 var1781) ; Statement: r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver 
(assert (not (= var85 null-var1781)))
(declare-const var2256 var1868) ; Statement: r4 := @parameter2: java.lang.reflect.Method 
(assert (not (= var2256 null-var1868)))
(declare-const var193 var859) ; Statement: r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper 
(assert (not (= var193 null-var859)))
(assert true)
(define-const var3189 var564 (getAnnotation/1211161445 var193)) ; Statement: $r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>() 
(assert true)
(define-const var1403 var1558 (buildSqlSource/1129554691 var655 var3189 var215 var85 var2256)) ; Statement: r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4) 
(assert true)
(define-const var1804 var897 (getSqlCommandType/1172365906 var193)) ; Statement: r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>() 
(define-const var811 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r8 = newarray (java.lang.Class)[1] 
(declare-const var811!1 (Array Int ClassObject))
(assert (not (= var811!1 null-__Array__Int__ClassObject__)))
(assert (= (select var811!1 0) var2201!class)) ; Statement: $r8[0] = class "Lorg/apache/ibatis/annotations/Options;" 
(assert true)
(define-const var2792 var3677 (getAnnotationWrapper/-1343245648 var655 var2256 (ite (= 1 0) true false) var811!1)) ; Statement: $r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8) 
(define-const var1117 var2786 var1636_bootstrap$/449714105) ; Statement: $r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var1264 var3677 (map/1305667865 var2792 var1117)) ; Statement: $r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9) 
(assert true)
(define-const var2707 var885 (orElse/-757175127 var1264 null-var885)) ; Statement: $r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null) 
(define-const var2480 var2201 (cast-from-var885-to-var2201 var2707)) ; Statement: r13 = (org.apache.ibatis.annotations.Options) $r12 
(define-const var2845 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2845)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2845!1 String)
(assert (= var2845!1 ""))
(define-const var208 ClassObject (type/-1562462879 var655)) ; Statement: $r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(assert true)
(define-const var681 String (getName/-1958580599 var208)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3420 String (append/672562846 var2845!1 var681)) ; Statement: $r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var2845!2 String)
(assert (= var2845!2 (str.++ var2845!1 var681)))
(assert true)
(define-const var3351 String (append/672562846 var3420 ".")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3420!1 String)
(assert (= var3420!1 (str.++ var3420 ".")))
(assert true)
(define-const var996 String (getName/1227988463 var2256)) ; Statement: $r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3992 String (append/672562846 var3351 var996)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3351!1 String)
(assert (= var3351!1 (str.++ var3351 var996)))
(assert true)
(define-const var2300 String (toString/-2075883882 var3992)) ; Statement: r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var619 String null-String) ; Statement: r55 = null 
(define-const var2101 String null-String) ; Statement: r56 = null 
(define-const var3331 var897 var897-INSERT) ; Statement: $r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT> 
(assert true)
(define-const var815 Bool (equals/1194252418 (cast-from-var897-to-var290 var3331) (cast-from-var897-to-var885 var1804))) ; Statement: $z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1] 
(assert (not (not (= (ite var815 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2474 var897 var897-UPDATE) ; Statement: $r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE> 
(assert true)
(define-const var1154 Bool (equals/1194252418 (cast-from-var897-to-var290 var2474) (cast-from-var897-to-var885 var1804))) ; Statement: $z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert (= (ite var1154 1 0) 0)) ; Cond: $z9 == 0 
(define-const var3824 var3506 (cast-from-var168-to-var3506 var168-INSTANCE)) ; Statement: r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert true) ; Non Conditional
(define-const var2267 Int null-Int) ; Statement: r60 = null 
(define-const var2965 Int null-Int) ; Statement: r61 = null 
(define-const var2783 var1258 var1258-PREPARED) ; Statement: r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED> 
(define-const var1542 var1740 (configuration/-1562462879 var655)) ; Statement: $r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var2391 var3398 (getDefaultResultSetType/2016612370 var1542)) ; Statement: r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>() 
(define-const var2697 var897 var897-SELECT) ; Statement: $r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT> 
 ; Statement: if r7 != $r29 goto $z15 = 0 
(assert (not (= var1804 var2697))) ; Cond: r7 != $r29 
(define-const var427 Bool (ite (= 1 0) true false)) ; Statement: $z15 = 0 
(define-const var1584 Bool (ite (= 1 0) true false)) ; Statement: $z14 = 0 
(assert true) ; Non Conditional
(define-const var3098 Bool var427) ; Statement: z2 = $z15 
 ; Statement: if $z14 != 0 goto $z11 = 0 
(assert (not (= (ite var1584 1 0) 0))) ; Cond: $z14 != 0 
(define-const var1324 Bool (ite (= 1 0) true false)) ; Statement: $z11 = 0 
(assert true) ; Non Conditional
(define-const var2378 Bool var1324) ; Statement: z12 = $z11 
(define-const var2035 Bool var3098) ; Statement: z13 = z2 
 ; Statement: if r13 == null goto r66 = null 
(assert (= var2480 null-var2201)) ; Cond: r13 == null 
(define-const var2406 String null-String) ; Statement: r66 = null 
 ; Statement: if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(assert (= (ite var3098 1 0) 0)) ; Cond: z2 == 0 
(define-const var3669 var1452 (assistant/-1562462879 var655)) ; Statement: $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(define-const var2623 var1258 var2783) ; Statement: $r34 = r62 
(define-const var3865 Int var2267) ; Statement: $r35 = r60 
(define-const var2294 Int var2965) ; Statement: $r36 = r61 
(define-const var1896 String var2406) ; Statement: $r37 = r66 
(define-const var537 ClassObject (type/-1562462879 var655)) ; Statement: $r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(define-const var3811 ClassObject (var2566_getReturnType/-629822788 var2256 var537)) ; Statement: $r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67) 
(define-const var3656 var3398 var2391) ; Statement: $r38 = r63 
(define-const var1050 Bool var2378) ; Statement: $z4 = z12 
(define-const var3149 Bool var2035) ; Statement: $z5 = z13 
(define-const var430 var3506 var3824) ; Statement: $r39 = r57 
(define-const var3186 String var619) ; Statement: $r40 = r55 
(define-const var1451 String var2101) ; Statement: $r41 = r56 
(assert true)
(define-const var2679 String (getDatabaseId/1468239399 var193)) ; Statement: $r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>() 
 ; Statement: if r13 == null goto $r68 = null 
(assert (= var2480 null-var2201)) ; Cond: r13 == null 
(define-const var1951 String null-String) ; Statement: $r68 = null 
(assert true) ; Non Conditional
(assert true)
(define-const var2815 Bool (isDirtySelect/42750390 var193)) ; Statement: $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>() 
(assert true)
;(assert (addMappedStatement/-1285273847 var3669 var2300 var1403 var2623 var1804 var3865 var2294 null-String var215 var1896 var3811 var3656 var1050 var3149 (ite (= 1 0) true false) var430 var3186 var1451 var2679 var85 var1951 var2815)) ; Statement: virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3) 

(declare-const var3669!1 var1452)
(declare-const var2300!1 String)
(declare-const var1403!1 var1558)
(declare-const var2623!1 var1258)
(declare-const var1804!1 var897)
(declare-const var3865!1 Int)
(declare-const var2294!1 Int)
(declare-const var578 var1681)
(declare-const var215!1 ClassObject)
(declare-const var1896!1 String)
(declare-const var3811!1 ClassObject)
(declare-const var3656!1 var3398)
(declare-const var1050!1 Bool)
(declare-const var3149!1 Bool)
(declare-const var2342 Int)
(declare-const var430!1 var3506)
(declare-const var3186!1 String)
(declare-const var1451!1 String)
(declare-const var2679!1 String)
(declare-const var85!1 var1781)
(declare-const var1951!1 String)
(declare-const var2815!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotation/1211161445=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.annotation.Annotation), buildSqlSource/1129554691=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.annotation.Annotation, java.lang.Class, org.apache.ibatis.scripting.LanguageDriver, java.lang.reflect.Method], org.apache.ibatis.mapping.SqlSource), getSqlCommandType/1172365906=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], org.apache.ibatis.mapping.SqlCommandType), arr-ClassObject-init=([], java.lang.Class[]), getAnnotationWrapper/-1343245648=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.reflect.Method, boolean, java.lang.Class[]], java.util.Optional), var1636_bootstrap$/449714105=([], java.util.function.Function), map/1305667865=([java.util.Optional, java.util.function.Function], java.util.Optional), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-var885-to-var2201=([java.lang.Object], org.apache.ibatis.annotations.Options), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), equals/1194252418=([java.lang.Enum, java.lang.Object], boolean), cast-from-var897-to-var290=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Enum), cast-from-var897-to-var885=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Object), cast-from-var168-to-var3506=([org.apache.ibatis.executor.keygen.NoKeyGenerator], org.apache.ibatis.executor.keygen.KeyGenerator), configuration/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.session.Configuration), getDefaultResultSetType/2016612370=([org.apache.ibatis.session.Configuration], org.apache.ibatis.mapping.ResultSetType), assistant/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), var2566_getReturnType/-629822788=([java.lang.reflect.Method, java.lang.Class], java.lang.Class), getDatabaseId/1468239399=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.String), isDirtySelect/42750390=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], boolean), addMappedStatement/-1285273847=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, org.apache.ibatis.mapping.SqlSource, org.apache.ibatis.mapping.StatementType, org.apache.ibatis.mapping.SqlCommandType, java.lang.Integer, java.lang.Integer, java.lang.String, java.lang.Class, java.lang.String, java.lang.Class, org.apache.ibatis.mapping.ResultSetType, boolean, boolean, boolean, org.apache.ibatis.executor.keygen.KeyGenerator, java.lang.String, java.lang.String, java.lang.String, org.apache.ibatis.scripting.LanguageDriver, java.lang.String, boolean], org.apache.ibatis.mapping.MappedStatement)}
; {var2566=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var655=r0, var215=r2, var1781=org.apache.ibatis.scripting.LanguageDriver, var85=r3, var1868=java.lang.reflect.Method, var2256=r4, var859=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper, var193=r1, var564=java.lang.annotation.Annotation, var3189=$r5, var1558=org.apache.ibatis.mapping.SqlSource, var1403=r6, var897=org.apache.ibatis.mapping.SqlCommandType, var1804=r7, var811=$r8, var2201=org.apache.ibatis.annotations.Options, var3677=java.util.Optional, var2792=$r10, var2786=java.util.function.Function, var1636=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6, var1117=$r9, var1264=$r11, var885=java.lang.Object, var2707=$r12, var2480=r13, var2845=$r69, var208=$r15, var681=$r16, var3420=$r17, var3351=$r19, var996=$r18, var3992=$r20, var2300=r21, var1681=null_type, var619=r55, var2101=r56, var3331=$r22, var290=java.lang.Enum, var815=$z0, var2474=$r53, var1154=$z9, var3506=org.apache.ibatis.executor.keygen.KeyGenerator, var168=org.apache.ibatis.executor.keygen.NoKeyGenerator, var3824=r57, var2267=r60, var2965=r61, var1258=org.apache.ibatis.mapping.StatementType, var2783=r62, var1740=org.apache.ibatis.session.Configuration, var1542=$r28, var3398=org.apache.ibatis.mapping.ResultSetType, var2391=r63, var2697=$r29, var427=$z15, var1584=$z14, var3098=z2, var1324=$z11, var2378=z12, var2035=z13, var2406=r66, var1452=org.apache.ibatis.builder.MapperBuilderAssistant, var3669=$r30, var2623=$r34, var3865=$r35, var2294=$r36, var1896=$r37, var537=$r67, var3811=$r32, var3656=$r38, var1050=$z4, var3149=$z5, var430=$r39, var3186=$r40, var1451=$r41, var2679=$r31, var1951=$r68, var2815=$z3, var578=null, var2342=0, var3559=org.apache.ibatis.mapping.MappedStatement}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var2566, r0=var655, r2=var215, org.apache.ibatis.scripting.LanguageDriver=var1781, r3=var85, java.lang.reflect.Method=var1868, r4=var2256, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper=var859, r1=var193, java.lang.annotation.Annotation=var564, $r5=var3189, org.apache.ibatis.mapping.SqlSource=var1558, r6=var1403, org.apache.ibatis.mapping.SqlCommandType=var897, r7=var1804, $r8=var811, org.apache.ibatis.annotations.Options=var2201, java.util.Optional=var3677, $r10=var2792, java.util.function.Function=var2786, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6=var1636, $r9=var1117, $r11=var1264, java.lang.Object=var885, $r12=var2707, r13=var2480, $r69=var2845, $r15=var208, $r16=var681, $r17=var3420, $r19=var3351, $r18=var996, $r20=var3992, r21=var2300, null_type=var1681, r55=var619, r56=var2101, $r22=var3331, java.lang.Enum=var290, $z0=var815, $r53=var2474, $z9=var1154, org.apache.ibatis.executor.keygen.KeyGenerator=var3506, org.apache.ibatis.executor.keygen.NoKeyGenerator=var168, r57=var3824, r60=var2267, r61=var2965, org.apache.ibatis.mapping.StatementType=var1258, r62=var2783, org.apache.ibatis.session.Configuration=var1740, $r28=var1542, org.apache.ibatis.mapping.ResultSetType=var3398, r63=var2391, $r29=var2697, $z15=var427, $z14=var1584, z2=var3098, $z11=var1324, z12=var2378, z13=var2035, r66=var2406, org.apache.ibatis.builder.MapperBuilderAssistant=var1452, $r30=var3669, $r34=var2623, $r35=var3865, $r36=var2294, $r37=var1896, $r67=var537, $r32=var3811, $r38=var3656, $z4=var1050, $z5=var3149, $r39=var430, $r40=var3186, $r41=var1451, $r31=var2679, $r68=var1951, $z3=var2815, null=var578, 0=var2342, org.apache.ibatis.mapping.MappedStatement=var3559}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r2 := @parameter0: java.lang.Class;	r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver;	r4 := @parameter2: java.lang.reflect.Method;	r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper;	$r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>();	r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4);	r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>();	$r8 = newarray (java.lang.Class)[1];	$r8[0] = class "Lorg/apache/ibatis/annotations/Options;";	$r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8);	$r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>();	$r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9);	$r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null);	r13 = (org.apache.ibatis.annotations.Options) $r12;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	r55 = null;	r56 = null;	$r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT>;	$z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1];	$r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE>;	$z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r60 = null;	r61 = null;	r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED>;	$r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration>;	r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>();	$r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT>;	if r7 != $r29 goto $z15 = 0;	$z15 = 0;	$z14 = 0;	z2 = $z15;	if $z14 != 0 goto $z11 = 0;	$z11 = 0;	z12 = $z11;	z13 = z2;	if r13 == null goto r66 = null;	r66 = null;	if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r34 = r62;	$r35 = r60;	$r36 = r61;	$r37 = r66;	$r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67);	$r38 = r63;	$z4 = z12;	$z5 = z13;	$r39 = r57;	$r40 = r55;	$r41 = r56;	$r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>();	if r13 == null goto $r68 = null;	$r68 = null;	$z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>();	virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3);	return
;block_num 12
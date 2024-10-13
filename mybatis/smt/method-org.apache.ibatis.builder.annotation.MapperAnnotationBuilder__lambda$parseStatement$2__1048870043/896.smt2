(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1155 0)
(declare-sort var2273 0)
(declare-sort var2561 0)
(declare-sort var1233 0)
(declare-sort var1736 0)
(declare-sort var652 0)
(declare-sort var2671 0)
(declare-sort var3911 0)
(declare-sort var2411 0)
(declare-sort var1113 0)
(declare-sort var2194 0)
(declare-sort var1216 0)
(declare-sort var3385 0)
(declare-sort var2640 0)
(declare-sort var469 0)
(declare-sort var2575 0)
(declare-sort var331 0)
(declare-sort var3476 0)
(declare-sort var115 0)
(declare-sort var426 0)
(declare-sort var519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3911!class ClassObject)
(declare-fun getAnnotation/1211161445 (var1233) var1736)
(declare-fun buildSqlSource/1129554691 (var1155 var1736 ClassObject var2273 var2561) var652)
(declare-fun getSqlCommandType/1172365906 (var1233) var2671)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun getAnnotationWrapper/-1343245648 (var1155 var2561 Bool (Array Int ClassObject)) var2411)
(declare-fun var2194_bootstrap$/449714105 () var1113)
(declare-fun map/1305667865 (var2411 var1113) var2411)
(declare-fun orElse/-757175127 (var2411 var1216) var1216)
(declare-fun cast-from-var1216-to-var3911 (var1216) var3911)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-1562462879 (var1155) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1227988463 (var2561) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun equals/1194252418 (var2640 var1216) Bool)
(declare-fun cast-from-var2671-to-var2640 (var2671) var2640)
(declare-fun cast-from-var2671-to-var1216 (var2671) var1216)
(declare-fun cast-from-var2575-to-var469 (var2575) var469)
(declare-fun configuration/-1562462879 (var1155) var3476)
(declare-fun getDefaultResultSetType/2016612370 (var3476) var115)
(declare-fun assistant/-1562462879 (var1155) var426)
(declare-fun var1155_getReturnType/-629822788 (var2561 ClassObject) ClassObject)
(declare-fun getDatabaseId/1468239399 (var1233) String)
(declare-fun var3911_resultSets/-1611277552 (var3911) String)
(declare-fun nullOrEmpty/1417204373 (var1155 String) String)
(declare-fun isDirtySelect/42750390 (var1233) Bool)
(declare-fun addMappedStatement/-1285273847 (var426 String var652 var331 var2671 Int Int String ClassObject String ClassObject var115 Bool Bool Bool var469 String String String var2273 String Bool) var519)
(declare-const null-var1155 var1155)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2273 var2273)
(declare-const null-var2561 var2561)
(declare-const null-var1233 var1233)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-NullType var3385)
(declare-const null-var1216 var1216)
(declare-const null-String String)
(declare-const var2671-INSERT var2671)
(declare-const var2671-UPDATE var2671)
(declare-const var2575-INSTANCE var2575)
(declare-const null-Int Int)
(declare-const var331-PREPARED var331)
(declare-const var2671-SELECT var2671)
(declare-const null-var3911 var3911)
(declare-const var3904 var1155) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var3904 null-var1155)))
(declare-const var3548 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var3548 null-ClassObject)))
(declare-const var3222 var2273) ; Statement: r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver 
(assert (not (= var3222 null-var2273)))
(declare-const var28 var2561) ; Statement: r4 := @parameter2: java.lang.reflect.Method 
(assert (not (= var28 null-var2561)))
(declare-const var460 var1233) ; Statement: r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper 
(assert (not (= var460 null-var1233)))
(assert true)
(define-const var1456 var1736 (getAnnotation/1211161445 var460)) ; Statement: $r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>() 
(assert true)
(define-const var2771 var652 (buildSqlSource/1129554691 var3904 var1456 var3548 var3222 var28)) ; Statement: r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4) 
(assert true)
(define-const var1562 var2671 (getSqlCommandType/1172365906 var460)) ; Statement: r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>() 
(define-const var118 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r8 = newarray (java.lang.Class)[1] 
(declare-const var118!1 (Array Int ClassObject))
(assert (not (= var118!1 null-__Array__Int__ClassObject__)))
(assert (= (select var118!1 0) var3911!class)) ; Statement: $r8[0] = class "Lorg/apache/ibatis/annotations/Options;" 
(assert true)
(define-const var1926 var2411 (getAnnotationWrapper/-1343245648 var3904 var28 (ite (= 1 0) true false) var118!1)) ; Statement: $r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8) 
(define-const var1543 var1113 var2194_bootstrap$/449714105) ; Statement: $r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var217 var2411 (map/1305667865 var1926 var1543)) ; Statement: $r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9) 
(assert true)
(define-const var3587 var1216 (orElse/-757175127 var217 null-var1216)) ; Statement: $r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null) 
(define-const var1014 var3911 (cast-from-var1216-to-var3911 var3587)) ; Statement: r13 = (org.apache.ibatis.annotations.Options) $r12 
(define-const var1757 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1757)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1757!1 String)
(assert (= var1757!1 ""))
(define-const var131 ClassObject (type/-1562462879 var3904)) ; Statement: $r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(assert true)
(define-const var2927 String (getName/-1958580599 var131)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1011 String (append/672562846 var1757!1 var2927)) ; Statement: $r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1757!2 String)
(assert (= var1757!2 (str.++ var1757!1 var2927)))
(assert true)
(define-const var3620 String (append/672562846 var1011 ".")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1011!1 String)
(assert (= var1011!1 (str.++ var1011 ".")))
(assert true)
(define-const var2851 String (getName/1227988463 var28)) ; Statement: $r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1765 String (append/672562846 var3620 var2851)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3620!1 String)
(assert (= var3620!1 (str.++ var3620 var2851)))
(assert true)
(define-const var560 String (toString/-2075883882 var1765)) ; Statement: r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1556 String null-String) ; Statement: r55 = null 
(define-const var1313 String null-String) ; Statement: r56 = null 
(define-const var397 var2671 var2671-INSERT) ; Statement: $r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT> 
(assert true)
(define-const var2234 Bool (equals/1194252418 (cast-from-var2671-to-var2640 var397) (cast-from-var2671-to-var1216 var1562))) ; Statement: $z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1] 
(assert (not (not (= (ite var2234 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2014 var2671 var2671-UPDATE) ; Statement: $r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE> 
(assert true)
(define-const var1610 Bool (equals/1194252418 (cast-from-var2671-to-var2640 var2014) (cast-from-var2671-to-var1216 var1562))) ; Statement: $z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert (= (ite var1610 1 0) 0)) ; Cond: $z9 == 0 
(define-const var3463 var469 (cast-from-var2575-to-var469 var2575-INSTANCE)) ; Statement: r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert true) ; Non Conditional
(define-const var637 Int null-Int) ; Statement: r60 = null 
(define-const var427 Int null-Int) ; Statement: r61 = null 
(define-const var1721 var331 var331-PREPARED) ; Statement: r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED> 
(define-const var1851 var3476 (configuration/-1562462879 var3904)) ; Statement: $r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var1490 var115 (getDefaultResultSetType/2016612370 var1851)) ; Statement: r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>() 
(define-const var2250 var2671 var2671-SELECT) ; Statement: $r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT> 
 ; Statement: if r7 != $r29 goto $z15 = 0 
(assert (not (not (= var1562 var2250)))) ; Negate: Cond: r7 != $r29  
(define-const var899 Bool (ite (= 1 1) true false)) ; Statement: $z15 = 1 
(define-const var3552 Bool (ite (= 1 1) true false)) ; Statement: $z14 = 1 
 ; Statement: goto [?= z2 = $z15] 
(assert true) ; Non Conditional
(define-const var2202 Bool var899) ; Statement: z2 = $z15 
 ; Statement: if $z14 != 0 goto $z11 = 0 
(assert (not (not (= (ite var3552 1 0) 0)))) ; Negate: Cond: $z14 != 0  
(define-const var3780 Bool (ite (= 1 1) true false)) ; Statement: $z11 = 1 
 ; Statement: goto [?= z12 = $z11] 
(assert true) ; Non Conditional
(define-const var297 Bool var3780) ; Statement: z12 = $z11 
(define-const var691 Bool var2202) ; Statement: z13 = z2 
 ; Statement: if r13 == null goto r66 = null 
(assert (= var1014 null-var3911)) ; Cond: r13 == null 
(define-const var3768 String null-String) ; Statement: r66 = null 
 ; Statement: if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(assert (= (ite var2202 1 0) 0)) ; Cond: z2 == 0 
(define-const var3573 var426 (assistant/-1562462879 var3904)) ; Statement: $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(define-const var1771 var331 var1721) ; Statement: $r34 = r62 
(define-const var1522 Int var637) ; Statement: $r35 = r60 
(define-const var126 Int var427) ; Statement: $r36 = r61 
(define-const var1387 String var3768) ; Statement: $r37 = r66 
(define-const var1726 ClassObject (type/-1562462879 var3904)) ; Statement: $r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(define-const var866 ClassObject (var1155_getReturnType/-629822788 var28 var1726)) ; Statement: $r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67) 
(define-const var1485 var115 var1490) ; Statement: $r38 = r63 
(define-const var620 Bool var297) ; Statement: $z4 = z12 
(define-const var3193 Bool var691) ; Statement: $z5 = z13 
(define-const var186 var469 var3463) ; Statement: $r39 = r57 
(define-const var2666 String var1556) ; Statement: $r40 = r55 
(define-const var963 String var1313) ; Statement: $r41 = r56 
(assert true)
(define-const var1356 String (getDatabaseId/1468239399 var460)) ; Statement: $r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>() 
 ; Statement: if r13 == null goto $r68 = null 
(assert (not (= var1014 null-var3911))) ; Negate: Cond: r13 == null  
(define-const var1984 String (var3911_resultSets/-1611277552 var1014)) ; Statement: $r33 = interfaceinvoke r13.<org.apache.ibatis.annotations.Options: java.lang.String resultSets()>() 
(assert true)
(define-const var1051 String (nullOrEmpty/1417204373 var3904 var1984)) ; Statement: $r68 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.String nullOrEmpty(java.lang.String)>($r33) 
 ; Statement: goto [?= $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3596 Bool (isDirtySelect/42750390 var460)) ; Statement: $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>() 
(assert true)
;(assert (addMappedStatement/-1285273847 var3573 var560 var2771 var1771 var1562 var1522 var126 null-String var3548 var1387 var866 var1485 var620 var3193 (ite (= 1 0) true false) var186 var2666 var963 var1356 var3222 var1051 var3596)) ; Statement: virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3) 

(declare-const var3573!1 var426)
(declare-const var560!1 String)
(declare-const var2771!1 var652)
(declare-const var1771!1 var331)
(declare-const var1562!1 var2671)
(declare-const var1522!1 Int)
(declare-const var126!1 Int)
(declare-const var2825 var3385)
(declare-const var3548!1 ClassObject)
(declare-const var1387!1 String)
(declare-const var866!1 ClassObject)
(declare-const var1485!1 var115)
(declare-const var620!1 Bool)
(declare-const var3193!1 Bool)
(declare-const var3310 Int)
(declare-const var186!1 var469)
(declare-const var2666!1 String)
(declare-const var963!1 String)
(declare-const var1356!1 String)
(declare-const var3222!1 var2273)
(declare-const var1051!1 String)
(declare-const var3596!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotation/1211161445=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.annotation.Annotation), buildSqlSource/1129554691=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.annotation.Annotation, java.lang.Class, org.apache.ibatis.scripting.LanguageDriver, java.lang.reflect.Method], org.apache.ibatis.mapping.SqlSource), getSqlCommandType/1172365906=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], org.apache.ibatis.mapping.SqlCommandType), arr-ClassObject-init=([], java.lang.Class[]), getAnnotationWrapper/-1343245648=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.reflect.Method, boolean, java.lang.Class[]], java.util.Optional), var2194_bootstrap$/449714105=([], java.util.function.Function), map/1305667865=([java.util.Optional, java.util.function.Function], java.util.Optional), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-var1216-to-var3911=([java.lang.Object], org.apache.ibatis.annotations.Options), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), equals/1194252418=([java.lang.Enum, java.lang.Object], boolean), cast-from-var2671-to-var2640=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Enum), cast-from-var2671-to-var1216=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Object), cast-from-var2575-to-var469=([org.apache.ibatis.executor.keygen.NoKeyGenerator], org.apache.ibatis.executor.keygen.KeyGenerator), configuration/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.session.Configuration), getDefaultResultSetType/2016612370=([org.apache.ibatis.session.Configuration], org.apache.ibatis.mapping.ResultSetType), assistant/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), var1155_getReturnType/-629822788=([java.lang.reflect.Method, java.lang.Class], java.lang.Class), getDatabaseId/1468239399=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.String), var3911_resultSets/-1611277552=([org.apache.ibatis.annotations.Options], java.lang.String), nullOrEmpty/1417204373=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.String], java.lang.String), isDirtySelect/42750390=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], boolean), addMappedStatement/-1285273847=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, org.apache.ibatis.mapping.SqlSource, org.apache.ibatis.mapping.StatementType, org.apache.ibatis.mapping.SqlCommandType, java.lang.Integer, java.lang.Integer, java.lang.String, java.lang.Class, java.lang.String, java.lang.Class, org.apache.ibatis.mapping.ResultSetType, boolean, boolean, boolean, org.apache.ibatis.executor.keygen.KeyGenerator, java.lang.String, java.lang.String, java.lang.String, org.apache.ibatis.scripting.LanguageDriver, java.lang.String, boolean], org.apache.ibatis.mapping.MappedStatement)}
; {var1155=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var3904=r0, var3548=r2, var2273=org.apache.ibatis.scripting.LanguageDriver, var3222=r3, var2561=java.lang.reflect.Method, var28=r4, var1233=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper, var460=r1, var1736=java.lang.annotation.Annotation, var1456=$r5, var652=org.apache.ibatis.mapping.SqlSource, var2771=r6, var2671=org.apache.ibatis.mapping.SqlCommandType, var1562=r7, var118=$r8, var3911=org.apache.ibatis.annotations.Options, var2411=java.util.Optional, var1926=$r10, var1113=java.util.function.Function, var2194=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6, var1543=$r9, var217=$r11, var1216=java.lang.Object, var3587=$r12, var1014=r13, var1757=$r69, var131=$r15, var2927=$r16, var1011=$r17, var3620=$r19, var2851=$r18, var1765=$r20, var560=r21, var3385=null_type, var1556=r55, var1313=r56, var397=$r22, var2640=java.lang.Enum, var2234=$z0, var2014=$r53, var1610=$z9, var469=org.apache.ibatis.executor.keygen.KeyGenerator, var2575=org.apache.ibatis.executor.keygen.NoKeyGenerator, var3463=r57, var637=r60, var427=r61, var331=org.apache.ibatis.mapping.StatementType, var1721=r62, var3476=org.apache.ibatis.session.Configuration, var1851=$r28, var115=org.apache.ibatis.mapping.ResultSetType, var1490=r63, var2250=$r29, var899=$z15, var3552=$z14, var2202=z2, var3780=$z11, var297=z12, var691=z13, var3768=r66, var426=org.apache.ibatis.builder.MapperBuilderAssistant, var3573=$r30, var1771=$r34, var1522=$r35, var126=$r36, var1387=$r37, var1726=$r67, var866=$r32, var1485=$r38, var620=$z4, var3193=$z5, var186=$r39, var2666=$r40, var963=$r41, var1356=$r31, var1984=$r33, var1051=$r68, var3596=$z3, var2825=null, var3310=0, var519=org.apache.ibatis.mapping.MappedStatement}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var1155, r0=var3904, r2=var3548, org.apache.ibatis.scripting.LanguageDriver=var2273, r3=var3222, java.lang.reflect.Method=var2561, r4=var28, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper=var1233, r1=var460, java.lang.annotation.Annotation=var1736, $r5=var1456, org.apache.ibatis.mapping.SqlSource=var652, r6=var2771, org.apache.ibatis.mapping.SqlCommandType=var2671, r7=var1562, $r8=var118, org.apache.ibatis.annotations.Options=var3911, java.util.Optional=var2411, $r10=var1926, java.util.function.Function=var1113, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6=var2194, $r9=var1543, $r11=var217, java.lang.Object=var1216, $r12=var3587, r13=var1014, $r69=var1757, $r15=var131, $r16=var2927, $r17=var1011, $r19=var3620, $r18=var2851, $r20=var1765, r21=var560, null_type=var3385, r55=var1556, r56=var1313, $r22=var397, java.lang.Enum=var2640, $z0=var2234, $r53=var2014, $z9=var1610, org.apache.ibatis.executor.keygen.KeyGenerator=var469, org.apache.ibatis.executor.keygen.NoKeyGenerator=var2575, r57=var3463, r60=var637, r61=var427, org.apache.ibatis.mapping.StatementType=var331, r62=var1721, org.apache.ibatis.session.Configuration=var3476, $r28=var1851, org.apache.ibatis.mapping.ResultSetType=var115, r63=var1490, $r29=var2250, $z15=var899, $z14=var3552, z2=var2202, $z11=var3780, z12=var297, z13=var691, r66=var3768, org.apache.ibatis.builder.MapperBuilderAssistant=var426, $r30=var3573, $r34=var1771, $r35=var1522, $r36=var126, $r37=var1387, $r67=var1726, $r32=var866, $r38=var1485, $z4=var620, $z5=var3193, $r39=var186, $r40=var2666, $r41=var963, $r31=var1356, $r33=var1984, $r68=var1051, $z3=var3596, null=var2825, 0=var3310, org.apache.ibatis.mapping.MappedStatement=var519}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r2 := @parameter0: java.lang.Class;	r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver;	r4 := @parameter2: java.lang.reflect.Method;	r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper;	$r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>();	r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4);	r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>();	$r8 = newarray (java.lang.Class)[1];	$r8[0] = class "Lorg/apache/ibatis/annotations/Options;";	$r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8);	$r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>();	$r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9);	$r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null);	r13 = (org.apache.ibatis.annotations.Options) $r12;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	r55 = null;	r56 = null;	$r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT>;	$z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1];	$r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE>;	$z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r60 = null;	r61 = null;	r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED>;	$r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration>;	r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>();	$r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT>;	if r7 != $r29 goto $z15 = 0;	$z15 = 1;	$z14 = 1;	goto [?= z2 = $z15];	z2 = $z15;	if $z14 != 0 goto $z11 = 0;	$z11 = 1;	goto [?= z12 = $z11];	z12 = $z11;	z13 = z2;	if r13 == null goto r66 = null;	r66 = null;	if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r34 = r62;	$r35 = r60;	$r36 = r61;	$r37 = r66;	$r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67);	$r38 = r63;	$z4 = z12;	$z5 = z13;	$r39 = r57;	$r40 = r55;	$r41 = r56;	$r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>();	if r13 == null goto $r68 = null;	$r33 = interfaceinvoke r13.<org.apache.ibatis.annotations.Options: java.lang.String resultSets()>();	$r68 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.String nullOrEmpty(java.lang.String)>($r33);	goto [?= $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>()];	$z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>();	virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3);	return
;block_num 12
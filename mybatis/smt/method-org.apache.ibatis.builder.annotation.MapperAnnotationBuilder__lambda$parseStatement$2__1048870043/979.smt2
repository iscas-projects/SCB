(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3830 0)
(declare-sort var2323 0)
(declare-sort var3461 0)
(declare-sort var535 0)
(declare-sort var1810 0)
(declare-sort var1636 0)
(declare-sort var2437 0)
(declare-sort var3546 0)
(declare-sort var1458 0)
(declare-sort var763 0)
(declare-sort var273 0)
(declare-sort var3556 0)
(declare-sort var2756 0)
(declare-sort var471 0)
(declare-sort var1566 0)
(declare-sort var3792 0)
(declare-sort var1327 0)
(declare-sort var3845 0)
(declare-sort var2447 0)
(declare-sort var1386 0)
(declare-sort var2522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3546!class ClassObject)
(declare-fun getAnnotation/1211161445 (var535) var1810)
(declare-fun buildSqlSource/1129554691 (var3830 var1810 ClassObject var2323 var3461) var1636)
(declare-fun getSqlCommandType/1172365906 (var535) var2437)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun getAnnotationWrapper/-1343245648 (var3830 var3461 Bool (Array Int ClassObject)) var1458)
(declare-fun var273_bootstrap$/449714105 () var763)
(declare-fun map/1305667865 (var1458 var763) var1458)
(declare-fun orElse/-757175127 (var1458 var3556) var3556)
(declare-fun cast-from-var3556-to-var3546 (var3556) var3546)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-1562462879 (var3830) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1227988463 (var3461) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun equals/1194252418 (var471 var3556) Bool)
(declare-fun cast-from-var2437-to-var471 (var2437) var471)
(declare-fun cast-from-var2437-to-var3556 (var2437) var3556)
(declare-fun cast-from-var3792-to-var1566 (var3792) var1566)
(declare-fun configuration/-1562462879 (var3830) var3845)
(declare-fun getDefaultResultSetType/2016612370 (var3845) var2447)
(declare-fun assistant/-1562462879 (var3830) var1386)
(declare-fun var3830_getReturnType/-629822788 (var3461 ClassObject) ClassObject)
(declare-fun getDatabaseId/1468239399 (var535) String)
(declare-fun var3546_resultSets/-1611277552 (var3546) String)
(declare-fun nullOrEmpty/1417204373 (var3830 String) String)
(declare-fun isDirtySelect/42750390 (var535) Bool)
(declare-fun addMappedStatement/-1285273847 (var1386 String var1636 var1327 var2437 Int Int String ClassObject String ClassObject var2447 Bool Bool Bool var1566 String String String var2323 String Bool) var2522)
(declare-const null-var3830 var3830)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2323 var2323)
(declare-const null-var3461 var3461)
(declare-const null-var535 var535)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-NullType var2756)
(declare-const null-var3556 var3556)
(declare-const null-String String)
(declare-const var2437-INSERT var2437)
(declare-const var2437-UPDATE var2437)
(declare-const var3792-INSTANCE var3792)
(declare-const null-Int Int)
(declare-const var1327-PREPARED var1327)
(declare-const var2437-SELECT var2437)
(declare-const null-var3546 var3546)
(declare-const var344 var3830) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var344 null-var3830)))
(declare-const var2656 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var2656 null-ClassObject)))
(declare-const var2775 var2323) ; Statement: r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver 
(assert (not (= var2775 null-var2323)))
(declare-const var2689 var3461) ; Statement: r4 := @parameter2: java.lang.reflect.Method 
(assert (not (= var2689 null-var3461)))
(declare-const var1444 var535) ; Statement: r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper 
(assert (not (= var1444 null-var535)))
(assert true)
(define-const var3184 var1810 (getAnnotation/1211161445 var1444)) ; Statement: $r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>() 
(assert true)
(define-const var24 var1636 (buildSqlSource/1129554691 var344 var3184 var2656 var2775 var2689)) ; Statement: r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4) 
(assert true)
(define-const var3806 var2437 (getSqlCommandType/1172365906 var1444)) ; Statement: r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>() 
(define-const var3122 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r8 = newarray (java.lang.Class)[1] 
(declare-const var3122!1 (Array Int ClassObject))
(assert (not (= var3122!1 null-__Array__Int__ClassObject__)))
(assert (= (select var3122!1 0) var3546!class)) ; Statement: $r8[0] = class "Lorg/apache/ibatis/annotations/Options;" 
(assert true)
(define-const var3785 var1458 (getAnnotationWrapper/-1343245648 var344 var2689 (ite (= 1 0) true false) var3122!1)) ; Statement: $r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8) 
(define-const var3291 var763 var273_bootstrap$/449714105) ; Statement: $r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var591 var1458 (map/1305667865 var3785 var3291)) ; Statement: $r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9) 
(assert true)
(define-const var3152 var3556 (orElse/-757175127 var591 null-var3556)) ; Statement: $r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null) 
(define-const var2579 var3546 (cast-from-var3556-to-var3546 var3152)) ; Statement: r13 = (org.apache.ibatis.annotations.Options) $r12 
(define-const var3850 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3850)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3850!1 String)
(assert (= var3850!1 ""))
(define-const var3506 ClassObject (type/-1562462879 var344)) ; Statement: $r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(assert true)
(define-const var226 String (getName/-1958580599 var3506)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1284 String (append/672562846 var3850!1 var226)) ; Statement: $r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3850!2 String)
(assert (= var3850!2 (str.++ var3850!1 var226)))
(assert true)
(define-const var3880 String (append/672562846 var1284 ".")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1284!1 String)
(assert (= var1284!1 (str.++ var1284 ".")))
(assert true)
(define-const var133 String (getName/1227988463 var2689)) ; Statement: $r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1891 String (append/672562846 var3880 var133)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3880!1 String)
(assert (= var3880!1 (str.++ var3880 var133)))
(assert true)
(define-const var2559 String (toString/-2075883882 var1891)) ; Statement: r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1817 String null-String) ; Statement: r55 = null 
(define-const var975 String null-String) ; Statement: r56 = null 
(define-const var3272 var2437 var2437-INSERT) ; Statement: $r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT> 
(assert true)
(define-const var1385 Bool (equals/1194252418 (cast-from-var2437-to-var471 var3272) (cast-from-var2437-to-var3556 var3806))) ; Statement: $z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1] 
(assert (not (not (= (ite var1385 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3823 var2437 var2437-UPDATE) ; Statement: $r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE> 
(assert true)
(define-const var2412 Bool (equals/1194252418 (cast-from-var2437-to-var471 var3823) (cast-from-var2437-to-var3556 var3806))) ; Statement: $z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert (= (ite var2412 1 0) 0)) ; Cond: $z9 == 0 
(define-const var2962 var1566 (cast-from-var3792-to-var1566 var3792-INSTANCE)) ; Statement: r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert true) ; Non Conditional
(define-const var1141 Int null-Int) ; Statement: r60 = null 
(define-const var476 Int null-Int) ; Statement: r61 = null 
(define-const var342 var1327 var1327-PREPARED) ; Statement: r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED> 
(define-const var918 var3845 (configuration/-1562462879 var344)) ; Statement: $r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var2786 var2447 (getDefaultResultSetType/2016612370 var918)) ; Statement: r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>() 
(define-const var2341 var2437 var2437-SELECT) ; Statement: $r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT> 
 ; Statement: if r7 != $r29 goto $z15 = 0 
(assert (not (= var3806 var2341))) ; Cond: r7 != $r29 
(define-const var1761 Bool (ite (= 1 0) true false)) ; Statement: $z15 = 0 
(define-const var170 Bool (ite (= 1 0) true false)) ; Statement: $z14 = 0 
(assert true) ; Non Conditional
(define-const var1969 Bool var1761) ; Statement: z2 = $z15 
 ; Statement: if $z14 != 0 goto $z11 = 0 
(assert (not (not (= (ite var170 1 0) 0)))) ; Negate: Cond: $z14 != 0  
(define-const var1223 Bool (ite (= 1 1) true false)) ; Statement: $z11 = 1 
 ; Statement: goto [?= z12 = $z11] 
(assert true) ; Non Conditional
(define-const var3141 Bool var1223) ; Statement: z12 = $z11 
(define-const var2904 Bool var1969) ; Statement: z13 = z2 
 ; Statement: if r13 == null goto r66 = null 
(assert (= var2579 null-var3546)) ; Cond: r13 == null 
(define-const var148 String null-String) ; Statement: r66 = null 
 ; Statement: if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(assert (= (ite var1969 1 0) 0)) ; Cond: z2 == 0 
(define-const var3982 var1386 (assistant/-1562462879 var344)) ; Statement: $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(define-const var639 var1327 var342) ; Statement: $r34 = r62 
(define-const var840 Int var1141) ; Statement: $r35 = r60 
(define-const var3595 Int var476) ; Statement: $r36 = r61 
(define-const var2636 String var148) ; Statement: $r37 = r66 
(define-const var188 ClassObject (type/-1562462879 var344)) ; Statement: $r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(define-const var1241 ClassObject (var3830_getReturnType/-629822788 var2689 var188)) ; Statement: $r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67) 
(define-const var1742 var2447 var2786) ; Statement: $r38 = r63 
(define-const var3052 Bool var3141) ; Statement: $z4 = z12 
(define-const var883 Bool var2904) ; Statement: $z5 = z13 
(define-const var1267 var1566 var2962) ; Statement: $r39 = r57 
(define-const var401 String var1817) ; Statement: $r40 = r55 
(define-const var1469 String var975) ; Statement: $r41 = r56 
(assert true)
(define-const var2460 String (getDatabaseId/1468239399 var1444)) ; Statement: $r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>() 
 ; Statement: if r13 == null goto $r68 = null 
(assert (not (= var2579 null-var3546))) ; Negate: Cond: r13 == null  
(define-const var3376 String (var3546_resultSets/-1611277552 var2579)) ; Statement: $r33 = interfaceinvoke r13.<org.apache.ibatis.annotations.Options: java.lang.String resultSets()>() 
(assert true)
(define-const var3279 String (nullOrEmpty/1417204373 var344 var3376)) ; Statement: $r68 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.String nullOrEmpty(java.lang.String)>($r33) 
 ; Statement: goto [?= $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1839 Bool (isDirtySelect/42750390 var1444)) ; Statement: $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>() 
(assert true)
;(assert (addMappedStatement/-1285273847 var3982 var2559 var24 var639 var3806 var840 var3595 null-String var2656 var2636 var1241 var1742 var3052 var883 (ite (= 1 0) true false) var1267 var401 var1469 var2460 var2775 var3279 var1839)) ; Statement: virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3) 

(declare-const var3982!1 var1386)
(declare-const var2559!1 String)
(declare-const var24!1 var1636)
(declare-const var639!1 var1327)
(declare-const var3806!1 var2437)
(declare-const var840!1 Int)
(declare-const var3595!1 Int)
(declare-const var2475 var2756)
(declare-const var2656!1 ClassObject)
(declare-const var2636!1 String)
(declare-const var1241!1 ClassObject)
(declare-const var1742!1 var2447)
(declare-const var3052!1 Bool)
(declare-const var883!1 Bool)
(declare-const var3625 Int)
(declare-const var1267!1 var1566)
(declare-const var401!1 String)
(declare-const var1469!1 String)
(declare-const var2460!1 String)
(declare-const var2775!1 var2323)
(declare-const var3279!1 String)
(declare-const var1839!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotation/1211161445=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.annotation.Annotation), buildSqlSource/1129554691=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.annotation.Annotation, java.lang.Class, org.apache.ibatis.scripting.LanguageDriver, java.lang.reflect.Method], org.apache.ibatis.mapping.SqlSource), getSqlCommandType/1172365906=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], org.apache.ibatis.mapping.SqlCommandType), arr-ClassObject-init=([], java.lang.Class[]), getAnnotationWrapper/-1343245648=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.reflect.Method, boolean, java.lang.Class[]], java.util.Optional), var273_bootstrap$/449714105=([], java.util.function.Function), map/1305667865=([java.util.Optional, java.util.function.Function], java.util.Optional), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-var3556-to-var3546=([java.lang.Object], org.apache.ibatis.annotations.Options), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), equals/1194252418=([java.lang.Enum, java.lang.Object], boolean), cast-from-var2437-to-var471=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Enum), cast-from-var2437-to-var3556=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Object), cast-from-var3792-to-var1566=([org.apache.ibatis.executor.keygen.NoKeyGenerator], org.apache.ibatis.executor.keygen.KeyGenerator), configuration/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.session.Configuration), getDefaultResultSetType/2016612370=([org.apache.ibatis.session.Configuration], org.apache.ibatis.mapping.ResultSetType), assistant/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), var3830_getReturnType/-629822788=([java.lang.reflect.Method, java.lang.Class], java.lang.Class), getDatabaseId/1468239399=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.String), var3546_resultSets/-1611277552=([org.apache.ibatis.annotations.Options], java.lang.String), nullOrEmpty/1417204373=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.String], java.lang.String), isDirtySelect/42750390=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], boolean), addMappedStatement/-1285273847=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, org.apache.ibatis.mapping.SqlSource, org.apache.ibatis.mapping.StatementType, org.apache.ibatis.mapping.SqlCommandType, java.lang.Integer, java.lang.Integer, java.lang.String, java.lang.Class, java.lang.String, java.lang.Class, org.apache.ibatis.mapping.ResultSetType, boolean, boolean, boolean, org.apache.ibatis.executor.keygen.KeyGenerator, java.lang.String, java.lang.String, java.lang.String, org.apache.ibatis.scripting.LanguageDriver, java.lang.String, boolean], org.apache.ibatis.mapping.MappedStatement)}
; {var3830=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var344=r0, var2656=r2, var2323=org.apache.ibatis.scripting.LanguageDriver, var2775=r3, var3461=java.lang.reflect.Method, var2689=r4, var535=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper, var1444=r1, var1810=java.lang.annotation.Annotation, var3184=$r5, var1636=org.apache.ibatis.mapping.SqlSource, var24=r6, var2437=org.apache.ibatis.mapping.SqlCommandType, var3806=r7, var3122=$r8, var3546=org.apache.ibatis.annotations.Options, var1458=java.util.Optional, var3785=$r10, var763=java.util.function.Function, var273=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6, var3291=$r9, var591=$r11, var3556=java.lang.Object, var3152=$r12, var2579=r13, var3850=$r69, var3506=$r15, var226=$r16, var1284=$r17, var3880=$r19, var133=$r18, var1891=$r20, var2559=r21, var2756=null_type, var1817=r55, var975=r56, var3272=$r22, var471=java.lang.Enum, var1385=$z0, var3823=$r53, var2412=$z9, var1566=org.apache.ibatis.executor.keygen.KeyGenerator, var3792=org.apache.ibatis.executor.keygen.NoKeyGenerator, var2962=r57, var1141=r60, var476=r61, var1327=org.apache.ibatis.mapping.StatementType, var342=r62, var3845=org.apache.ibatis.session.Configuration, var918=$r28, var2447=org.apache.ibatis.mapping.ResultSetType, var2786=r63, var2341=$r29, var1761=$z15, var170=$z14, var1969=z2, var1223=$z11, var3141=z12, var2904=z13, var148=r66, var1386=org.apache.ibatis.builder.MapperBuilderAssistant, var3982=$r30, var639=$r34, var840=$r35, var3595=$r36, var2636=$r37, var188=$r67, var1241=$r32, var1742=$r38, var3052=$z4, var883=$z5, var1267=$r39, var401=$r40, var1469=$r41, var2460=$r31, var3376=$r33, var3279=$r68, var1839=$z3, var2475=null, var3625=0, var2522=org.apache.ibatis.mapping.MappedStatement}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var3830, r0=var344, r2=var2656, org.apache.ibatis.scripting.LanguageDriver=var2323, r3=var2775, java.lang.reflect.Method=var3461, r4=var2689, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper=var535, r1=var1444, java.lang.annotation.Annotation=var1810, $r5=var3184, org.apache.ibatis.mapping.SqlSource=var1636, r6=var24, org.apache.ibatis.mapping.SqlCommandType=var2437, r7=var3806, $r8=var3122, org.apache.ibatis.annotations.Options=var3546, java.util.Optional=var1458, $r10=var3785, java.util.function.Function=var763, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6=var273, $r9=var3291, $r11=var591, java.lang.Object=var3556, $r12=var3152, r13=var2579, $r69=var3850, $r15=var3506, $r16=var226, $r17=var1284, $r19=var3880, $r18=var133, $r20=var1891, r21=var2559, null_type=var2756, r55=var1817, r56=var975, $r22=var3272, java.lang.Enum=var471, $z0=var1385, $r53=var3823, $z9=var2412, org.apache.ibatis.executor.keygen.KeyGenerator=var1566, org.apache.ibatis.executor.keygen.NoKeyGenerator=var3792, r57=var2962, r60=var1141, r61=var476, org.apache.ibatis.mapping.StatementType=var1327, r62=var342, org.apache.ibatis.session.Configuration=var3845, $r28=var918, org.apache.ibatis.mapping.ResultSetType=var2447, r63=var2786, $r29=var2341, $z15=var1761, $z14=var170, z2=var1969, $z11=var1223, z12=var3141, z13=var2904, r66=var148, org.apache.ibatis.builder.MapperBuilderAssistant=var1386, $r30=var3982, $r34=var639, $r35=var840, $r36=var3595, $r37=var2636, $r67=var188, $r32=var1241, $r38=var1742, $z4=var3052, $z5=var883, $r39=var1267, $r40=var401, $r41=var1469, $r31=var2460, $r33=var3376, $r68=var3279, $z3=var1839, null=var2475, 0=var3625, org.apache.ibatis.mapping.MappedStatement=var2522}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r2 := @parameter0: java.lang.Class;	r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver;	r4 := @parameter2: java.lang.reflect.Method;	r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper;	$r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>();	r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4);	r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>();	$r8 = newarray (java.lang.Class)[1];	$r8[0] = class "Lorg/apache/ibatis/annotations/Options;";	$r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8);	$r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>();	$r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9);	$r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null);	r13 = (org.apache.ibatis.annotations.Options) $r12;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	r55 = null;	r56 = null;	$r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT>;	$z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1];	$r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE>;	$z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r60 = null;	r61 = null;	r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED>;	$r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration>;	r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>();	$r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT>;	if r7 != $r29 goto $z15 = 0;	$z15 = 0;	$z14 = 0;	z2 = $z15;	if $z14 != 0 goto $z11 = 0;	$z11 = 1;	goto [?= z12 = $z11];	z12 = $z11;	z13 = z2;	if r13 == null goto r66 = null;	r66 = null;	if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r34 = r62;	$r35 = r60;	$r36 = r61;	$r37 = r66;	$r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67);	$r38 = r63;	$z4 = z12;	$z5 = z13;	$r39 = r57;	$r40 = r55;	$r41 = r56;	$r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>();	if r13 == null goto $r68 = null;	$r33 = interfaceinvoke r13.<org.apache.ibatis.annotations.Options: java.lang.String resultSets()>();	$r68 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.String nullOrEmpty(java.lang.String)>($r33);	goto [?= $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>()];	$z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>();	virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3);	return
;block_num 12
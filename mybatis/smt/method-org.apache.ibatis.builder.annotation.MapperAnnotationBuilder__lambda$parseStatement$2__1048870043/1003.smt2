(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1686 0)
(declare-sort var103 0)
(declare-sort var3895 0)
(declare-sort var660 0)
(declare-sort var825 0)
(declare-sort var3782 0)
(declare-sort var1733 0)
(declare-sort var3761 0)
(declare-sort var739 0)
(declare-sort var2234 0)
(declare-sort var188 0)
(declare-sort var3564 0)
(declare-sort var3100 0)
(declare-sort var807 0)
(declare-sort var2801 0)
(declare-sort var651 0)
(declare-sort var234 0)
(declare-sort var3578 0)
(declare-sort var2883 0)
(declare-sort var3947 0)
(declare-sort var3244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3761!class ClassObject)
(declare-fun getAnnotation/1211161445 (var660) var825)
(declare-fun buildSqlSource/1129554691 (var1686 var825 ClassObject var103 var3895) var3782)
(declare-fun getSqlCommandType/1172365906 (var660) var1733)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun getAnnotationWrapper/-1343245648 (var1686 var3895 Bool (Array Int ClassObject)) var739)
(declare-fun var188_bootstrap$/449714105 () var2234)
(declare-fun map/1305667865 (var739 var2234) var739)
(declare-fun orElse/-757175127 (var739 var3564) var3564)
(declare-fun cast-from-var3564-to-var3761 (var3564) var3761)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-1562462879 (var1686) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1227988463 (var3895) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun equals/1194252418 (var807 var3564) Bool)
(declare-fun cast-from-var1733-to-var807 (var1733) var807)
(declare-fun cast-from-var1733-to-var3564 (var1733) var3564)
(declare-fun cast-from-var651-to-var2801 (var651) var2801)
(declare-fun configuration/-1562462879 (var1686) var3578)
(declare-fun getDefaultResultSetType/2016612370 (var3578) var2883)
(declare-fun assistant/-1562462879 (var1686) var3947)
(declare-fun var1686_getReturnType/-629822788 (var3895 ClassObject) ClassObject)
(declare-fun getDatabaseId/1468239399 (var660) String)
(declare-fun var3761_resultSets/-1611277552 (var3761) String)
(declare-fun nullOrEmpty/1417204373 (var1686 String) String)
(declare-fun isDirtySelect/42750390 (var660) Bool)
(declare-fun addMappedStatement/-1285273847 (var3947 String var3782 var234 var1733 Int Int String ClassObject String ClassObject var2883 Bool Bool Bool var2801 String String String var103 String Bool) var3244)
(declare-const null-var1686 var1686)
(declare-const null-ClassObject ClassObject)
(declare-const null-var103 var103)
(declare-const null-var3895 var3895)
(declare-const null-var660 var660)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-NullType var3100)
(declare-const null-var3564 var3564)
(declare-const null-String String)
(declare-const var1733-INSERT var1733)
(declare-const var1733-UPDATE var1733)
(declare-const var651-INSTANCE var651)
(declare-const null-Int Int)
(declare-const var234-PREPARED var234)
(declare-const var1733-SELECT var1733)
(declare-const null-var3761 var3761)
(declare-const var1581 var1686) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var1581 null-var1686)))
(declare-const var3199 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var3199 null-ClassObject)))
(declare-const var2036 var103) ; Statement: r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver 
(assert (not (= var2036 null-var103)))
(declare-const var3718 var3895) ; Statement: r4 := @parameter2: java.lang.reflect.Method 
(assert (not (= var3718 null-var3895)))
(declare-const var1752 var660) ; Statement: r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper 
(assert (not (= var1752 null-var660)))
(assert true)
(define-const var726 var825 (getAnnotation/1211161445 var1752)) ; Statement: $r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>() 
(assert true)
(define-const var928 var3782 (buildSqlSource/1129554691 var1581 var726 var3199 var2036 var3718)) ; Statement: r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4) 
(assert true)
(define-const var1063 var1733 (getSqlCommandType/1172365906 var1752)) ; Statement: r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>() 
(define-const var621 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r8 = newarray (java.lang.Class)[1] 
(declare-const var621!1 (Array Int ClassObject))
(assert (not (= var621!1 null-__Array__Int__ClassObject__)))
(assert (= (select var621!1 0) var3761!class)) ; Statement: $r8[0] = class "Lorg/apache/ibatis/annotations/Options;" 
(assert true)
(define-const var3457 var739 (getAnnotationWrapper/-1343245648 var1581 var3718 (ite (= 1 0) true false) var621!1)) ; Statement: $r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8) 
(define-const var2283 var2234 var188_bootstrap$/449714105) ; Statement: $r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var556 var739 (map/1305667865 var3457 var2283)) ; Statement: $r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9) 
(assert true)
(define-const var3035 var3564 (orElse/-757175127 var556 null-var3564)) ; Statement: $r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null) 
(define-const var418 var3761 (cast-from-var3564-to-var3761 var3035)) ; Statement: r13 = (org.apache.ibatis.annotations.Options) $r12 
(define-const var3716 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3716)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3716!1 String)
(assert (= var3716!1 ""))
(define-const var3245 ClassObject (type/-1562462879 var1581)) ; Statement: $r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(assert true)
(define-const var3122 String (getName/-1958580599 var3245)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var855 String (append/672562846 var3716!1 var3122)) ; Statement: $r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3716!2 String)
(assert (= var3716!2 (str.++ var3716!1 var3122)))
(assert true)
(define-const var1763 String (append/672562846 var855 ".")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var855!1 String)
(assert (= var855!1 (str.++ var855 ".")))
(assert true)
(define-const var3483 String (getName/1227988463 var3718)) ; Statement: $r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2339 String (append/672562846 var1763 var3483)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1763!1 String)
(assert (= var1763!1 (str.++ var1763 var3483)))
(assert true)
(define-const var558 String (toString/-2075883882 var2339)) ; Statement: r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3105 String null-String) ; Statement: r55 = null 
(define-const var439 String null-String) ; Statement: r56 = null 
(define-const var551 var1733 var1733-INSERT) ; Statement: $r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT> 
(assert true)
(define-const var2800 Bool (equals/1194252418 (cast-from-var1733-to-var807 var551) (cast-from-var1733-to-var3564 var1063))) ; Statement: $z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1] 
(assert (not (not (= (ite var2800 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1147 var1733 var1733-UPDATE) ; Statement: $r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE> 
(assert true)
(define-const var3601 Bool (equals/1194252418 (cast-from-var1733-to-var807 var1147) (cast-from-var1733-to-var3564 var1063))) ; Statement: $z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert (= (ite var3601 1 0) 0)) ; Cond: $z9 == 0 
(define-const var3148 var2801 (cast-from-var651-to-var2801 var651-INSTANCE)) ; Statement: r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert true) ; Non Conditional
(define-const var3585 Int null-Int) ; Statement: r60 = null 
(define-const var3655 Int null-Int) ; Statement: r61 = null 
(define-const var3614 var234 var234-PREPARED) ; Statement: r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED> 
(define-const var1343 var3578 (configuration/-1562462879 var1581)) ; Statement: $r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var2169 var2883 (getDefaultResultSetType/2016612370 var1343)) ; Statement: r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>() 
(define-const var1112 var1733 var1733-SELECT) ; Statement: $r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT> 
 ; Statement: if r7 != $r29 goto $z15 = 0 
(assert (not (= var1063 var1112))) ; Cond: r7 != $r29 
(define-const var947 Bool (ite (= 1 0) true false)) ; Statement: $z15 = 0 
(define-const var2181 Bool (ite (= 1 0) true false)) ; Statement: $z14 = 0 
(assert true) ; Non Conditional
(define-const var3516 Bool var947) ; Statement: z2 = $z15 
 ; Statement: if $z14 != 0 goto $z11 = 0 
(assert (not (= (ite var2181 1 0) 0))) ; Cond: $z14 != 0 
(define-const var3520 Bool (ite (= 1 0) true false)) ; Statement: $z11 = 0 
(assert true) ; Non Conditional
(define-const var2278 Bool var3520) ; Statement: z12 = $z11 
(define-const var2265 Bool var3516) ; Statement: z13 = z2 
 ; Statement: if r13 == null goto r66 = null 
(assert (= var418 null-var3761)) ; Cond: r13 == null 
(define-const var1430 String null-String) ; Statement: r66 = null 
 ; Statement: if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(assert (= (ite var3516 1 0) 0)) ; Cond: z2 == 0 
(define-const var3421 var3947 (assistant/-1562462879 var1581)) ; Statement: $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(define-const var2249 var234 var3614) ; Statement: $r34 = r62 
(define-const var1437 Int var3585) ; Statement: $r35 = r60 
(define-const var3334 Int var3655) ; Statement: $r36 = r61 
(define-const var3328 String var1430) ; Statement: $r37 = r66 
(define-const var2894 ClassObject (type/-1562462879 var1581)) ; Statement: $r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(define-const var193 ClassObject (var1686_getReturnType/-629822788 var3718 var2894)) ; Statement: $r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67) 
(define-const var1573 var2883 var2169) ; Statement: $r38 = r63 
(define-const var1918 Bool var2278) ; Statement: $z4 = z12 
(define-const var2568 Bool var2265) ; Statement: $z5 = z13 
(define-const var2442 var2801 var3148) ; Statement: $r39 = r57 
(define-const var2039 String var3105) ; Statement: $r40 = r55 
(define-const var3510 String var439) ; Statement: $r41 = r56 
(assert true)
(define-const var1629 String (getDatabaseId/1468239399 var1752)) ; Statement: $r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>() 
 ; Statement: if r13 == null goto $r68 = null 
(assert (not (= var418 null-var3761))) ; Negate: Cond: r13 == null  
(define-const var1405 String (var3761_resultSets/-1611277552 var418)) ; Statement: $r33 = interfaceinvoke r13.<org.apache.ibatis.annotations.Options: java.lang.String resultSets()>() 
(assert true)
(define-const var1822 String (nullOrEmpty/1417204373 var1581 var1405)) ; Statement: $r68 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.String nullOrEmpty(java.lang.String)>($r33) 
 ; Statement: goto [?= $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var994 Bool (isDirtySelect/42750390 var1752)) ; Statement: $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>() 
(assert true)
;(assert (addMappedStatement/-1285273847 var3421 var558 var928 var2249 var1063 var1437 var3334 null-String var3199 var3328 var193 var1573 var1918 var2568 (ite (= 1 0) true false) var2442 var2039 var3510 var1629 var2036 var1822 var994)) ; Statement: virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3) 

(declare-const var3421!1 var3947)
(declare-const var558!1 String)
(declare-const var928!1 var3782)
(declare-const var2249!1 var234)
(declare-const var1063!1 var1733)
(declare-const var1437!1 Int)
(declare-const var3334!1 Int)
(declare-const var3543 var3100)
(declare-const var3199!1 ClassObject)
(declare-const var3328!1 String)
(declare-const var193!1 ClassObject)
(declare-const var1573!1 var2883)
(declare-const var1918!1 Bool)
(declare-const var2568!1 Bool)
(declare-const var3535 Int)
(declare-const var2442!1 var2801)
(declare-const var2039!1 String)
(declare-const var3510!1 String)
(declare-const var1629!1 String)
(declare-const var2036!1 var103)
(declare-const var1822!1 String)
(declare-const var994!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotation/1211161445=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.annotation.Annotation), buildSqlSource/1129554691=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.annotation.Annotation, java.lang.Class, org.apache.ibatis.scripting.LanguageDriver, java.lang.reflect.Method], org.apache.ibatis.mapping.SqlSource), getSqlCommandType/1172365906=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], org.apache.ibatis.mapping.SqlCommandType), arr-ClassObject-init=([], java.lang.Class[]), getAnnotationWrapper/-1343245648=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.reflect.Method, boolean, java.lang.Class[]], java.util.Optional), var188_bootstrap$/449714105=([], java.util.function.Function), map/1305667865=([java.util.Optional, java.util.function.Function], java.util.Optional), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-var3564-to-var3761=([java.lang.Object], org.apache.ibatis.annotations.Options), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), equals/1194252418=([java.lang.Enum, java.lang.Object], boolean), cast-from-var1733-to-var807=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Enum), cast-from-var1733-to-var3564=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Object), cast-from-var651-to-var2801=([org.apache.ibatis.executor.keygen.NoKeyGenerator], org.apache.ibatis.executor.keygen.KeyGenerator), configuration/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.session.Configuration), getDefaultResultSetType/2016612370=([org.apache.ibatis.session.Configuration], org.apache.ibatis.mapping.ResultSetType), assistant/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), var1686_getReturnType/-629822788=([java.lang.reflect.Method, java.lang.Class], java.lang.Class), getDatabaseId/1468239399=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.String), var3761_resultSets/-1611277552=([org.apache.ibatis.annotations.Options], java.lang.String), nullOrEmpty/1417204373=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.String], java.lang.String), isDirtySelect/42750390=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], boolean), addMappedStatement/-1285273847=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, org.apache.ibatis.mapping.SqlSource, org.apache.ibatis.mapping.StatementType, org.apache.ibatis.mapping.SqlCommandType, java.lang.Integer, java.lang.Integer, java.lang.String, java.lang.Class, java.lang.String, java.lang.Class, org.apache.ibatis.mapping.ResultSetType, boolean, boolean, boolean, org.apache.ibatis.executor.keygen.KeyGenerator, java.lang.String, java.lang.String, java.lang.String, org.apache.ibatis.scripting.LanguageDriver, java.lang.String, boolean], org.apache.ibatis.mapping.MappedStatement)}
; {var1686=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var1581=r0, var3199=r2, var103=org.apache.ibatis.scripting.LanguageDriver, var2036=r3, var3895=java.lang.reflect.Method, var3718=r4, var660=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper, var1752=r1, var825=java.lang.annotation.Annotation, var726=$r5, var3782=org.apache.ibatis.mapping.SqlSource, var928=r6, var1733=org.apache.ibatis.mapping.SqlCommandType, var1063=r7, var621=$r8, var3761=org.apache.ibatis.annotations.Options, var739=java.util.Optional, var3457=$r10, var2234=java.util.function.Function, var188=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6, var2283=$r9, var556=$r11, var3564=java.lang.Object, var3035=$r12, var418=r13, var3716=$r69, var3245=$r15, var3122=$r16, var855=$r17, var1763=$r19, var3483=$r18, var2339=$r20, var558=r21, var3100=null_type, var3105=r55, var439=r56, var551=$r22, var807=java.lang.Enum, var2800=$z0, var1147=$r53, var3601=$z9, var2801=org.apache.ibatis.executor.keygen.KeyGenerator, var651=org.apache.ibatis.executor.keygen.NoKeyGenerator, var3148=r57, var3585=r60, var3655=r61, var234=org.apache.ibatis.mapping.StatementType, var3614=r62, var3578=org.apache.ibatis.session.Configuration, var1343=$r28, var2883=org.apache.ibatis.mapping.ResultSetType, var2169=r63, var1112=$r29, var947=$z15, var2181=$z14, var3516=z2, var3520=$z11, var2278=z12, var2265=z13, var1430=r66, var3947=org.apache.ibatis.builder.MapperBuilderAssistant, var3421=$r30, var2249=$r34, var1437=$r35, var3334=$r36, var3328=$r37, var2894=$r67, var193=$r32, var1573=$r38, var1918=$z4, var2568=$z5, var2442=$r39, var2039=$r40, var3510=$r41, var1629=$r31, var1405=$r33, var1822=$r68, var994=$z3, var3543=null, var3535=0, var3244=org.apache.ibatis.mapping.MappedStatement}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var1686, r0=var1581, r2=var3199, org.apache.ibatis.scripting.LanguageDriver=var103, r3=var2036, java.lang.reflect.Method=var3895, r4=var3718, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper=var660, r1=var1752, java.lang.annotation.Annotation=var825, $r5=var726, org.apache.ibatis.mapping.SqlSource=var3782, r6=var928, org.apache.ibatis.mapping.SqlCommandType=var1733, r7=var1063, $r8=var621, org.apache.ibatis.annotations.Options=var3761, java.util.Optional=var739, $r10=var3457, java.util.function.Function=var2234, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6=var188, $r9=var2283, $r11=var556, java.lang.Object=var3564, $r12=var3035, r13=var418, $r69=var3716, $r15=var3245, $r16=var3122, $r17=var855, $r19=var1763, $r18=var3483, $r20=var2339, r21=var558, null_type=var3100, r55=var3105, r56=var439, $r22=var551, java.lang.Enum=var807, $z0=var2800, $r53=var1147, $z9=var3601, org.apache.ibatis.executor.keygen.KeyGenerator=var2801, org.apache.ibatis.executor.keygen.NoKeyGenerator=var651, r57=var3148, r60=var3585, r61=var3655, org.apache.ibatis.mapping.StatementType=var234, r62=var3614, org.apache.ibatis.session.Configuration=var3578, $r28=var1343, org.apache.ibatis.mapping.ResultSetType=var2883, r63=var2169, $r29=var1112, $z15=var947, $z14=var2181, z2=var3516, $z11=var3520, z12=var2278, z13=var2265, r66=var1430, org.apache.ibatis.builder.MapperBuilderAssistant=var3947, $r30=var3421, $r34=var2249, $r35=var1437, $r36=var3334, $r37=var3328, $r67=var2894, $r32=var193, $r38=var1573, $z4=var1918, $z5=var2568, $r39=var2442, $r40=var2039, $r41=var3510, $r31=var1629, $r33=var1405, $r68=var1822, $z3=var994, null=var3543, 0=var3535, org.apache.ibatis.mapping.MappedStatement=var3244}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r2 := @parameter0: java.lang.Class;	r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver;	r4 := @parameter2: java.lang.reflect.Method;	r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper;	$r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>();	r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4);	r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>();	$r8 = newarray (java.lang.Class)[1];	$r8[0] = class "Lorg/apache/ibatis/annotations/Options;";	$r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8);	$r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>();	$r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9);	$r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null);	r13 = (org.apache.ibatis.annotations.Options) $r12;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	r55 = null;	r56 = null;	$r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT>;	$z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1];	$r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE>;	$z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r60 = null;	r61 = null;	r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED>;	$r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration>;	r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>();	$r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT>;	if r7 != $r29 goto $z15 = 0;	$z15 = 0;	$z14 = 0;	z2 = $z15;	if $z14 != 0 goto $z11 = 0;	$z11 = 0;	z12 = $z11;	z13 = z2;	if r13 == null goto r66 = null;	r66 = null;	if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r34 = r62;	$r35 = r60;	$r36 = r61;	$r37 = r66;	$r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67);	$r38 = r63;	$z4 = z12;	$z5 = z13;	$r39 = r57;	$r40 = r55;	$r41 = r56;	$r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>();	if r13 == null goto $r68 = null;	$r33 = interfaceinvoke r13.<org.apache.ibatis.annotations.Options: java.lang.String resultSets()>();	$r68 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.String nullOrEmpty(java.lang.String)>($r33);	goto [?= $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>()];	$z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>();	virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3);	return
;block_num 12
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var907 0)
(declare-sort var2738 0)
(declare-sort var3191 0)
(declare-sort var131 0)
(declare-sort var469 0)
(declare-sort var564 0)
(declare-sort var1439 0)
(declare-sort var723 0)
(declare-sort var2073 0)
(declare-sort var3087 0)
(declare-sort var1539 0)
(declare-sort var885 0)
(declare-sort var1059 0)
(declare-sort var2304 0)
(declare-sort var2017 0)
(declare-sort var3971 0)
(declare-sort var2262 0)
(declare-sort var521 0)
(declare-sort var1621 0)
(declare-sort var1792 0)
(declare-sort var2106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var723!class ClassObject)
(declare-fun getAnnotation/1211161445 (var131) var469)
(declare-fun buildSqlSource/1129554691 (var907 var469 ClassObject var2738 var3191) var564)
(declare-fun getSqlCommandType/1172365906 (var131) var1439)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun getAnnotationWrapper/-1343245648 (var907 var3191 Bool (Array Int ClassObject)) var2073)
(declare-fun var1539_bootstrap$/449714105 () var3087)
(declare-fun map/1305667865 (var2073 var3087) var2073)
(declare-fun orElse/-757175127 (var2073 var885) var885)
(declare-fun cast-from-var885-to-var723 (var885) var723)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-1562462879 (var907) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1227988463 (var3191) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun equals/1194252418 (var2304 var885) Bool)
(declare-fun cast-from-var1439-to-var2304 (var1439) var2304)
(declare-fun cast-from-var1439-to-var885 (var1439) var885)
(declare-fun cast-from-var3971-to-var2017 (var3971) var2017)
(declare-fun configuration/-1562462879 (var907) var521)
(declare-fun getDefaultResultSetType/2016612370 (var521) var1621)
(declare-fun assistant/-1562462879 (var907) var1792)
(declare-fun var907_getReturnType/-629822788 (var3191 ClassObject) ClassObject)
(declare-fun getDatabaseId/1468239399 (var131) String)
(declare-fun isDirtySelect/42750390 (var131) Bool)
(declare-fun addMappedStatement/-1285273847 (var1792 String var564 var2262 var1439 Int Int String ClassObject String ClassObject var1621 Bool Bool Bool var2017 String String String var2738 String Bool) var2106)
(declare-const null-var907 var907)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2738 var2738)
(declare-const null-var3191 var3191)
(declare-const null-var131 var131)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-NullType var1059)
(declare-const null-var885 var885)
(declare-const null-String String)
(declare-const var1439-INSERT var1439)
(declare-const var1439-UPDATE var1439)
(declare-const var3971-INSTANCE var3971)
(declare-const null-Int Int)
(declare-const var2262-PREPARED var2262)
(declare-const var1439-SELECT var1439)
(declare-const null-var723 var723)
(declare-const var2983 var907) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var2983 null-var907)))
(declare-const var2879 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var2879 null-ClassObject)))
(declare-const var895 var2738) ; Statement: r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver 
(assert (not (= var895 null-var2738)))
(declare-const var1755 var3191) ; Statement: r4 := @parameter2: java.lang.reflect.Method 
(assert (not (= var1755 null-var3191)))
(declare-const var3865 var131) ; Statement: r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper 
(assert (not (= var3865 null-var131)))
(assert true)
(define-const var1503 var469 (getAnnotation/1211161445 var3865)) ; Statement: $r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>() 
(assert true)
(define-const var2184 var564 (buildSqlSource/1129554691 var2983 var1503 var2879 var895 var1755)) ; Statement: r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4) 
(assert true)
(define-const var791 var1439 (getSqlCommandType/1172365906 var3865)) ; Statement: r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>() 
(define-const var44 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r8 = newarray (java.lang.Class)[1] 
(declare-const var44!1 (Array Int ClassObject))
(assert (not (= var44!1 null-__Array__Int__ClassObject__)))
(assert (= (select var44!1 0) var723!class)) ; Statement: $r8[0] = class "Lorg/apache/ibatis/annotations/Options;" 
(assert true)
(define-const var530 var2073 (getAnnotationWrapper/-1343245648 var2983 var1755 (ite (= 1 0) true false) var44!1)) ; Statement: $r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8) 
(define-const var1099 var3087 var1539_bootstrap$/449714105) ; Statement: $r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var3660 var2073 (map/1305667865 var530 var1099)) ; Statement: $r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9) 
(assert true)
(define-const var160 var885 (orElse/-757175127 var3660 null-var885)) ; Statement: $r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null) 
(define-const var3537 var723 (cast-from-var885-to-var723 var160)) ; Statement: r13 = (org.apache.ibatis.annotations.Options) $r12 
(define-const var3734 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3734)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3734!1 String)
(assert (= var3734!1 ""))
(define-const var2765 ClassObject (type/-1562462879 var2983)) ; Statement: $r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(assert true)
(define-const var3046 String (getName/-1958580599 var2765)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2793 String (append/672562846 var3734!1 var3046)) ; Statement: $r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3734!2 String)
(assert (= var3734!2 (str.++ var3734!1 var3046)))
(assert true)
(define-const var3147 String (append/672562846 var2793 ".")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2793!1 String)
(assert (= var2793!1 (str.++ var2793 ".")))
(assert true)
(define-const var3108 String (getName/1227988463 var1755)) ; Statement: $r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2418 String (append/672562846 var3147 var3108)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3147!1 String)
(assert (= var3147!1 (str.++ var3147 var3108)))
(assert true)
(define-const var505 String (toString/-2075883882 var2418)) ; Statement: r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3715 String null-String) ; Statement: r55 = null 
(define-const var1343 String null-String) ; Statement: r56 = null 
(define-const var1213 var1439 var1439-INSERT) ; Statement: $r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT> 
(assert true)
(define-const var2569 Bool (equals/1194252418 (cast-from-var1439-to-var2304 var1213) (cast-from-var1439-to-var885 var791))) ; Statement: $z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1] 
(assert (not (not (= (ite var2569 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var833 var1439 var1439-UPDATE) ; Statement: $r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE> 
(assert true)
(define-const var3936 Bool (equals/1194252418 (cast-from-var1439-to-var2304 var833) (cast-from-var1439-to-var885 var791))) ; Statement: $z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert (= (ite var3936 1 0) 0)) ; Cond: $z9 == 0 
(define-const var1684 var2017 (cast-from-var3971-to-var2017 var3971-INSTANCE)) ; Statement: r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert true) ; Non Conditional
(define-const var849 Int null-Int) ; Statement: r60 = null 
(define-const var225 Int null-Int) ; Statement: r61 = null 
(define-const var867 var2262 var2262-PREPARED) ; Statement: r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED> 
(define-const var331 var521 (configuration/-1562462879 var2983)) ; Statement: $r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var3520 var1621 (getDefaultResultSetType/2016612370 var331)) ; Statement: r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>() 
(define-const var3557 var1439 var1439-SELECT) ; Statement: $r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT> 
 ; Statement: if r7 != $r29 goto $z15 = 0 
(assert (not (= var791 var3557))) ; Cond: r7 != $r29 
(define-const var1180 Bool (ite (= 1 0) true false)) ; Statement: $z15 = 0 
(define-const var1892 Bool (ite (= 1 0) true false)) ; Statement: $z14 = 0 
(assert true) ; Non Conditional
(define-const var2932 Bool var1180) ; Statement: z2 = $z15 
 ; Statement: if $z14 != 0 goto $z11 = 0 
(assert (not (not (= (ite var1892 1 0) 0)))) ; Negate: Cond: $z14 != 0  
(define-const var3979 Bool (ite (= 1 1) true false)) ; Statement: $z11 = 1 
 ; Statement: goto [?= z12 = $z11] 
(assert true) ; Non Conditional
(define-const var2377 Bool var3979) ; Statement: z12 = $z11 
(define-const var2317 Bool var2932) ; Statement: z13 = z2 
 ; Statement: if r13 == null goto r66 = null 
(assert (= var3537 null-var723)) ; Cond: r13 == null 
(define-const var265 String null-String) ; Statement: r66 = null 
 ; Statement: if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(assert (= (ite var2932 1 0) 0)) ; Cond: z2 == 0 
(define-const var598 var1792 (assistant/-1562462879 var2983)) ; Statement: $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(define-const var3566 var2262 var867) ; Statement: $r34 = r62 
(define-const var115 Int var849) ; Statement: $r35 = r60 
(define-const var1671 Int var225) ; Statement: $r36 = r61 
(define-const var3491 String var265) ; Statement: $r37 = r66 
(define-const var68 ClassObject (type/-1562462879 var2983)) ; Statement: $r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(define-const var1713 ClassObject (var907_getReturnType/-629822788 var1755 var68)) ; Statement: $r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67) 
(define-const var1424 var1621 var3520) ; Statement: $r38 = r63 
(define-const var3804 Bool var2377) ; Statement: $z4 = z12 
(define-const var971 Bool var2317) ; Statement: $z5 = z13 
(define-const var1616 var2017 var1684) ; Statement: $r39 = r57 
(define-const var1543 String var3715) ; Statement: $r40 = r55 
(define-const var142 String var1343) ; Statement: $r41 = r56 
(assert true)
(define-const var1026 String (getDatabaseId/1468239399 var3865)) ; Statement: $r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>() 
 ; Statement: if r13 == null goto $r68 = null 
(assert (= var3537 null-var723)) ; Cond: r13 == null 
(define-const var3853 String null-String) ; Statement: $r68 = null 
(assert true) ; Non Conditional
(assert true)
(define-const var2142 Bool (isDirtySelect/42750390 var3865)) ; Statement: $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>() 
(assert true)
;(assert (addMappedStatement/-1285273847 var598 var505 var2184 var3566 var791 var115 var1671 null-String var2879 var3491 var1713 var1424 var3804 var971 (ite (= 1 0) true false) var1616 var1543 var142 var1026 var895 var3853 var2142)) ; Statement: virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3) 

(declare-const var598!1 var1792)
(declare-const var505!1 String)
(declare-const var2184!1 var564)
(declare-const var3566!1 var2262)
(declare-const var791!1 var1439)
(declare-const var115!1 Int)
(declare-const var1671!1 Int)
(declare-const var3041 var1059)
(declare-const var2879!1 ClassObject)
(declare-const var3491!1 String)
(declare-const var1713!1 ClassObject)
(declare-const var1424!1 var1621)
(declare-const var3804!1 Bool)
(declare-const var971!1 Bool)
(declare-const var3783 Int)
(declare-const var1616!1 var2017)
(declare-const var1543!1 String)
(declare-const var142!1 String)
(declare-const var1026!1 String)
(declare-const var895!1 var2738)
(declare-const var3853!1 String)
(declare-const var2142!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotation/1211161445=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.annotation.Annotation), buildSqlSource/1129554691=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.annotation.Annotation, java.lang.Class, org.apache.ibatis.scripting.LanguageDriver, java.lang.reflect.Method], org.apache.ibatis.mapping.SqlSource), getSqlCommandType/1172365906=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], org.apache.ibatis.mapping.SqlCommandType), arr-ClassObject-init=([], java.lang.Class[]), getAnnotationWrapper/-1343245648=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.reflect.Method, boolean, java.lang.Class[]], java.util.Optional), var1539_bootstrap$/449714105=([], java.util.function.Function), map/1305667865=([java.util.Optional, java.util.function.Function], java.util.Optional), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-var885-to-var723=([java.lang.Object], org.apache.ibatis.annotations.Options), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), equals/1194252418=([java.lang.Enum, java.lang.Object], boolean), cast-from-var1439-to-var2304=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Enum), cast-from-var1439-to-var885=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Object), cast-from-var3971-to-var2017=([org.apache.ibatis.executor.keygen.NoKeyGenerator], org.apache.ibatis.executor.keygen.KeyGenerator), configuration/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.session.Configuration), getDefaultResultSetType/2016612370=([org.apache.ibatis.session.Configuration], org.apache.ibatis.mapping.ResultSetType), assistant/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), var907_getReturnType/-629822788=([java.lang.reflect.Method, java.lang.Class], java.lang.Class), getDatabaseId/1468239399=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.String), isDirtySelect/42750390=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], boolean), addMappedStatement/-1285273847=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, org.apache.ibatis.mapping.SqlSource, org.apache.ibatis.mapping.StatementType, org.apache.ibatis.mapping.SqlCommandType, java.lang.Integer, java.lang.Integer, java.lang.String, java.lang.Class, java.lang.String, java.lang.Class, org.apache.ibatis.mapping.ResultSetType, boolean, boolean, boolean, org.apache.ibatis.executor.keygen.KeyGenerator, java.lang.String, java.lang.String, java.lang.String, org.apache.ibatis.scripting.LanguageDriver, java.lang.String, boolean], org.apache.ibatis.mapping.MappedStatement)}
; {var907=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var2983=r0, var2879=r2, var2738=org.apache.ibatis.scripting.LanguageDriver, var895=r3, var3191=java.lang.reflect.Method, var1755=r4, var131=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper, var3865=r1, var469=java.lang.annotation.Annotation, var1503=$r5, var564=org.apache.ibatis.mapping.SqlSource, var2184=r6, var1439=org.apache.ibatis.mapping.SqlCommandType, var791=r7, var44=$r8, var723=org.apache.ibatis.annotations.Options, var2073=java.util.Optional, var530=$r10, var3087=java.util.function.Function, var1539=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6, var1099=$r9, var3660=$r11, var885=java.lang.Object, var160=$r12, var3537=r13, var3734=$r69, var2765=$r15, var3046=$r16, var2793=$r17, var3147=$r19, var3108=$r18, var2418=$r20, var505=r21, var1059=null_type, var3715=r55, var1343=r56, var1213=$r22, var2304=java.lang.Enum, var2569=$z0, var833=$r53, var3936=$z9, var2017=org.apache.ibatis.executor.keygen.KeyGenerator, var3971=org.apache.ibatis.executor.keygen.NoKeyGenerator, var1684=r57, var849=r60, var225=r61, var2262=org.apache.ibatis.mapping.StatementType, var867=r62, var521=org.apache.ibatis.session.Configuration, var331=$r28, var1621=org.apache.ibatis.mapping.ResultSetType, var3520=r63, var3557=$r29, var1180=$z15, var1892=$z14, var2932=z2, var3979=$z11, var2377=z12, var2317=z13, var265=r66, var1792=org.apache.ibatis.builder.MapperBuilderAssistant, var598=$r30, var3566=$r34, var115=$r35, var1671=$r36, var3491=$r37, var68=$r67, var1713=$r32, var1424=$r38, var3804=$z4, var971=$z5, var1616=$r39, var1543=$r40, var142=$r41, var1026=$r31, var3853=$r68, var2142=$z3, var3041=null, var3783=0, var2106=org.apache.ibatis.mapping.MappedStatement}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var907, r0=var2983, r2=var2879, org.apache.ibatis.scripting.LanguageDriver=var2738, r3=var895, java.lang.reflect.Method=var3191, r4=var1755, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper=var131, r1=var3865, java.lang.annotation.Annotation=var469, $r5=var1503, org.apache.ibatis.mapping.SqlSource=var564, r6=var2184, org.apache.ibatis.mapping.SqlCommandType=var1439, r7=var791, $r8=var44, org.apache.ibatis.annotations.Options=var723, java.util.Optional=var2073, $r10=var530, java.util.function.Function=var3087, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6=var1539, $r9=var1099, $r11=var3660, java.lang.Object=var885, $r12=var160, r13=var3537, $r69=var3734, $r15=var2765, $r16=var3046, $r17=var2793, $r19=var3147, $r18=var3108, $r20=var2418, r21=var505, null_type=var1059, r55=var3715, r56=var1343, $r22=var1213, java.lang.Enum=var2304, $z0=var2569, $r53=var833, $z9=var3936, org.apache.ibatis.executor.keygen.KeyGenerator=var2017, org.apache.ibatis.executor.keygen.NoKeyGenerator=var3971, r57=var1684, r60=var849, r61=var225, org.apache.ibatis.mapping.StatementType=var2262, r62=var867, org.apache.ibatis.session.Configuration=var521, $r28=var331, org.apache.ibatis.mapping.ResultSetType=var1621, r63=var3520, $r29=var3557, $z15=var1180, $z14=var1892, z2=var2932, $z11=var3979, z12=var2377, z13=var2317, r66=var265, org.apache.ibatis.builder.MapperBuilderAssistant=var1792, $r30=var598, $r34=var3566, $r35=var115, $r36=var1671, $r37=var3491, $r67=var68, $r32=var1713, $r38=var1424, $z4=var3804, $z5=var971, $r39=var1616, $r40=var1543, $r41=var142, $r31=var1026, $r68=var3853, $z3=var2142, null=var3041, 0=var3783, org.apache.ibatis.mapping.MappedStatement=var2106}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r2 := @parameter0: java.lang.Class;	r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver;	r4 := @parameter2: java.lang.reflect.Method;	r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper;	$r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>();	r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4);	r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>();	$r8 = newarray (java.lang.Class)[1];	$r8[0] = class "Lorg/apache/ibatis/annotations/Options;";	$r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8);	$r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>();	$r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9);	$r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null);	r13 = (org.apache.ibatis.annotations.Options) $r12;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	r55 = null;	r56 = null;	$r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT>;	$z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1];	$r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE>;	$z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r60 = null;	r61 = null;	r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED>;	$r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration>;	r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>();	$r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT>;	if r7 != $r29 goto $z15 = 0;	$z15 = 0;	$z14 = 0;	z2 = $z15;	if $z14 != 0 goto $z11 = 0;	$z11 = 1;	goto [?= z12 = $z11];	z12 = $z11;	z13 = z2;	if r13 == null goto r66 = null;	r66 = null;	if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r34 = r62;	$r35 = r60;	$r36 = r61;	$r37 = r66;	$r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67);	$r38 = r63;	$z4 = z12;	$z5 = z13;	$r39 = r57;	$r40 = r55;	$r41 = r56;	$r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>();	if r13 == null goto $r68 = null;	$r68 = null;	$z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>();	virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3);	return
;block_num 12
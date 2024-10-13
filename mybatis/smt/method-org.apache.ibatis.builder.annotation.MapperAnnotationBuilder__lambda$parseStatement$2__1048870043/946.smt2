(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1512 0)
(declare-sort var812 0)
(declare-sort var769 0)
(declare-sort var18 0)
(declare-sort var1221 0)
(declare-sort var1606 0)
(declare-sort var1852 0)
(declare-sort var1610 0)
(declare-sort var681 0)
(declare-sort var3529 0)
(declare-sort var1907 0)
(declare-sort var53 0)
(declare-sort var3368 0)
(declare-sort var1384 0)
(declare-sort var3864 0)
(declare-sort var1770 0)
(declare-sort var3965 0)
(declare-sort var689 0)
(declare-sort var979 0)
(declare-sort var3394 0)
(declare-sort var3061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1610!class ClassObject)
(declare-fun getAnnotation/1211161445 (var18) var1221)
(declare-fun buildSqlSource/1129554691 (var1512 var1221 ClassObject var812 var769) var1606)
(declare-fun getSqlCommandType/1172365906 (var18) var1852)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun getAnnotationWrapper/-1343245648 (var1512 var769 Bool (Array Int ClassObject)) var681)
(declare-fun var1907_bootstrap$/449714105 () var3529)
(declare-fun map/1305667865 (var681 var3529) var681)
(declare-fun orElse/-757175127 (var681 var53) var53)
(declare-fun cast-from-var53-to-var1610 (var53) var1610)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-1562462879 (var1512) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1227988463 (var769) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun equals/1194252418 (var1384 var53) Bool)
(declare-fun cast-from-var1852-to-var1384 (var1852) var1384)
(declare-fun cast-from-var1852-to-var53 (var1852) var53)
(declare-fun cast-from-var1770-to-var3864 (var1770) var3864)
(declare-fun configuration/-1562462879 (var1512) var689)
(declare-fun getDefaultResultSetType/2016612370 (var689) var979)
(declare-fun assistant/-1562462879 (var1512) var3394)
(declare-fun var1512_getReturnType/-629822788 (var769 ClassObject) ClassObject)
(declare-fun getDatabaseId/1468239399 (var18) String)
(declare-fun var1610_resultSets/-1611277552 (var1610) String)
(declare-fun nullOrEmpty/1417204373 (var1512 String) String)
(declare-fun isDirtySelect/42750390 (var18) Bool)
(declare-fun addMappedStatement/-1285273847 (var3394 String var1606 var3965 var1852 Int Int String ClassObject String ClassObject var979 Bool Bool Bool var3864 String String String var812 String Bool) var3061)
(declare-const null-var1512 var1512)
(declare-const null-ClassObject ClassObject)
(declare-const null-var812 var812)
(declare-const null-var769 var769)
(declare-const null-var18 var18)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-NullType var3368)
(declare-const null-var53 var53)
(declare-const null-String String)
(declare-const var1852-INSERT var1852)
(declare-const var1852-UPDATE var1852)
(declare-const var1770-INSTANCE var1770)
(declare-const null-Int Int)
(declare-const var3965-PREPARED var3965)
(declare-const var1852-SELECT var1852)
(declare-const null-var1610 var1610)
(declare-const var461 var1512) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var461 null-var1512)))
(declare-const var778 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var778 null-ClassObject)))
(declare-const var3924 var812) ; Statement: r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver 
(assert (not (= var3924 null-var812)))
(declare-const var1558 var769) ; Statement: r4 := @parameter2: java.lang.reflect.Method 
(assert (not (= var1558 null-var769)))
(declare-const var2830 var18) ; Statement: r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper 
(assert (not (= var2830 null-var18)))
(assert true)
(define-const var3736 var1221 (getAnnotation/1211161445 var2830)) ; Statement: $r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>() 
(assert true)
(define-const var1792 var1606 (buildSqlSource/1129554691 var461 var3736 var778 var3924 var1558)) ; Statement: r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4) 
(assert true)
(define-const var523 var1852 (getSqlCommandType/1172365906 var2830)) ; Statement: r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>() 
(define-const var2934 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r8 = newarray (java.lang.Class)[1] 
(declare-const var2934!1 (Array Int ClassObject))
(assert (not (= var2934!1 null-__Array__Int__ClassObject__)))
(assert (= (select var2934!1 0) var1610!class)) ; Statement: $r8[0] = class "Lorg/apache/ibatis/annotations/Options;" 
(assert true)
(define-const var1971 var681 (getAnnotationWrapper/-1343245648 var461 var1558 (ite (= 1 0) true false) var2934!1)) ; Statement: $r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8) 
(define-const var1768 var3529 var1907_bootstrap$/449714105) ; Statement: $r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var1585 var681 (map/1305667865 var1971 var1768)) ; Statement: $r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9) 
(assert true)
(define-const var3106 var53 (orElse/-757175127 var1585 null-var53)) ; Statement: $r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null) 
(define-const var2740 var1610 (cast-from-var53-to-var1610 var3106)) ; Statement: r13 = (org.apache.ibatis.annotations.Options) $r12 
(define-const var1152 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1152)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1152!1 String)
(assert (= var1152!1 ""))
(define-const var378 ClassObject (type/-1562462879 var461)) ; Statement: $r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(assert true)
(define-const var1417 String (getName/-1958580599 var378)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2192 String (append/672562846 var1152!1 var1417)) ; Statement: $r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1152!2 String)
(assert (= var1152!2 (str.++ var1152!1 var1417)))
(assert true)
(define-const var1771 String (append/672562846 var2192 ".")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2192!1 String)
(assert (= var2192!1 (str.++ var2192 ".")))
(assert true)
(define-const var1468 String (getName/1227988463 var1558)) ; Statement: $r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1226 String (append/672562846 var1771 var1468)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1771!1 String)
(assert (= var1771!1 (str.++ var1771 var1468)))
(assert true)
(define-const var260 String (toString/-2075883882 var1226)) ; Statement: r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1723 String null-String) ; Statement: r55 = null 
(define-const var3097 String null-String) ; Statement: r56 = null 
(define-const var1651 var1852 var1852-INSERT) ; Statement: $r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT> 
(assert true)
(define-const var1509 Bool (equals/1194252418 (cast-from-var1852-to-var1384 var1651) (cast-from-var1852-to-var53 var523))) ; Statement: $z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1] 
(assert (not (not (= (ite var1509 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1577 var1852 var1852-UPDATE) ; Statement: $r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE> 
(assert true)
(define-const var1564 Bool (equals/1194252418 (cast-from-var1852-to-var1384 var1577) (cast-from-var1852-to-var53 var523))) ; Statement: $z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert (= (ite var1564 1 0) 0)) ; Cond: $z9 == 0 
(define-const var1095 var3864 (cast-from-var1770-to-var3864 var1770-INSTANCE)) ; Statement: r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert true) ; Non Conditional
(define-const var1165 Int null-Int) ; Statement: r60 = null 
(define-const var2826 Int null-Int) ; Statement: r61 = null 
(define-const var2471 var3965 var3965-PREPARED) ; Statement: r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED> 
(define-const var587 var689 (configuration/-1562462879 var461)) ; Statement: $r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var2889 var979 (getDefaultResultSetType/2016612370 var587)) ; Statement: r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>() 
(define-const var2710 var1852 var1852-SELECT) ; Statement: $r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT> 
 ; Statement: if r7 != $r29 goto $z15 = 0 
(assert (not (not (= var523 var2710)))) ; Negate: Cond: r7 != $r29  
(define-const var2620 Bool (ite (= 1 1) true false)) ; Statement: $z15 = 1 
(define-const var258 Bool (ite (= 1 1) true false)) ; Statement: $z14 = 1 
 ; Statement: goto [?= z2 = $z15] 
(assert true) ; Non Conditional
(define-const var663 Bool var2620) ; Statement: z2 = $z15 
 ; Statement: if $z14 != 0 goto $z11 = 0 
(assert (not (= (ite var258 1 0) 0))) ; Cond: $z14 != 0 
(define-const var1783 Bool (ite (= 1 0) true false)) ; Statement: $z11 = 0 
(assert true) ; Non Conditional
(define-const var3561 Bool var1783) ; Statement: z12 = $z11 
(define-const var1080 Bool var663) ; Statement: z13 = z2 
 ; Statement: if r13 == null goto r66 = null 
(assert (= var2740 null-var1610)) ; Cond: r13 == null 
(define-const var2741 String null-String) ; Statement: r66 = null 
 ; Statement: if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(assert (= (ite var663 1 0) 0)) ; Cond: z2 == 0 
(define-const var140 var3394 (assistant/-1562462879 var461)) ; Statement: $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(define-const var1713 var3965 var2471) ; Statement: $r34 = r62 
(define-const var1576 Int var1165) ; Statement: $r35 = r60 
(define-const var1036 Int var2826) ; Statement: $r36 = r61 
(define-const var100 String var2741) ; Statement: $r37 = r66 
(define-const var3134 ClassObject (type/-1562462879 var461)) ; Statement: $r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(define-const var2894 ClassObject (var1512_getReturnType/-629822788 var1558 var3134)) ; Statement: $r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67) 
(define-const var1243 var979 var2889) ; Statement: $r38 = r63 
(define-const var3566 Bool var3561) ; Statement: $z4 = z12 
(define-const var2795 Bool var1080) ; Statement: $z5 = z13 
(define-const var2536 var3864 var1095) ; Statement: $r39 = r57 
(define-const var3263 String var1723) ; Statement: $r40 = r55 
(define-const var1480 String var3097) ; Statement: $r41 = r56 
(assert true)
(define-const var578 String (getDatabaseId/1468239399 var2830)) ; Statement: $r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>() 
 ; Statement: if r13 == null goto $r68 = null 
(assert (not (= var2740 null-var1610))) ; Negate: Cond: r13 == null  
(define-const var895 String (var1610_resultSets/-1611277552 var2740)) ; Statement: $r33 = interfaceinvoke r13.<org.apache.ibatis.annotations.Options: java.lang.String resultSets()>() 
(assert true)
(define-const var1716 String (nullOrEmpty/1417204373 var461 var895)) ; Statement: $r68 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.String nullOrEmpty(java.lang.String)>($r33) 
 ; Statement: goto [?= $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2298 Bool (isDirtySelect/42750390 var2830)) ; Statement: $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>() 
(assert true)
;(assert (addMappedStatement/-1285273847 var140 var260 var1792 var1713 var523 var1576 var1036 null-String var778 var100 var2894 var1243 var3566 var2795 (ite (= 1 0) true false) var2536 var3263 var1480 var578 var3924 var1716 var2298)) ; Statement: virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3) 

(declare-const var140!1 var3394)
(declare-const var260!1 String)
(declare-const var1792!1 var1606)
(declare-const var1713!1 var3965)
(declare-const var523!1 var1852)
(declare-const var1576!1 Int)
(declare-const var1036!1 Int)
(declare-const var211 var3368)
(declare-const var778!1 ClassObject)
(declare-const var100!1 String)
(declare-const var2894!1 ClassObject)
(declare-const var1243!1 var979)
(declare-const var3566!1 Bool)
(declare-const var2795!1 Bool)
(declare-const var3279 Int)
(declare-const var2536!1 var3864)
(declare-const var3263!1 String)
(declare-const var1480!1 String)
(declare-const var578!1 String)
(declare-const var3924!1 var812)
(declare-const var1716!1 String)
(declare-const var2298!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotation/1211161445=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.annotation.Annotation), buildSqlSource/1129554691=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.annotation.Annotation, java.lang.Class, org.apache.ibatis.scripting.LanguageDriver, java.lang.reflect.Method], org.apache.ibatis.mapping.SqlSource), getSqlCommandType/1172365906=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], org.apache.ibatis.mapping.SqlCommandType), arr-ClassObject-init=([], java.lang.Class[]), getAnnotationWrapper/-1343245648=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.reflect.Method, boolean, java.lang.Class[]], java.util.Optional), var1907_bootstrap$/449714105=([], java.util.function.Function), map/1305667865=([java.util.Optional, java.util.function.Function], java.util.Optional), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-var53-to-var1610=([java.lang.Object], org.apache.ibatis.annotations.Options), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), equals/1194252418=([java.lang.Enum, java.lang.Object], boolean), cast-from-var1852-to-var1384=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Enum), cast-from-var1852-to-var53=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Object), cast-from-var1770-to-var3864=([org.apache.ibatis.executor.keygen.NoKeyGenerator], org.apache.ibatis.executor.keygen.KeyGenerator), configuration/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.session.Configuration), getDefaultResultSetType/2016612370=([org.apache.ibatis.session.Configuration], org.apache.ibatis.mapping.ResultSetType), assistant/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), var1512_getReturnType/-629822788=([java.lang.reflect.Method, java.lang.Class], java.lang.Class), getDatabaseId/1468239399=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.String), var1610_resultSets/-1611277552=([org.apache.ibatis.annotations.Options], java.lang.String), nullOrEmpty/1417204373=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.String], java.lang.String), isDirtySelect/42750390=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], boolean), addMappedStatement/-1285273847=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, org.apache.ibatis.mapping.SqlSource, org.apache.ibatis.mapping.StatementType, org.apache.ibatis.mapping.SqlCommandType, java.lang.Integer, java.lang.Integer, java.lang.String, java.lang.Class, java.lang.String, java.lang.Class, org.apache.ibatis.mapping.ResultSetType, boolean, boolean, boolean, org.apache.ibatis.executor.keygen.KeyGenerator, java.lang.String, java.lang.String, java.lang.String, org.apache.ibatis.scripting.LanguageDriver, java.lang.String, boolean], org.apache.ibatis.mapping.MappedStatement)}
; {var1512=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var461=r0, var778=r2, var812=org.apache.ibatis.scripting.LanguageDriver, var3924=r3, var769=java.lang.reflect.Method, var1558=r4, var18=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper, var2830=r1, var1221=java.lang.annotation.Annotation, var3736=$r5, var1606=org.apache.ibatis.mapping.SqlSource, var1792=r6, var1852=org.apache.ibatis.mapping.SqlCommandType, var523=r7, var2934=$r8, var1610=org.apache.ibatis.annotations.Options, var681=java.util.Optional, var1971=$r10, var3529=java.util.function.Function, var1907=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6, var1768=$r9, var1585=$r11, var53=java.lang.Object, var3106=$r12, var2740=r13, var1152=$r69, var378=$r15, var1417=$r16, var2192=$r17, var1771=$r19, var1468=$r18, var1226=$r20, var260=r21, var3368=null_type, var1723=r55, var3097=r56, var1651=$r22, var1384=java.lang.Enum, var1509=$z0, var1577=$r53, var1564=$z9, var3864=org.apache.ibatis.executor.keygen.KeyGenerator, var1770=org.apache.ibatis.executor.keygen.NoKeyGenerator, var1095=r57, var1165=r60, var2826=r61, var3965=org.apache.ibatis.mapping.StatementType, var2471=r62, var689=org.apache.ibatis.session.Configuration, var587=$r28, var979=org.apache.ibatis.mapping.ResultSetType, var2889=r63, var2710=$r29, var2620=$z15, var258=$z14, var663=z2, var1783=$z11, var3561=z12, var1080=z13, var2741=r66, var3394=org.apache.ibatis.builder.MapperBuilderAssistant, var140=$r30, var1713=$r34, var1576=$r35, var1036=$r36, var100=$r37, var3134=$r67, var2894=$r32, var1243=$r38, var3566=$z4, var2795=$z5, var2536=$r39, var3263=$r40, var1480=$r41, var578=$r31, var895=$r33, var1716=$r68, var2298=$z3, var211=null, var3279=0, var3061=org.apache.ibatis.mapping.MappedStatement}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var1512, r0=var461, r2=var778, org.apache.ibatis.scripting.LanguageDriver=var812, r3=var3924, java.lang.reflect.Method=var769, r4=var1558, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper=var18, r1=var2830, java.lang.annotation.Annotation=var1221, $r5=var3736, org.apache.ibatis.mapping.SqlSource=var1606, r6=var1792, org.apache.ibatis.mapping.SqlCommandType=var1852, r7=var523, $r8=var2934, org.apache.ibatis.annotations.Options=var1610, java.util.Optional=var681, $r10=var1971, java.util.function.Function=var3529, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6=var1907, $r9=var1768, $r11=var1585, java.lang.Object=var53, $r12=var3106, r13=var2740, $r69=var1152, $r15=var378, $r16=var1417, $r17=var2192, $r19=var1771, $r18=var1468, $r20=var1226, r21=var260, null_type=var3368, r55=var1723, r56=var3097, $r22=var1651, java.lang.Enum=var1384, $z0=var1509, $r53=var1577, $z9=var1564, org.apache.ibatis.executor.keygen.KeyGenerator=var3864, org.apache.ibatis.executor.keygen.NoKeyGenerator=var1770, r57=var1095, r60=var1165, r61=var2826, org.apache.ibatis.mapping.StatementType=var3965, r62=var2471, org.apache.ibatis.session.Configuration=var689, $r28=var587, org.apache.ibatis.mapping.ResultSetType=var979, r63=var2889, $r29=var2710, $z15=var2620, $z14=var258, z2=var663, $z11=var1783, z12=var3561, z13=var1080, r66=var2741, org.apache.ibatis.builder.MapperBuilderAssistant=var3394, $r30=var140, $r34=var1713, $r35=var1576, $r36=var1036, $r37=var100, $r67=var3134, $r32=var2894, $r38=var1243, $z4=var3566, $z5=var2795, $r39=var2536, $r40=var3263, $r41=var1480, $r31=var578, $r33=var895, $r68=var1716, $z3=var2298, null=var211, 0=var3279, org.apache.ibatis.mapping.MappedStatement=var3061}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r2 := @parameter0: java.lang.Class;	r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver;	r4 := @parameter2: java.lang.reflect.Method;	r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper;	$r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>();	r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4);	r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>();	$r8 = newarray (java.lang.Class)[1];	$r8[0] = class "Lorg/apache/ibatis/annotations/Options;";	$r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8);	$r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>();	$r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9);	$r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null);	r13 = (org.apache.ibatis.annotations.Options) $r12;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	r55 = null;	r56 = null;	$r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT>;	$z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1];	$r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE>;	$z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r60 = null;	r61 = null;	r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED>;	$r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration>;	r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>();	$r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT>;	if r7 != $r29 goto $z15 = 0;	$z15 = 1;	$z14 = 1;	goto [?= z2 = $z15];	z2 = $z15;	if $z14 != 0 goto $z11 = 0;	$z11 = 0;	z12 = $z11;	z13 = z2;	if r13 == null goto r66 = null;	r66 = null;	if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r34 = r62;	$r35 = r60;	$r36 = r61;	$r37 = r66;	$r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67);	$r38 = r63;	$z4 = z12;	$z5 = z13;	$r39 = r57;	$r40 = r55;	$r41 = r56;	$r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>();	if r13 == null goto $r68 = null;	$r33 = interfaceinvoke r13.<org.apache.ibatis.annotations.Options: java.lang.String resultSets()>();	$r68 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.String nullOrEmpty(java.lang.String)>($r33);	goto [?= $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>()];	$z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>();	virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3);	return
;block_num 12
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var689 0)
(declare-sort var1553 0)
(declare-sort var219 0)
(declare-sort var3301 0)
(declare-sort var363 0)
(declare-sort var2289 0)
(declare-sort var2370 0)
(declare-sort var1227 0)
(declare-sort var2961 0)
(declare-sort var3047 0)
(declare-sort var3963 0)
(declare-sort var2206 0)
(declare-sort var522 0)
(declare-sort var2881 0)
(declare-sort var1934 0)
(declare-sort var2622 0)
(declare-sort var2297 0)
(declare-sort var3755 0)
(declare-sort var1181 0)
(declare-sort var2515 0)
(declare-sort var2320 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1227!class ClassObject)
(declare-fun getAnnotation/1211161445 (var3301) var363)
(declare-fun buildSqlSource/1129554691 (var689 var363 ClassObject var1553 var219) var2289)
(declare-fun getSqlCommandType/1172365906 (var3301) var2370)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun getAnnotationWrapper/-1343245648 (var689 var219 Bool (Array Int ClassObject)) var2961)
(declare-fun var3963_bootstrap$/449714105 () var3047)
(declare-fun map/1305667865 (var2961 var3047) var2961)
(declare-fun orElse/-757175127 (var2961 var2206) var2206)
(declare-fun cast-from-var2206-to-var1227 (var2206) var1227)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-1562462879 (var689) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1227988463 (var219) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun equals/1194252418 (var2881 var2206) Bool)
(declare-fun cast-from-var2370-to-var2881 (var2370) var2881)
(declare-fun cast-from-var2370-to-var2206 (var2370) var2206)
(declare-fun cast-from-var2622-to-var1934 (var2622) var1934)
(declare-fun configuration/-1562462879 (var689) var3755)
(declare-fun getDefaultResultSetType/2016612370 (var3755) var1181)
(declare-fun assistant/-1562462879 (var689) var2515)
(declare-fun var689_getReturnType/-629822788 (var219 ClassObject) ClassObject)
(declare-fun getDatabaseId/1468239399 (var3301) String)
(declare-fun isDirtySelect/42750390 (var3301) Bool)
(declare-fun addMappedStatement/-1285273847 (var2515 String var2289 var2297 var2370 Int Int String ClassObject String ClassObject var1181 Bool Bool Bool var1934 String String String var1553 String Bool) var2320)
(declare-const null-var689 var689)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1553 var1553)
(declare-const null-var219 var219)
(declare-const null-var3301 var3301)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-NullType var522)
(declare-const null-var2206 var2206)
(declare-const null-String String)
(declare-const var2370-INSERT var2370)
(declare-const var2370-UPDATE var2370)
(declare-const var2622-INSTANCE var2622)
(declare-const null-Int Int)
(declare-const var2297-PREPARED var2297)
(declare-const var2370-SELECT var2370)
(declare-const null-var1227 var1227)
(declare-const var2967 var689) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var2967 null-var689)))
(declare-const var933 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var933 null-ClassObject)))
(declare-const var1735 var1553) ; Statement: r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver 
(assert (not (= var1735 null-var1553)))
(declare-const var3611 var219) ; Statement: r4 := @parameter2: java.lang.reflect.Method 
(assert (not (= var3611 null-var219)))
(declare-const var1606 var3301) ; Statement: r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper 
(assert (not (= var1606 null-var3301)))
(assert true)
(define-const var384 var363 (getAnnotation/1211161445 var1606)) ; Statement: $r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>() 
(assert true)
(define-const var2243 var2289 (buildSqlSource/1129554691 var2967 var384 var933 var1735 var3611)) ; Statement: r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4) 
(assert true)
(define-const var2152 var2370 (getSqlCommandType/1172365906 var1606)) ; Statement: r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>() 
(define-const var2807 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r8 = newarray (java.lang.Class)[1] 
(declare-const var2807!1 (Array Int ClassObject))
(assert (not (= var2807!1 null-__Array__Int__ClassObject__)))
(assert (= (select var2807!1 0) var1227!class)) ; Statement: $r8[0] = class "Lorg/apache/ibatis/annotations/Options;" 
(assert true)
(define-const var2678 var2961 (getAnnotationWrapper/-1343245648 var2967 var3611 (ite (= 1 0) true false) var2807!1)) ; Statement: $r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8) 
(define-const var2255 var3047 var3963_bootstrap$/449714105) ; Statement: $r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var1193 var2961 (map/1305667865 var2678 var2255)) ; Statement: $r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9) 
(assert true)
(define-const var2766 var2206 (orElse/-757175127 var1193 null-var2206)) ; Statement: $r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null) 
(define-const var916 var1227 (cast-from-var2206-to-var1227 var2766)) ; Statement: r13 = (org.apache.ibatis.annotations.Options) $r12 
(define-const var2427 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2427)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2427!1 String)
(assert (= var2427!1 ""))
(define-const var668 ClassObject (type/-1562462879 var2967)) ; Statement: $r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(assert true)
(define-const var1478 String (getName/-1958580599 var668)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var385 String (append/672562846 var2427!1 var1478)) ; Statement: $r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var2427!2 String)
(assert (= var2427!2 (str.++ var2427!1 var1478)))
(assert true)
(define-const var3566 String (append/672562846 var385 ".")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var385!1 String)
(assert (= var385!1 (str.++ var385 ".")))
(assert true)
(define-const var3981 String (getName/1227988463 var3611)) ; Statement: $r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3583 String (append/672562846 var3566 var3981)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3566!1 String)
(assert (= var3566!1 (str.++ var3566 var3981)))
(assert true)
(define-const var771 String (toString/-2075883882 var3583)) ; Statement: r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2301 String null-String) ; Statement: r55 = null 
(define-const var1136 String null-String) ; Statement: r56 = null 
(define-const var3022 var2370 var2370-INSERT) ; Statement: $r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT> 
(assert true)
(define-const var1161 Bool (equals/1194252418 (cast-from-var2370-to-var2881 var3022) (cast-from-var2370-to-var2206 var2152))) ; Statement: $z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1] 
(assert (not (not (= (ite var1161 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1409 var2370 var2370-UPDATE) ; Statement: $r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE> 
(assert true)
(define-const var3189 Bool (equals/1194252418 (cast-from-var2370-to-var2881 var1409) (cast-from-var2370-to-var2206 var2152))) ; Statement: $z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert (= (ite var3189 1 0) 0)) ; Cond: $z9 == 0 
(define-const var3777 var1934 (cast-from-var2622-to-var1934 var2622-INSTANCE)) ; Statement: r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(assert true) ; Non Conditional
(define-const var921 Int null-Int) ; Statement: r60 = null 
(define-const var1507 Int null-Int) ; Statement: r61 = null 
(define-const var3191 var2297 var2297-PREPARED) ; Statement: r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED> 
(define-const var561 var3755 (configuration/-1562462879 var2967)) ; Statement: $r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var455 var1181 (getDefaultResultSetType/2016612370 var561)) ; Statement: r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>() 
(define-const var1351 var2370 var2370-SELECT) ; Statement: $r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT> 
 ; Statement: if r7 != $r29 goto $z15 = 0 
(assert (not (not (= var2152 var1351)))) ; Negate: Cond: r7 != $r29  
(define-const var2090 Bool (ite (= 1 1) true false)) ; Statement: $z15 = 1 
(define-const var3911 Bool (ite (= 1 1) true false)) ; Statement: $z14 = 1 
 ; Statement: goto [?= z2 = $z15] 
(assert true) ; Non Conditional
(define-const var3586 Bool var2090) ; Statement: z2 = $z15 
 ; Statement: if $z14 != 0 goto $z11 = 0 
(assert (not (not (= (ite var3911 1 0) 0)))) ; Negate: Cond: $z14 != 0  
(define-const var1493 Bool (ite (= 1 1) true false)) ; Statement: $z11 = 1 
 ; Statement: goto [?= z12 = $z11] 
(assert true) ; Non Conditional
(define-const var2368 Bool var1493) ; Statement: z12 = $z11 
(define-const var2784 Bool var3586) ; Statement: z13 = z2 
 ; Statement: if r13 == null goto r66 = null 
(assert (= var916 null-var1227)) ; Cond: r13 == null 
(define-const var695 String null-String) ; Statement: r66 = null 
 ; Statement: if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(assert (= (ite var3586 1 0) 0)) ; Cond: z2 == 0 
(define-const var1776 var2515 (assistant/-1562462879 var2967)) ; Statement: $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant> 
(define-const var1095 var2297 var3191) ; Statement: $r34 = r62 
(define-const var730 Int var921) ; Statement: $r35 = r60 
(define-const var3095 Int var1507) ; Statement: $r36 = r61 
(define-const var785 String var695) ; Statement: $r37 = r66 
(define-const var1773 ClassObject (type/-1562462879 var2967)) ; Statement: $r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(define-const var524 ClassObject (var689_getReturnType/-629822788 var3611 var1773)) ; Statement: $r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67) 
(define-const var150 var1181 var455) ; Statement: $r38 = r63 
(define-const var1452 Bool var2368) ; Statement: $z4 = z12 
(define-const var879 Bool var2784) ; Statement: $z5 = z13 
(define-const var958 var1934 var3777) ; Statement: $r39 = r57 
(define-const var1790 String var2301) ; Statement: $r40 = r55 
(define-const var196 String var1136) ; Statement: $r41 = r56 
(assert true)
(define-const var563 String (getDatabaseId/1468239399 var1606)) ; Statement: $r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>() 
 ; Statement: if r13 == null goto $r68 = null 
(assert (= var916 null-var1227)) ; Cond: r13 == null 
(define-const var49 String null-String) ; Statement: $r68 = null 
(assert true) ; Non Conditional
(assert true)
(define-const var3895 Bool (isDirtySelect/42750390 var1606)) ; Statement: $z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>() 
(assert true)
;(assert (addMappedStatement/-1285273847 var1776 var771 var2243 var1095 var2152 var730 var3095 null-String var933 var785 var524 var150 var1452 var879 (ite (= 1 0) true false) var958 var1790 var196 var563 var1735 var49 var3895)) ; Statement: virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3) 

(declare-const var1776!1 var2515)
(declare-const var771!1 String)
(declare-const var2243!1 var2289)
(declare-const var1095!1 var2297)
(declare-const var2152!1 var2370)
(declare-const var730!1 Int)
(declare-const var3095!1 Int)
(declare-const var1433 var522)
(declare-const var933!1 ClassObject)
(declare-const var785!1 String)
(declare-const var524!1 ClassObject)
(declare-const var150!1 var1181)
(declare-const var1452!1 Bool)
(declare-const var879!1 Bool)
(declare-const var2259 Int)
(declare-const var958!1 var1934)
(declare-const var1790!1 String)
(declare-const var196!1 String)
(declare-const var563!1 String)
(declare-const var1735!1 var1553)
(declare-const var49!1 String)
(declare-const var3895!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotation/1211161445=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.annotation.Annotation), buildSqlSource/1129554691=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.annotation.Annotation, java.lang.Class, org.apache.ibatis.scripting.LanguageDriver, java.lang.reflect.Method], org.apache.ibatis.mapping.SqlSource), getSqlCommandType/1172365906=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], org.apache.ibatis.mapping.SqlCommandType), arr-ClassObject-init=([], java.lang.Class[]), getAnnotationWrapper/-1343245648=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, java.lang.reflect.Method, boolean, java.lang.Class[]], java.util.Optional), var3963_bootstrap$/449714105=([], java.util.function.Function), map/1305667865=([java.util.Optional, java.util.function.Function], java.util.Optional), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-var2206-to-var1227=([java.lang.Object], org.apache.ibatis.annotations.Options), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), equals/1194252418=([java.lang.Enum, java.lang.Object], boolean), cast-from-var2370-to-var2881=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Enum), cast-from-var2370-to-var2206=([org.apache.ibatis.mapping.SqlCommandType], java.lang.Object), cast-from-var2622-to-var1934=([org.apache.ibatis.executor.keygen.NoKeyGenerator], org.apache.ibatis.executor.keygen.KeyGenerator), configuration/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.session.Configuration), getDefaultResultSetType/2016612370=([org.apache.ibatis.session.Configuration], org.apache.ibatis.mapping.ResultSetType), assistant/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), var689_getReturnType/-629822788=([java.lang.reflect.Method, java.lang.Class], java.lang.Class), getDatabaseId/1468239399=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.String), isDirtySelect/42750390=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], boolean), addMappedStatement/-1285273847=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, org.apache.ibatis.mapping.SqlSource, org.apache.ibatis.mapping.StatementType, org.apache.ibatis.mapping.SqlCommandType, java.lang.Integer, java.lang.Integer, java.lang.String, java.lang.Class, java.lang.String, java.lang.Class, org.apache.ibatis.mapping.ResultSetType, boolean, boolean, boolean, org.apache.ibatis.executor.keygen.KeyGenerator, java.lang.String, java.lang.String, java.lang.String, org.apache.ibatis.scripting.LanguageDriver, java.lang.String, boolean], org.apache.ibatis.mapping.MappedStatement)}
; {var689=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var2967=r0, var933=r2, var1553=org.apache.ibatis.scripting.LanguageDriver, var1735=r3, var219=java.lang.reflect.Method, var3611=r4, var3301=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper, var1606=r1, var363=java.lang.annotation.Annotation, var384=$r5, var2289=org.apache.ibatis.mapping.SqlSource, var2243=r6, var2370=org.apache.ibatis.mapping.SqlCommandType, var2152=r7, var2807=$r8, var1227=org.apache.ibatis.annotations.Options, var2961=java.util.Optional, var2678=$r10, var3047=java.util.function.Function, var3963=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6, var2255=$r9, var1193=$r11, var2206=java.lang.Object, var2766=$r12, var916=r13, var2427=$r69, var668=$r15, var1478=$r16, var385=$r17, var3566=$r19, var3981=$r18, var3583=$r20, var771=r21, var522=null_type, var2301=r55, var1136=r56, var3022=$r22, var2881=java.lang.Enum, var1161=$z0, var1409=$r53, var3189=$z9, var1934=org.apache.ibatis.executor.keygen.KeyGenerator, var2622=org.apache.ibatis.executor.keygen.NoKeyGenerator, var3777=r57, var921=r60, var1507=r61, var2297=org.apache.ibatis.mapping.StatementType, var3191=r62, var3755=org.apache.ibatis.session.Configuration, var561=$r28, var1181=org.apache.ibatis.mapping.ResultSetType, var455=r63, var1351=$r29, var2090=$z15, var3911=$z14, var3586=z2, var1493=$z11, var2368=z12, var2784=z13, var695=r66, var2515=org.apache.ibatis.builder.MapperBuilderAssistant, var1776=$r30, var1095=$r34, var730=$r35, var3095=$r36, var785=$r37, var1773=$r67, var524=$r32, var150=$r38, var1452=$z4, var879=$z5, var958=$r39, var1790=$r40, var196=$r41, var563=$r31, var49=$r68, var3895=$z3, var1433=null, var2259=0, var2320=org.apache.ibatis.mapping.MappedStatement}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var689, r0=var2967, r2=var933, org.apache.ibatis.scripting.LanguageDriver=var1553, r3=var1735, java.lang.reflect.Method=var219, r4=var3611, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper=var3301, r1=var1606, java.lang.annotation.Annotation=var363, $r5=var384, org.apache.ibatis.mapping.SqlSource=var2289, r6=var2243, org.apache.ibatis.mapping.SqlCommandType=var2370, r7=var2152, $r8=var2807, org.apache.ibatis.annotations.Options=var1227, java.util.Optional=var2961, $r10=var2678, java.util.function.Function=var3047, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$lambda_parseStatement_0__6=var3963, $r9=var2255, $r11=var1193, java.lang.Object=var2206, $r12=var2766, r13=var916, $r69=var2427, $r15=var668, $r16=var1478, $r17=var385, $r19=var3566, $r18=var3981, $r20=var3583, r21=var771, null_type=var522, r55=var2301, r56=var1136, $r22=var3022, java.lang.Enum=var2881, $z0=var1161, $r53=var1409, $z9=var3189, org.apache.ibatis.executor.keygen.KeyGenerator=var1934, org.apache.ibatis.executor.keygen.NoKeyGenerator=var2622, r57=var3777, r60=var921, r61=var1507, org.apache.ibatis.mapping.StatementType=var2297, r62=var3191, org.apache.ibatis.session.Configuration=var3755, $r28=var561, org.apache.ibatis.mapping.ResultSetType=var1181, r63=var455, $r29=var1351, $z15=var2090, $z14=var3911, z2=var3586, $z11=var1493, z12=var2368, z13=var2784, r66=var695, org.apache.ibatis.builder.MapperBuilderAssistant=var2515, $r30=var1776, $r34=var1095, $r35=var730, $r36=var3095, $r37=var785, $r67=var1773, $r32=var524, $r38=var150, $z4=var1452, $z5=var879, $r39=var958, $r40=var1790, $r41=var196, $r31=var563, $r68=var49, $z3=var3895, null=var1433, 0=var2259, org.apache.ibatis.mapping.MappedStatement=var2320}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r2 := @parameter0: java.lang.Class;	r3 := @parameter1: org.apache.ibatis.scripting.LanguageDriver;	r4 := @parameter2: java.lang.reflect.Method;	r1 := @parameter3: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper;	$r5 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>();	r6 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.mapping.SqlSource buildSqlSource(java.lang.'annotation'.Annotation,java.lang.Class,org.apache.ibatis.scripting.LanguageDriver,java.lang.reflect.Method)>($r5, r2, r3, r4);	r7 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>();	$r8 = newarray (java.lang.Class)[1];	$r8[0] = class "Lorg/apache/ibatis/annotations/Options;";	$r10 = specialinvoke r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.util.Optional getAnnotationWrapper(java.lang.reflect.Method,boolean,java.lang.Class[])>(r4, 0, $r8);	$r9 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$lambda_parseStatement_0__6: java.util.function.Function bootstrap$()>();	$r11 = virtualinvoke $r10.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r9);	$r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null);	r13 = (org.apache.ibatis.annotations.Options) $r12;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r15 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r17 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r18 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	r55 = null;	r56 = null;	$r22 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType INSERT>;	$z0 = virtualinvoke $r22.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z0 != 0 goto $r23 = newarray (java.lang.Class)[1];	$r53 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UPDATE>;	$z9 = virtualinvoke $r53.<org.apache.ibatis.mapping.SqlCommandType: boolean equals(java.lang.Object)>(r7);	if $z9 == 0 goto r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r57 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	r60 = null;	r61 = null;	r62 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED>;	$r28 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration>;	r63 = virtualinvoke $r28.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.ResultSetType getDefaultResultSetType()>();	$r29 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT>;	if r7 != $r29 goto $z15 = 0;	$z15 = 1;	$z14 = 1;	goto [?= z2 = $z15];	z2 = $z15;	if $z14 != 0 goto $z11 = 0;	$z11 = 1;	goto [?= z12 = $z11];	z12 = $z11;	z13 = z2;	if r13 == null goto r66 = null;	r66 = null;	if z2 == 0 goto $r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r30 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.builder.MapperBuilderAssistant assistant>;	$r34 = r62;	$r35 = r60;	$r36 = r61;	$r37 = r66;	$r67 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r32 = staticinvoke <org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class getReturnType(java.lang.reflect.Method,java.lang.Class)>(r4, $r67);	$r38 = r63;	$z4 = z12;	$z5 = z13;	$r39 = r57;	$r40 = r55;	$r41 = r56;	$r31 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.String getDatabaseId()>();	if r13 == null goto $r68 = null;	$r68 = null;	$z3 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: boolean isDirtySelect()>();	virtualinvoke $r30.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r21, r6, $r34, r7, $r35, $r36, null, r2, $r37, $r32, $r38, $z4, $z5, 0, $r39, $r40, $r41, $r31, r3, $r68, $z3);	return
;block_num 12
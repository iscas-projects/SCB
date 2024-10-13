(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3157 0)
(declare-sort var931 0)
(declare-sort var314 0)
(declare-sort var384 0)
(declare-sort var2348 0)
(declare-sort var605 0)
(declare-sort var1345 0)
(declare-sort var334 0)
(declare-sort var3174 0)
(declare-sort var1002 0)
(declare-sort var3107 0)
(declare-sort var65 0)
(declare-sort var3633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var384_instance/1351931870 () var384)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getValueBasedIdentifier/-733339437 (var931) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun activity/-421486007 (var384 String) var384)
(declare-fun getStringAttribute/-798258666 (var931 String) String)
(declare-fun getStringAttribute/2039987397 (var931 String String) String)
(declare-fun resolveClass/1510055323 (var2348 String) ClassObject)
(declare-fun cast-from-var3157-to-var2348 (var3157) var2348)
(declare-fun var1345-init () var1345)
(declare-fun <init>/2032108350 (var1345 var334) void)
(declare-fun cast-from-var314-to-var334 (var314) var334)
(declare-fun getChildren/1400201414 (var931) var314)
(declare-fun var314_iterator/-912451715 (var314) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun getBooleanAttribute/-1061807544 (var931 String) var3174)
(declare-fun var1002-init () var1002)
(declare-fun builderAssistant/1141845807 (var3157) var3107)
(declare-fun <init>/1840327764 (var1002 var3107 String ClassObject String var605 var314 var3174) void)
(declare-fun cast-from-var1345-to-var314 (var1345) var314)
(declare-fun configuration/-1217462027 (var2348) var3633)
(declare-fun addIncompleteResultMap/1252030787 (var3633 var1002) void)
(declare-const null-var3157 var3157)
(declare-const null-var931 var931)
(declare-const null-var314 var314)
(declare-const null-ClassObject ClassObject)
(declare-const null-var605 var605)
(declare-const null-var65 var65)
(declare-const var2347 var3157) ; Statement: r11 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder 
(assert (not (= var2347 null-var3157)))
(declare-const var1828 var931) ; Statement: r1 := @parameter0: org.apache.ibatis.parsing.XNode 
(assert (not (= var1828 null-var931)))
(declare-const var2902 var314) ; Statement: r13 := @parameter1: java.util.List 
(assert (not (= var2902 null-var314)))
(declare-const var2369 ClassObject) ; Statement: r28 := @parameter2: java.lang.Class 
(assert (not (= var2369 null-ClassObject)))
(define-const var3534 var384 var384_instance/1351931870) ; Statement: $r6 = staticinvoke <org.apache.ibatis.executor.ErrorContext: org.apache.ibatis.executor.ErrorContext instance()>() 
(define-const var182 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var182)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var182!1 String)
(assert (= var182!1 ""))
(assert true)
(define-const var3951 String (append/672562846 var182!1 "processing ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("processing ") 
(declare-const var182!2 String)
(assert (= var182!2 (str.++ var182!1 "processing ")))
(assert true)
(define-const var3673 String (getValueBasedIdentifier/-733339437 var1828)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getValueBasedIdentifier()>() 
(assert true)
(define-const var376 String (append/672562846 var3951 var3673)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3951!1 String)
(assert (= var3951!1 (str.++ var3951 var3673)))
(assert true)
(define-const var1259 String (toString/-2075883882 var376)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (activity/-421486007 var3534 var1259)) ; Statement: virtualinvoke $r6.<org.apache.ibatis.executor.ErrorContext: org.apache.ibatis.executor.ErrorContext activity(java.lang.String)>($r5) 

(declare-const var3534!1 var384)
(declare-const var1259!1 String)
(assert true)
(define-const var3204 String (getStringAttribute/-798258666 var1828 "javaType")) ; Statement: $r7 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("javaType") 
(assert true)
(define-const var1029 String (getStringAttribute/2039987397 var1828 "resultType" var3204)) ; Statement: $r8 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("resultType", $r7) 
(assert true)
(define-const var2045 String (getStringAttribute/2039987397 var1828 "ofType" var1029)) ; Statement: $r9 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("ofType", $r8) 
(assert true)
(define-const var390 String (getStringAttribute/2039987397 var1828 "type" var2045)) ; Statement: r10 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("type", $r9) 
(assert true)
(define-const var669 ClassObject (resolveClass/1510055323 (cast-from-var3157-to-var2348 var2347) var390)) ; Statement: r33 = virtualinvoke r11.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>(r10) 
 ; Statement: if r33 != null goto r34 = null 
(assert (not (= var669 null-ClassObject))) ; Cond: r33 != null 
(define-const var2759 var605 null-var605) ; Statement: r34 = null 
(define-const var1894 var1345 var1345-init) ; Statement: $r12 = new java.util.ArrayList 
(assert true)
;(assert (<init>/2032108350 var1894 (cast-from-var314-to-var334 var2902))) ; Statement: specialinvoke $r12.<java.util.ArrayList: void <init>(java.util.Collection)>(r13) 

(declare-const var1894!1 var1345)
(declare-const var2902!1 var314)
(assert true)
(define-const var3453 var314 (getChildren/1400201414 var1828)) ; Statement: $r29 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.util.List getChildren()>() 
(define-const var3948 Iterator (var314_iterator/-912451715 var3453)) ; Statement: $r30 = interfaceinvoke $r29.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1489 Bool (Iterator_hasNext/-1669924200 var3948)) ; Statement: $z3 = interfaceinvoke $r30.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto $r14 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getValueBasedIdentifier()>() 
(assert (= (ite var1489 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var222 String (getValueBasedIdentifier/-733339437 var1828)) ; Statement: $r14 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getValueBasedIdentifier()>() 
(assert true)
(define-const var3213 String (getStringAttribute/2039987397 var1828 "id" var222)) ; Statement: r36 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("id", $r14) 
(assert true)
(define-const var2098 String (getStringAttribute/-798258666 var1828 "extends")) ; Statement: r37 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("extends") 
(assert true)
(define-const var158 var3174 (getBooleanAttribute/-1061807544 var1828 "autoMapping")) ; Statement: r38 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.Boolean getBooleanAttribute(java.lang.String)>("autoMapping") 
(define-const var3819 var1002 var1002-init) ; Statement: $r15 = new org.apache.ibatis.builder.ResultMapResolver 
(define-const var1962 var3107 (builderAssistant/1141845807 var2347)) ; Statement: $r16 = r11.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant> 
(assert true)
;(assert (<init>/1840327764 var3819 var1962 var3213 var669 var2098 var2759 (cast-from-var1345-to-var314 var1894!1) var158)) ; Statement: specialinvoke $r15.<org.apache.ibatis.builder.ResultMapResolver: void <init>(org.apache.ibatis.builder.MapperBuilderAssistant,java.lang.String,java.lang.Class,java.lang.String,org.apache.ibatis.mapping.Discriminator,java.util.List,java.lang.Boolean)>($r16, r36, r33, r37, r34, $r12, r38) 

(declare-const var3819!1 var1002)
(declare-const var1962!1 var3107)
(declare-const var3213!1 String)
(declare-const var669!1 ClassObject)
(declare-const var2098!1 String)
(declare-const var2759!1 var605)
(declare-const var1894!2 var1345)
(declare-const var158!1 var3174)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3145 var65) ; Statement: $r31 := @caughtexception 
(assert (not (= var3145 null-var65)))
(define-const var2007 var3633 (configuration/-1217462027 (cast-from-var3157-to-var2348 var2347))) ; Statement: $r32 = r11.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
;(assert (addIncompleteResultMap/1252030787 var2007 var3819!1)) ; Statement: virtualinvoke $r32.<org.apache.ibatis.session.Configuration: void addIncompleteResultMap(org.apache.ibatis.builder.ResultMapResolver)>($r15) 

(declare-const var2007!1 var3633)
(declare-const var3819!2 var1002)
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {var384_instance/1351931870=([], org.apache.ibatis.executor.ErrorContext), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getValueBasedIdentifier/-733339437=([org.apache.ibatis.parsing.XNode], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), activity/-421486007=([org.apache.ibatis.executor.ErrorContext, java.lang.String], org.apache.ibatis.executor.ErrorContext), getStringAttribute/-798258666=([org.apache.ibatis.parsing.XNode, java.lang.String], java.lang.String), getStringAttribute/2039987397=([org.apache.ibatis.parsing.XNode, java.lang.String, java.lang.String], java.lang.String), resolveClass/1510055323=([org.apache.ibatis.builder.BaseBuilder, java.lang.String], java.lang.Class), cast-from-var3157-to-var2348=([org.apache.ibatis.builder.xml.XMLMapperBuilder], org.apache.ibatis.builder.BaseBuilder), var1345-init=([], java.util.ArrayList), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var314-to-var334=([java.util.List], java.util.Collection), getChildren/1400201414=([org.apache.ibatis.parsing.XNode], java.util.List), var314_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), getBooleanAttribute/-1061807544=([org.apache.ibatis.parsing.XNode, java.lang.String], java.lang.Boolean), var1002-init=([], org.apache.ibatis.builder.ResultMapResolver), builderAssistant/1141845807=([org.apache.ibatis.builder.xml.XMLMapperBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), <init>/1840327764=([org.apache.ibatis.builder.ResultMapResolver, org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, java.lang.Class, java.lang.String, org.apache.ibatis.mapping.Discriminator, java.util.List, java.lang.Boolean], void), cast-from-var1345-to-var314=([java.util.ArrayList], java.util.List), configuration/-1217462027=([org.apache.ibatis.builder.BaseBuilder], org.apache.ibatis.session.Configuration), addIncompleteResultMap/1252030787=([org.apache.ibatis.session.Configuration, org.apache.ibatis.builder.ResultMapResolver], void)}
; {var3157=org.apache.ibatis.builder.xml.XMLMapperBuilder, var2347=r11, var931=org.apache.ibatis.parsing.XNode, var1828=r1, var314=java.util.List, var2902=r13, var2369=r28, var384=org.apache.ibatis.executor.ErrorContext, var3534=$r6, var182=$r0, var3951=$r3, var3673=$r2, var376=$r4, var1259=$r5, var3204=$r7, var1029=$r8, var2045=$r9, var390=r10, var2348=org.apache.ibatis.builder.BaseBuilder, var669=r33, var605=org.apache.ibatis.mapping.Discriminator, var2759=r34, var1345=java.util.ArrayList, var1894=$r12, var334=java.util.Collection, var3453=$r29, var3948=$r30, var1489=$z3, var222=$r14, var3213=r36, var2098=r37, var3174=java.lang.Boolean, var158=r38, var1002=org.apache.ibatis.builder.ResultMapResolver, var3819=$r15, var3107=org.apache.ibatis.builder.MapperBuilderAssistant, var1962=$r16, var65=org.apache.ibatis.builder.IncompleteElementException, var3145=$r31, var3633=org.apache.ibatis.session.Configuration, var2007=$r32}
; {org.apache.ibatis.builder.xml.XMLMapperBuilder=var3157, r11=var2347, org.apache.ibatis.parsing.XNode=var931, r1=var1828, java.util.List=var314, r13=var2902, r28=var2369, org.apache.ibatis.executor.ErrorContext=var384, $r6=var3534, $r0=var182, $r3=var3951, $r2=var3673, $r4=var376, $r5=var1259, $r7=var3204, $r8=var1029, $r9=var2045, r10=var390, org.apache.ibatis.builder.BaseBuilder=var2348, r33=var669, org.apache.ibatis.mapping.Discriminator=var605, r34=var2759, java.util.ArrayList=var1345, $r12=var1894, java.util.Collection=var334, $r29=var3453, $r30=var3948, $z3=var1489, $r14=var222, r36=var3213, r37=var2098, java.lang.Boolean=var3174, r38=var158, org.apache.ibatis.builder.ResultMapResolver=var1002, $r15=var3819, org.apache.ibatis.builder.MapperBuilderAssistant=var3107, $r16=var1962, org.apache.ibatis.builder.IncompleteElementException=var65, $r31=var3145, org.apache.ibatis.session.Configuration=var3633, $r32=var2007}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder;	r1 := @parameter0: org.apache.ibatis.parsing.XNode;	r13 := @parameter1: java.util.List;	r28 := @parameter2: java.lang.Class;	$r6 = staticinvoke <org.apache.ibatis.executor.ErrorContext: org.apache.ibatis.executor.ErrorContext instance()>();	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("processing ");	$r2 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getValueBasedIdentifier()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r6.<org.apache.ibatis.executor.ErrorContext: org.apache.ibatis.executor.ErrorContext activity(java.lang.String)>($r5);	$r7 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("javaType");	$r8 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("resultType", $r7);	$r9 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("ofType", $r8);	r10 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("type", $r9);	r33 = virtualinvoke r11.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.Class resolveClass(java.lang.String)>(r10);	if r33 != null goto r34 = null;	r34 = null;	$r12 = new java.util.ArrayList;	specialinvoke $r12.<java.util.ArrayList: void <init>(java.util.Collection)>(r13);	$r29 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.util.List getChildren()>();	$r30 = interfaceinvoke $r29.<java.util.List: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r30.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto $r14 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getValueBasedIdentifier()>();	$r14 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getValueBasedIdentifier()>();	r36 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("id", $r14);	r37 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("extends");	r38 = virtualinvoke r1.<org.apache.ibatis.parsing.XNode: java.lang.Boolean getBooleanAttribute(java.lang.String)>("autoMapping");	$r15 = new org.apache.ibatis.builder.ResultMapResolver;	$r16 = r11.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant>;	specialinvoke $r15.<org.apache.ibatis.builder.ResultMapResolver: void <init>(org.apache.ibatis.builder.MapperBuilderAssistant,java.lang.String,java.lang.Class,java.lang.String,org.apache.ibatis.mapping.Discriminator,java.util.List,java.lang.Boolean)>($r16, r36, r33, r37, r34, $r12, r38);	$r31 := @caughtexception;	$r32 = r11.<org.apache.ibatis.builder.xml.XMLMapperBuilder: org.apache.ibatis.session.Configuration configuration>;	virtualinvoke $r32.<org.apache.ibatis.session.Configuration: void addIncompleteResultMap(org.apache.ibatis.builder.ResultMapResolver)>($r15);	throw $r31
;block_num 5
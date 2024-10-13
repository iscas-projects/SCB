(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1474 0)
(declare-sort var1339 0)
(declare-sort var2406 0)
(declare-sort var2597 0)
(declare-sort var1330 0)
(declare-sort var2780 0)
(declare-sort var3260 0)
(declare-sort var1809 0)
(declare-sort var199 0)
(declare-sort var1365 0)
(declare-sort var1570 0)
(declare-sort var312 0)
(declare-sort var512 0)
(declare-sort var2196 0)
(declare-sort var3528 0)
(declare-sort var2180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getStringAttribute/-798258666 (var2406 String) String)
(declare-fun resolveClass/1510055323 (var1330 String) ClassObject)
(declare-fun cast-from-var1474-to-var1330 (var1474) var1330)
(declare-fun toString/1761020461 (var3260) String)
(declare-fun cast-from-var2780-to-var3260 (var2780) var3260)
(declare-fun getStringAttribute/2039987397 (var2406 String String) String)
(declare-fun var2780_valueOf/552381572 (String) var2780)
(declare-fun configuration/-1217462027 (var1330) var199)
(declare-fun var2597_createSqlSource/-1630701112 (var2597 var199 var2406 ClassObject) var1365)
(declare-fun builderAssistant/-342237705 (var1474) var312)
(declare-fun addMappedStatement/-1285273847 (var312 String var1365 var2780 var1570 Int Int String ClassObject String ClassObject var512 Bool Bool Bool var2196 String String String var2597 String Bool) var3528)
(declare-fun cast-from-var1809-to-var2196 (var1809) var2196)
(declare-fun applyCurrentNamespace/296309646 (var312 String Bool) String)
(declare-fun getMappedStatement/409192812 (var199 String Bool) var3528)
(declare-fun var2180-init () var2180)
(declare-fun <init>/1628235659 (var2180 var3528 Bool) void)
(declare-fun addKeyGenerator/696433339 (var199 String var2196) void)
(declare-fun cast-from-var2180-to-var2196 (var2180) var2196)
(declare-const null-var1474 var1474)
(declare-const null-String String)
(declare-const null-var2406 var2406)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2597 var2597)
(declare-const var2780-PREPARED var2780)
(declare-const var1809-INSTANCE var1809)
(declare-const var1570-SELECT var1570)
(declare-const null-NullType var1339)
(declare-const null-Int Int)
(declare-const null-var512 var512)
(declare-const var1629 var1474) ; Statement: r2 := @this: org.apache.ibatis.builder.xml.XMLStatementBuilder 
(assert (not (= var1629 null-var1474)))
(declare-const var1501 String) ; Statement: r25 := @parameter0: java.lang.String 
(assert (not (= var1501 null-String)))
(declare-const var2134 var2406) ; Statement: r0 := @parameter1: org.apache.ibatis.parsing.XNode 
(assert (not (= var2134 null-var2406)))
(declare-const var3808 ClassObject) ; Statement: r14 := @parameter2: java.lang.Class 
(assert (not (= var3808 null-ClassObject)))
(declare-const var447 var2597) ; Statement: r13 := @parameter3: org.apache.ibatis.scripting.LanguageDriver 
(assert (not (= var447 null-var2597)))
(declare-const var483 String) ; Statement: r18 := @parameter4: java.lang.String 
(assert (not (= var483 null-String)))
(assert true)
(define-const var3914 String (getStringAttribute/-798258666 var2134 "resultType")) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("resultType") 
(assert true)
(define-const var744 ClassObject (resolveClass/1510055323 (cast-from-var1474-to-var1330 var1629) var3914)) ; Statement: r3 = virtualinvoke r2.<org.apache.ibatis.builder.xml.XMLStatementBuilder: java.lang.Class resolveClass(java.lang.String)>(r1) 
(define-const var1865 var2780 var2780-PREPARED) ; Statement: $r4 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED> 
(assert true)
(define-const var45 String (toString/1761020461 (cast-from-var2780-to-var3260 var1865))) ; Statement: $r5 = virtualinvoke $r4.<org.apache.ibatis.mapping.StatementType: java.lang.String toString()>() 
(assert true)
(define-const var1961 String (getStringAttribute/2039987397 var2134 "statementType" var45)) ; Statement: $r6 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("statementType", $r5) 
(define-const var3582 var2780 (var2780_valueOf/552381572 var1961)) ; Statement: r7 = staticinvoke <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType valueOf(java.lang.String)>($r6) 
(assert true)
(define-const var436 String (getStringAttribute/-798258666 var2134 "keyProperty")) ; Statement: r8 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("keyProperty") 
(assert true)
(define-const var1087 String (getStringAttribute/-798258666 var2134 "keyColumn")) ; Statement: r9 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("keyColumn") 
(define-const var35 String "BEFORE") ; Statement: $r11 = "BEFORE" 
(assert true)
(define-const var1930 String (getStringAttribute/2039987397 var2134 "order" "AFTER")) ; Statement: $r10 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("order", "AFTER") 
(assert true)
(define-const var2648 Bool (= var35 var1930)) ; Statement: z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10) 
(define-const var540 var1809 var1809-INSTANCE) ; Statement: r12 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE> 
(define-const var3415 var199 (configuration/-1217462027 (cast-from-var1474-to-var1330 var1629))) ; Statement: $r15 = r2.<org.apache.ibatis.builder.xml.XMLStatementBuilder: org.apache.ibatis.session.Configuration configuration> 
(define-const var917 var1365 (var2597_createSqlSource/-1630701112 var447 var3415 var2134 var3808)) ; Statement: r16 = interfaceinvoke r13.<org.apache.ibatis.scripting.LanguageDriver: org.apache.ibatis.mapping.SqlSource createSqlSource(org.apache.ibatis.session.Configuration,org.apache.ibatis.parsing.XNode,java.lang.Class)>($r15, r0, r14) 
(define-const var1866 var1570 var1570-SELECT) ; Statement: r17 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT> 
(define-const var3286 var312 (builderAssistant/-342237705 var1629)) ; Statement: $r19 = r2.<org.apache.ibatis.builder.xml.XMLStatementBuilder: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant> 
(assert true)
;(assert (addMappedStatement/-1285273847 var3286 var1501 var917 var3582 var1866 null-Int null-Int null-String var3808 null-String var744 null-var512 (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) (cast-from-var1809-to-var2196 var540) var436 var1087 var483 var447 null-String (ite (= 1 0) true false))) ; Statement: virtualinvoke $r19.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r25, r16, r7, r17, null, null, null, r14, null, r3, null, 0, 0, 0, r12, r8, r9, r18, r13, null, 0) 

(declare-const var3286!1 var312)
(declare-const var1501!1 String)
(declare-const var917!1 var1365)
(declare-const var3582!1 var2780)
(declare-const var1866!1 var1570)
(declare-const var2849 var1339)
(declare-const var2849!1 var1339)
(declare-const var2849!2 var1339)
(declare-const var3808!1 ClassObject)
(declare-const var2849!3 var1339)
(declare-const var744!1 ClassObject)
(declare-const var2849!4 var1339)
(declare-const var3019 Int)
(declare-const var3019!1 Int)
(declare-const var3019!2 Int)
(declare-const var540!1 var1809)
(declare-const var436!1 String)
(declare-const var1087!1 String)
(declare-const var483!1 String)
(declare-const var447!1 var2597)
(declare-const var2849!5 var1339)
(declare-const var3019!3 Int)
(define-const var1680 var312 (builderAssistant/-342237705 var1629)) ; Statement: $r20 = r2.<org.apache.ibatis.builder.xml.XMLStatementBuilder: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant> 
(assert true)
(define-const var2829 String (applyCurrentNamespace/296309646 var1680 var1501!1 (ite (= 1 0) true false))) ; Statement: r26 = virtualinvoke $r20.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r25, 0) 
(define-const var2595 var199 (configuration/-1217462027 (cast-from-var1474-to-var1330 var1629))) ; Statement: $r21 = r2.<org.apache.ibatis.builder.xml.XMLStatementBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var2538 var3528 (getMappedStatement/409192812 var2595 var2829 (ite (= 1 0) true false))) ; Statement: r22 = virtualinvoke $r21.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.MappedStatement getMappedStatement(java.lang.String,boolean)>(r26, 0) 
(define-const var42 var199 (configuration/-1217462027 (cast-from-var1474-to-var1330 var1629))) ; Statement: $r24 = r2.<org.apache.ibatis.builder.xml.XMLStatementBuilder: org.apache.ibatis.session.Configuration configuration> 
(define-const var2864 var2180 var2180-init) ; Statement: $r23 = new org.apache.ibatis.executor.keygen.SelectKeyGenerator 
(assert true)
;(assert (<init>/1628235659 var2864 var2538 var2648)) ; Statement: specialinvoke $r23.<org.apache.ibatis.executor.keygen.SelectKeyGenerator: void <init>(org.apache.ibatis.mapping.MappedStatement,boolean)>(r22, z0) 

(declare-const var2864!1 var2180)
(declare-const var2538!1 var3528)
(declare-const var2648!1 Bool)
(assert true)
;(assert (addKeyGenerator/696433339 var42 var2829 (cast-from-var2180-to-var2196 var2864!1))) ; Statement: virtualinvoke $r24.<org.apache.ibatis.session.Configuration: void addKeyGenerator(java.lang.String,org.apache.ibatis.executor.keygen.KeyGenerator)>(r26, $r23) 

(declare-const var42!1 var199)
(declare-const var2829!1 String)
(declare-const var2864!2 var2180)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getStringAttribute/-798258666=([org.apache.ibatis.parsing.XNode, java.lang.String], java.lang.String), resolveClass/1510055323=([org.apache.ibatis.builder.BaseBuilder, java.lang.String], java.lang.Class), cast-from-var1474-to-var1330=([org.apache.ibatis.builder.xml.XMLStatementBuilder], org.apache.ibatis.builder.BaseBuilder), toString/1761020461=([java.lang.Enum], java.lang.String), cast-from-var2780-to-var3260=([org.apache.ibatis.mapping.StatementType], java.lang.Enum), getStringAttribute/2039987397=([org.apache.ibatis.parsing.XNode, java.lang.String, java.lang.String], java.lang.String), var2780_valueOf/552381572=([java.lang.String], org.apache.ibatis.mapping.StatementType), configuration/-1217462027=([org.apache.ibatis.builder.BaseBuilder], org.apache.ibatis.session.Configuration), var2597_createSqlSource/-1630701112=([org.apache.ibatis.scripting.LanguageDriver, org.apache.ibatis.session.Configuration, org.apache.ibatis.parsing.XNode, java.lang.Class], org.apache.ibatis.mapping.SqlSource), builderAssistant/-342237705=([org.apache.ibatis.builder.xml.XMLStatementBuilder], org.apache.ibatis.builder.MapperBuilderAssistant), addMappedStatement/-1285273847=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, org.apache.ibatis.mapping.SqlSource, org.apache.ibatis.mapping.StatementType, org.apache.ibatis.mapping.SqlCommandType, java.lang.Integer, java.lang.Integer, java.lang.String, java.lang.Class, java.lang.String, java.lang.Class, org.apache.ibatis.mapping.ResultSetType, boolean, boolean, boolean, org.apache.ibatis.executor.keygen.KeyGenerator, java.lang.String, java.lang.String, java.lang.String, org.apache.ibatis.scripting.LanguageDriver, java.lang.String, boolean], org.apache.ibatis.mapping.MappedStatement), cast-from-var1809-to-var2196=([org.apache.ibatis.executor.keygen.NoKeyGenerator], org.apache.ibatis.executor.keygen.KeyGenerator), applyCurrentNamespace/296309646=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, boolean], java.lang.String), getMappedStatement/409192812=([org.apache.ibatis.session.Configuration, java.lang.String, boolean], org.apache.ibatis.mapping.MappedStatement), var2180-init=([], org.apache.ibatis.executor.keygen.SelectKeyGenerator), <init>/1628235659=([org.apache.ibatis.executor.keygen.SelectKeyGenerator, org.apache.ibatis.mapping.MappedStatement, boolean], void), addKeyGenerator/696433339=([org.apache.ibatis.session.Configuration, java.lang.String, org.apache.ibatis.executor.keygen.KeyGenerator], void), cast-from-var2180-to-var2196=([org.apache.ibatis.executor.keygen.SelectKeyGenerator], org.apache.ibatis.executor.keygen.KeyGenerator)}
; {var1474=org.apache.ibatis.builder.xml.XMLStatementBuilder, var1629=r2, var1501=r25, var1339=null_type, var2406=org.apache.ibatis.parsing.XNode, var2134=r0, var3808=r14, var2597=org.apache.ibatis.scripting.LanguageDriver, var447=r13, var483=r18, var3914=r1, var1330=org.apache.ibatis.builder.BaseBuilder, var744=r3, var2780=org.apache.ibatis.mapping.StatementType, var1865=$r4, var3260=java.lang.Enum, var45=$r5, var1961=$r6, var3582=r7, var436=r8, var1087=r9, var35=$r11, var1930=$r10, var2648=z0, var1809=org.apache.ibatis.executor.keygen.NoKeyGenerator, var540=r12, var199=org.apache.ibatis.session.Configuration, var3415=$r15, var1365=org.apache.ibatis.mapping.SqlSource, var917=r16, var1570=org.apache.ibatis.mapping.SqlCommandType, var1866=r17, var312=org.apache.ibatis.builder.MapperBuilderAssistant, var3286=$r19, var512=org.apache.ibatis.mapping.ResultSetType, var2196=org.apache.ibatis.executor.keygen.KeyGenerator, var2849=null, var3019=0, var1680=$r20, var2829=r26, var2595=$r21, var3528=org.apache.ibatis.mapping.MappedStatement, var2538=r22, var42=$r24, var2180=org.apache.ibatis.executor.keygen.SelectKeyGenerator, var2864=$r23}
; {org.apache.ibatis.builder.xml.XMLStatementBuilder=var1474, r2=var1629, r25=var1501, null_type=var1339, org.apache.ibatis.parsing.XNode=var2406, r0=var2134, r14=var3808, org.apache.ibatis.scripting.LanguageDriver=var2597, r13=var447, r18=var483, r1=var3914, org.apache.ibatis.builder.BaseBuilder=var1330, r3=var744, org.apache.ibatis.mapping.StatementType=var2780, $r4=var1865, java.lang.Enum=var3260, $r5=var45, $r6=var1961, r7=var3582, r8=var436, r9=var1087, $r11=var35, $r10=var1930, z0=var2648, org.apache.ibatis.executor.keygen.NoKeyGenerator=var1809, r12=var540, org.apache.ibatis.session.Configuration=var199, $r15=var3415, org.apache.ibatis.mapping.SqlSource=var1365, r16=var917, org.apache.ibatis.mapping.SqlCommandType=var1570, r17=var1866, org.apache.ibatis.builder.MapperBuilderAssistant=var312, $r19=var3286, org.apache.ibatis.mapping.ResultSetType=var512, org.apache.ibatis.executor.keygen.KeyGenerator=var2196, null=var2849, 0=var3019, $r20=var1680, r26=var2829, $r21=var2595, org.apache.ibatis.mapping.MappedStatement=var3528, r22=var2538, $r24=var42, org.apache.ibatis.executor.keygen.SelectKeyGenerator=var2180, $r23=var2864}
;seq <java.lang.Enum: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.builder.xml.XMLStatementBuilder;	r25 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.ibatis.parsing.XNode;	r14 := @parameter2: java.lang.Class;	r13 := @parameter3: org.apache.ibatis.scripting.LanguageDriver;	r18 := @parameter4: java.lang.String;	r1 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("resultType");	r3 = virtualinvoke r2.<org.apache.ibatis.builder.xml.XMLStatementBuilder: java.lang.Class resolveClass(java.lang.String)>(r1);	$r4 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType PREPARED>;	$r5 = virtualinvoke $r4.<org.apache.ibatis.mapping.StatementType: java.lang.String toString()>();	$r6 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("statementType", $r5);	r7 = staticinvoke <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType valueOf(java.lang.String)>($r6);	r8 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("keyProperty");	r9 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String)>("keyColumn");	$r11 = "BEFORE";	$r10 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getStringAttribute(java.lang.String,java.lang.String)>("order", "AFTER");	z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10);	r12 = <org.apache.ibatis.executor.keygen.NoKeyGenerator: org.apache.ibatis.executor.keygen.NoKeyGenerator INSTANCE>;	$r15 = r2.<org.apache.ibatis.builder.xml.XMLStatementBuilder: org.apache.ibatis.session.Configuration configuration>;	r16 = interfaceinvoke r13.<org.apache.ibatis.scripting.LanguageDriver: org.apache.ibatis.mapping.SqlSource createSqlSource(org.apache.ibatis.session.Configuration,org.apache.ibatis.parsing.XNode,java.lang.Class)>($r15, r0, r14);	r17 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType SELECT>;	$r19 = r2.<org.apache.ibatis.builder.xml.XMLStatementBuilder: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant>;	virtualinvoke $r19.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.mapping.MappedStatement addMappedStatement(java.lang.String,org.apache.ibatis.mapping.SqlSource,org.apache.ibatis.mapping.StatementType,org.apache.ibatis.mapping.SqlCommandType,java.lang.Integer,java.lang.Integer,java.lang.String,java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.mapping.ResultSetType,boolean,boolean,boolean,org.apache.ibatis.executor.keygen.KeyGenerator,java.lang.String,java.lang.String,java.lang.String,org.apache.ibatis.scripting.LanguageDriver,java.lang.String,boolean)>(r25, r16, r7, r17, null, null, null, r14, null, r3, null, 0, 0, 0, r12, r8, r9, r18, r13, null, 0);	$r20 = r2.<org.apache.ibatis.builder.xml.XMLStatementBuilder: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant>;	r26 = virtualinvoke $r20.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r25, 0);	$r21 = r2.<org.apache.ibatis.builder.xml.XMLStatementBuilder: org.apache.ibatis.session.Configuration configuration>;	r22 = virtualinvoke $r21.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.MappedStatement getMappedStatement(java.lang.String,boolean)>(r26, 0);	$r24 = r2.<org.apache.ibatis.builder.xml.XMLStatementBuilder: org.apache.ibatis.session.Configuration configuration>;	$r23 = new org.apache.ibatis.executor.keygen.SelectKeyGenerator;	specialinvoke $r23.<org.apache.ibatis.executor.keygen.SelectKeyGenerator: void <init>(org.apache.ibatis.mapping.MappedStatement,boolean)>(r22, z0);	virtualinvoke $r24.<org.apache.ibatis.session.Configuration: void addKeyGenerator(java.lang.String,org.apache.ibatis.executor.keygen.KeyGenerator)>(r26, $r23);	return
;block_num 1
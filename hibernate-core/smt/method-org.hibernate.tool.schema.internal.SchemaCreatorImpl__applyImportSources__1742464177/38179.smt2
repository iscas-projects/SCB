(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var830 0)
(declare-sort var1207 0)
(declare-sort var1278 0)
(declare-sort var1460 0)
(declare-sort var855 0)
(declare-sort var960 0)
(declare-sort var1716 0)
(declare-sort var137 0)
(declare-sort var3820 0)
(declare-sort var2907 0)
(declare-sort var602 0)
(declare-sort var2592 0)
(declare-sort var878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var137!class ClassObject)
(declare-fun tool/-1766963337 (var830) var855)
(declare-fun getServiceRegistry/-779381896 (var855) var960)
(declare-fun var960_getService/-972330729 (var960 ClassObject) var1716)
(declare-fun cast-from-var1716-to-var137 (var1716) var137)
(declare-fun getFormatter/-141424057 (var3820) var2907)
(declare-fun var1207_getConfigurationValues/-159311024 (var1207) var602)
(declare-fun var602_get/1088891777 (var602 var2592) var2592)
(declare-fun cast-from-String-to-var2592 (String) var2592)
(declare-fun cast-from-var2592-to-String (var2592) String)
(declare-fun var878_getString/-103458448 (String var602 String) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var830 var830)
(declare-const null-var1207 var1207)
(declare-const null-var1278 var1278)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var1460__ (Array Int var1460))
(declare-const var3820-NONE var3820)
(declare-const null-var2592 var2592)
(declare-const var3419 var830) ; Statement: r0 := @this: org.hibernate.tool.schema.internal.SchemaCreatorImpl 
(assert (not (= var3419 null-var830)))
(declare-const var3434 var1207) ; Statement: r7 := @parameter0: org.hibernate.tool.schema.spi.ExecutionOptions 
(assert (not (= var3434 null-var1207)))
(declare-const var2967 var1278) ; Statement: r14 := @parameter1: org.hibernate.tool.hbm2ddl.ImportSqlCommandExtractor 
(assert (not (= var2967 null-var1278)))
(declare-const var3723 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var3723 null-Bool)))
(declare-const var2024 (Array Int var1460)) ; Statement: r18 := @parameter3: org.hibernate.tool.schema.internal.exec.GenerationTarget[] 
(assert (not (= var2024 null-__Array__Int__var1460__)))
(define-const var2063 var855 (tool/-1766963337 var3419)) ; Statement: $r1 = r0.<org.hibernate.tool.schema.internal.SchemaCreatorImpl: org.hibernate.tool.schema.internal.HibernateSchemaManagementTool tool> 
(assert true)
(define-const var2453 var960 (getServiceRegistry/-779381896 var2063)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.tool.schema.internal.HibernateSchemaManagementTool: org.hibernate.service.ServiceRegistry getServiceRegistry()>() 
(define-const var1292 var1716 (var960_getService/-972330729 var2453 var137!class)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var3076 var137 (cast-from-var1716-to-var137 var1292)) ; Statement: r4 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r3 
(define-const var146 var3820 var3820-NONE) ; Statement: $r5 = <org.hibernate.engine.jdbc.internal.FormatStyle: org.hibernate.engine.jdbc.internal.FormatStyle NONE> 
(assert true)
(define-const var2913 var2907 (getFormatter/-141424057 var146)) ; Statement: r6 = virtualinvoke $r5.<org.hibernate.engine.jdbc.internal.FormatStyle: org.hibernate.engine.jdbc.internal.Formatter getFormatter()>() 
(define-const var2854 var602 (var1207_getConfigurationValues/-159311024 var3434)) ; Statement: $r8 = interfaceinvoke r7.<org.hibernate.tool.schema.spi.ExecutionOptions: java.util.Map getConfigurationValues()>() 
(define-const var3366 var2592 (var602_get/1088891777 var2854 (cast-from-String-to-var2592 "javax.persistence.sql-load-script-source"))) ; Statement: r29 = interfaceinvoke $r8.<java.util.Map: java.lang.Object get(java.lang.Object)>("javax.persistence.sql-load-script-source") 
 ; Statement: if r29 != null goto $r9 = interfaceinvoke r7.<org.hibernate.tool.schema.spi.ExecutionOptions: java.util.Map getConfigurationValues()>() 
(assert (not (= var3366 null-var2592))) ; Cond: r29 != null 
(define-const var425 var602 (var1207_getConfigurationValues/-159311024 var3434)) ; Statement: $r9 = interfaceinvoke r7.<org.hibernate.tool.schema.spi.ExecutionOptions: java.util.Map getConfigurationValues()>() 
(define-const var2526 var2592 (var602_get/1088891777 var425 (cast-from-String-to-var2592 "hibernate.hbm2ddl.charset_name"))) ; Statement: $r10 = interfaceinvoke $r9.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.hbm2ddl.charset_name") 
(define-const var3223 String (cast-from-var2592-to-String var2526)) ; Statement: $r26 = (java.lang.String) $r10 
 ; Statement: if r29 == null goto $r11 = interfaceinvoke r7.<org.hibernate.tool.schema.spi.ExecutionOptions: java.util.Map getConfigurationValues()>() 
(assert (= var3366 null-var2592)) ; Cond: r29 == null 
(define-const var3034 var602 (var1207_getConfigurationValues/-159311024 var3434)) ; Statement: $r11 = interfaceinvoke r7.<org.hibernate.tool.schema.spi.ExecutionOptions: java.util.Map getConfigurationValues()>() 
(define-const var1184 String (var878_getString/-103458448 "hibernate.hbm2ddl.import_files" var3034 "/import.sql")) ; Statement: $r22 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("hibernate.hbm2ddl.import_files", $r11, "/import.sql") 
(assert true)
(define-const var2185 (Array Int String) (split/-636890950 var1184 ",")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1184 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var2423 Int (getLength-Arr-String-1 var2185)) ; Statement: $i0 = lengthof $r23 
(define-const var1378 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= $i0 goto return 
(assert (>= var1378 var2423)) ; Cond: i1 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {tool/-1766963337=([org.hibernate.tool.schema.internal.SchemaCreatorImpl], org.hibernate.tool.schema.internal.HibernateSchemaManagementTool), getServiceRegistry/-779381896=([org.hibernate.tool.schema.internal.HibernateSchemaManagementTool], org.hibernate.service.ServiceRegistry), var960_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var1716-to-var137=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), getFormatter/-141424057=([org.hibernate.engine.jdbc.internal.FormatStyle], org.hibernate.engine.jdbc.internal.Formatter), var1207_getConfigurationValues/-159311024=([org.hibernate.tool.schema.spi.ExecutionOptions], java.util.Map), var602_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2592=([java.lang.String], java.lang.Object), cast-from-var2592-to-String=([java.lang.Object], java.lang.String), var878_getString/-103458448=([java.lang.String, java.util.Map, java.lang.String], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var830=org.hibernate.tool.schema.internal.SchemaCreatorImpl, var3419=r0, var1207=org.hibernate.tool.schema.spi.ExecutionOptions, var3434=r7, var1278=org.hibernate.tool.hbm2ddl.ImportSqlCommandExtractor, var2967=r14, var3723=z2, var1460=org.hibernate.tool.schema.internal.exec.GenerationTarget, var2024=r18, var855=org.hibernate.tool.schema.internal.HibernateSchemaManagementTool, var2063=$r1, var960=org.hibernate.service.ServiceRegistry, var2453=r2, var1716=org.hibernate.service.Service, var137=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var1292=$r3, var3076=r4, var3820=org.hibernate.engine.jdbc.internal.FormatStyle, var146=$r5, var2907=org.hibernate.engine.jdbc.internal.Formatter, var2913=r6, var602=java.util.Map, var2854=$r8, var2592=java.lang.Object, var3366=r29, var425=$r9, var2526=$r10, var3223=$r26, var3034=$r11, var878=org.hibernate.internal.util.config.ConfigurationHelper, var1184=$r22, var2185=$r23, var2423=$i0, var1378=i1}
; {org.hibernate.tool.schema.internal.SchemaCreatorImpl=var830, r0=var3419, org.hibernate.tool.schema.spi.ExecutionOptions=var1207, r7=var3434, org.hibernate.tool.hbm2ddl.ImportSqlCommandExtractor=var1278, r14=var2967, z2=var3723, org.hibernate.tool.schema.internal.exec.GenerationTarget=var1460, r18=var2024, org.hibernate.tool.schema.internal.HibernateSchemaManagementTool=var855, $r1=var2063, org.hibernate.service.ServiceRegistry=var960, r2=var2453, org.hibernate.service.Service=var1716, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var137, $r3=var1292, r4=var3076, org.hibernate.engine.jdbc.internal.FormatStyle=var3820, $r5=var146, org.hibernate.engine.jdbc.internal.Formatter=var2907, r6=var2913, java.util.Map=var602, $r8=var2854, java.lang.Object=var2592, r29=var3366, $r9=var425, $r10=var2526, $r26=var3223, $r11=var3034, org.hibernate.internal.util.config.ConfigurationHelper=var878, $r22=var1184, $r23=var2185, $i0=var2423, i1=var1378}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.tool.schema.internal.SchemaCreatorImpl;	r7 := @parameter0: org.hibernate.tool.schema.spi.ExecutionOptions;	r14 := @parameter1: org.hibernate.tool.hbm2ddl.ImportSqlCommandExtractor;	z2 := @parameter2: boolean;	r18 := @parameter3: org.hibernate.tool.schema.internal.exec.GenerationTarget[];	$r1 = r0.<org.hibernate.tool.schema.internal.SchemaCreatorImpl: org.hibernate.tool.schema.internal.HibernateSchemaManagementTool tool>;	r2 = virtualinvoke $r1.<org.hibernate.tool.schema.internal.HibernateSchemaManagementTool: org.hibernate.service.ServiceRegistry getServiceRegistry()>();	$r3 = interfaceinvoke r2.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	r4 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r3;	$r5 = <org.hibernate.engine.jdbc.internal.FormatStyle: org.hibernate.engine.jdbc.internal.FormatStyle NONE>;	r6 = virtualinvoke $r5.<org.hibernate.engine.jdbc.internal.FormatStyle: org.hibernate.engine.jdbc.internal.Formatter getFormatter()>();	$r8 = interfaceinvoke r7.<org.hibernate.tool.schema.spi.ExecutionOptions: java.util.Map getConfigurationValues()>();	r29 = interfaceinvoke $r8.<java.util.Map: java.lang.Object get(java.lang.Object)>("javax.persistence.sql-load-script-source");	if r29 != null goto $r9 = interfaceinvoke r7.<org.hibernate.tool.schema.spi.ExecutionOptions: java.util.Map getConfigurationValues()>();	$r9 = interfaceinvoke r7.<org.hibernate.tool.schema.spi.ExecutionOptions: java.util.Map getConfigurationValues()>();	$r10 = interfaceinvoke $r9.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.hbm2ddl.charset_name");	$r26 = (java.lang.String) $r10;	if r29 == null goto $r11 = interfaceinvoke r7.<org.hibernate.tool.schema.spi.ExecutionOptions: java.util.Map getConfigurationValues()>();	$r11 = interfaceinvoke r7.<org.hibernate.tool.schema.spi.ExecutionOptions: java.util.Map getConfigurationValues()>();	$r22 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("hibernate.hbm2ddl.import_files", $r11, "/import.sql");	$r23 = virtualinvoke $r22.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$i0 = lengthof $r23;	i1 = 0;	if i1 >= $i0 goto return;	return
;block_num 5
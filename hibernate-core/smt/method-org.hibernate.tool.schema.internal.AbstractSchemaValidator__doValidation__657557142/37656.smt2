(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var870 0)
(declare-sort var2734 0)
(declare-sort var2836 0)
(declare-sort var3990 0)
(declare-sort var3012 0)
(declare-sort var1294 0)
(declare-sort var2588 0)
(declare-sort var3200 0)
(declare-sort var3129 0)
(declare-sort var3391 0)
(declare-sort var552 0)
(declare-sort var347 0)
(declare-sort var2646 0)
(declare-sort var2259 0)
(declare-sort var1825 0)
(declare-sort var3480 0)
(declare-sort var384 0)
(declare-sort var642 0)
(declare-sort var3479 0)
(declare-sort var774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2588!class ClassObject)
(declare-fun tool/1334463643 (var870) var3990)
(declare-fun getServiceRegistry/-779381896 (var3990) var3012)
(declare-fun var3012_getService/-972330729 (var3012 ClassObject) var1294)
(declare-fun cast-from-var1294-to-var2588 (var1294) var2588)
(declare-fun var2734_getDatabase/193995574 (var2734) var3200)
(declare-fun var2836_getConfigurationValues/-159311024 (var2836) var3129)
(declare-fun var552_fromConfigurationMap/1798670867 (var2588 var3200 var3129) var3391)
(declare-fun resolveJdbcContext/-1363207006 (var3990 var3129) var347)
(declare-fun getDdlTransactionIsolator/-562033444 (var3990 var347) var2646)
(declare-fun var1825_buildDatabaseInformation/-1577478032 (var3012 var2646 var3391 var3480) var2259)
(declare-fun cast-from-var3990-to-var3480 (var3990) var3480)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var384) String)
(declare-fun cast-from-var642-to-var384 (var642) var384)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun debug/-1936492793 (var3479 var774) void)
(declare-fun cast-from-String-to-var774 (String) var774)
(declare-fun var2646_release/-1806399619 (var2646) void)
(declare-const null-var870 var870)
(declare-const null-var2734 var2734)
(declare-const null-var2836 var2836)
(declare-const null-var384 var384)
(declare-const null-var642 var642)
(declare-const var870-log var3479)
(declare-const var1896 var870) ; Statement: r0 := @this: org.hibernate.tool.schema.internal.AbstractSchemaValidator 
(assert (not (= var1896 null-var870)))
(declare-const var1070 var2734) ; Statement: r4 := @parameter0: org.hibernate.boot.Metadata 
(assert (not (= var1070 null-var2734)))
(declare-const var57 var2836) ; Statement: r5 := @parameter1: org.hibernate.tool.schema.spi.ExecutionOptions 
(assert (not (= var57 null-var2836)))
(define-const var357 var3990 (tool/1334463643 var1896)) ; Statement: $r1 = r0.<org.hibernate.tool.schema.internal.AbstractSchemaValidator: org.hibernate.tool.schema.internal.HibernateSchemaManagementTool tool> 
(assert true)
(define-const var274 var3012 (getServiceRegistry/-779381896 var357)) ; Statement: $r2 = virtualinvoke $r1.<org.hibernate.tool.schema.internal.HibernateSchemaManagementTool: org.hibernate.service.ServiceRegistry getServiceRegistry()>() 
(define-const var462 var1294 (var3012_getService/-972330729 var274 var2588!class)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/env/spi/JdbcEnvironment;") 
(define-const var518 var2588 (cast-from-var1294-to-var2588 var462)) ; Statement: $r8 = (org.hibernate.engine.jdbc.env.spi.JdbcEnvironment) $r3 
(define-const var1699 var3200 (var2734_getDatabase/193995574 var1070)) ; Statement: $r7 = interfaceinvoke r4.<org.hibernate.boot.Metadata: org.hibernate.boot.model.relational.Database getDatabase()>() 
(define-const var648 var3129 (var2836_getConfigurationValues/-159311024 var57)) ; Statement: $r6 = interfaceinvoke r5.<org.hibernate.tool.schema.spi.ExecutionOptions: java.util.Map getConfigurationValues()>() 
(define-const var1798 var3391 (var552_fromConfigurationMap/1798670867 var518 var1699 var648)) ; Statement: r9 = staticinvoke <org.hibernate.boot.model.relational.internal.SqlStringGenerationContextImpl: org.hibernate.boot.model.relational.SqlStringGenerationContext fromConfigurationMap(org.hibernate.engine.jdbc.env.spi.JdbcEnvironment,org.hibernate.boot.model.relational.Database,java.util.Map)>($r8, $r7, $r6) 
(define-const var2681 var3990 (tool/1334463643 var1896)) ; Statement: $r10 = r0.<org.hibernate.tool.schema.internal.AbstractSchemaValidator: org.hibernate.tool.schema.internal.HibernateSchemaManagementTool tool> 
(define-const var3734 var3129 (var2836_getConfigurationValues/-159311024 var57)) ; Statement: $r11 = interfaceinvoke r5.<org.hibernate.tool.schema.spi.ExecutionOptions: java.util.Map getConfigurationValues()>() 
(assert true)
(define-const var149 var347 (resolveJdbcContext/-1363207006 var2681 var3734)) ; Statement: r12 = virtualinvoke $r10.<org.hibernate.tool.schema.internal.HibernateSchemaManagementTool: org.hibernate.tool.schema.internal.exec.JdbcContext resolveJdbcContext(java.util.Map)>($r11) 
(define-const var3631 var3990 (tool/1334463643 var1896)) ; Statement: $r13 = r0.<org.hibernate.tool.schema.internal.AbstractSchemaValidator: org.hibernate.tool.schema.internal.HibernateSchemaManagementTool tool> 
(assert true)
(define-const var3370 var2646 (getDdlTransactionIsolator/-562033444 var3631 var149)) ; Statement: r14 = virtualinvoke $r13.<org.hibernate.tool.schema.internal.HibernateSchemaManagementTool: org.hibernate.resource.transaction.spi.DdlTransactionIsolator getDdlTransactionIsolator(org.hibernate.tool.schema.internal.exec.JdbcContext)>(r12) 
(define-const var1751 var3990 (tool/1334463643 var1896)) ; Statement: $r15 = r0.<org.hibernate.tool.schema.internal.AbstractSchemaValidator: org.hibernate.tool.schema.internal.HibernateSchemaManagementTool tool> 
(assert true)
(define-const var1706 var3012 (getServiceRegistry/-779381896 var1751)) ; Statement: $r17 = virtualinvoke $r15.<org.hibernate.tool.schema.internal.HibernateSchemaManagementTool: org.hibernate.service.ServiceRegistry getServiceRegistry()>() 
(define-const var725 var3990 (tool/1334463643 var1896)) ; Statement: $r16 = r0.<org.hibernate.tool.schema.internal.AbstractSchemaValidator: org.hibernate.tool.schema.internal.HibernateSchemaManagementTool tool> 
(define-const var580 var2259 (var1825_buildDatabaseInformation/-1577478032 var1706 var3370 var1798 (cast-from-var3990-to-var3480 var725))) ; Statement: r18 = staticinvoke <org.hibernate.tool.schema.internal.Helper: org.hibernate.tool.schema.extract.spi.DatabaseInformation buildDatabaseInformation(org.hibernate.service.ServiceRegistry,org.hibernate.resource.transaction.spi.DdlTransactionIsolator,org.hibernate.boot.model.relational.SqlStringGenerationContext,org.hibernate.tool.schema.spi.SchemaManagementTool)>($r17, r14, r9, $r16) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3622 var384) ; Statement: $r27 := @caughtexception 
(assert (not (= var3622 null-var384)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1959 var642) ; Statement: $r20 := @caughtexception 
(assert (not (= var1959 null-var642)))
(define-const var512 var3479 var870-log) ; Statement: $r22 = <org.hibernate.tool.schema.internal.AbstractSchemaValidator: org.jboss.logging.Logger log> 
(define-const var12 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var12)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var12!1 String)
(assert (= var12!1 ""))
(assert true)
(define-const var493 String (append/672562846 var12!1 "Problem releasing DatabaseInformation : ")) ; Statement: $r24 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem releasing DatabaseInformation : ") 
(declare-const var12!2 String)
(assert (= var12!2 (str.++ var12!1 "Problem releasing DatabaseInformation : ")))
(assert true)
(define-const var2310 String (getMessage/849299655 (cast-from-var642-to-var384 var1959))) ; Statement: $r23 = virtualinvoke $r20.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var3143 String (append/672562846 var493 var2310)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var493!1 String)
(assert (= var493!1 (str.++ var493 var2310)))
(assert true)
(define-const var3755 String (toString/-2075883882 var3143)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (debug/-1936492793 var512 (cast-from-String-to-var774 var3755))) ; Statement: virtualinvoke $r22.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r26) 

(declare-const var512!1 var3479)
(declare-const var3755!1 String)
(assert true) ; Non Conditional
;(assert (var2646_release/-1806399619 var3370)) ; Statement: interfaceinvoke r14.<org.hibernate.resource.transaction.spi.DdlTransactionIsolator: void release()>() 

(declare-const var3370!1 var2646)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {tool/1334463643=([org.hibernate.tool.schema.internal.AbstractSchemaValidator], org.hibernate.tool.schema.internal.HibernateSchemaManagementTool), getServiceRegistry/-779381896=([org.hibernate.tool.schema.internal.HibernateSchemaManagementTool], org.hibernate.service.ServiceRegistry), var3012_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var1294-to-var2588=([org.hibernate.service.Service], org.hibernate.engine.jdbc.env.spi.JdbcEnvironment), var2734_getDatabase/193995574=([org.hibernate.boot.Metadata], org.hibernate.boot.model.relational.Database), var2836_getConfigurationValues/-159311024=([org.hibernate.tool.schema.spi.ExecutionOptions], java.util.Map), var552_fromConfigurationMap/1798670867=([org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, org.hibernate.boot.model.relational.Database, java.util.Map], org.hibernate.boot.model.relational.SqlStringGenerationContext), resolveJdbcContext/-1363207006=([org.hibernate.tool.schema.internal.HibernateSchemaManagementTool, java.util.Map], org.hibernate.tool.schema.internal.exec.JdbcContext), getDdlTransactionIsolator/-562033444=([org.hibernate.tool.schema.internal.HibernateSchemaManagementTool, org.hibernate.tool.schema.internal.exec.JdbcContext], org.hibernate.resource.transaction.spi.DdlTransactionIsolator), var1825_buildDatabaseInformation/-1577478032=([org.hibernate.service.ServiceRegistry, org.hibernate.resource.transaction.spi.DdlTransactionIsolator, org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.tool.schema.spi.SchemaManagementTool], org.hibernate.tool.schema.extract.spi.DatabaseInformation), cast-from-var3990-to-var3480=([org.hibernate.tool.schema.internal.HibernateSchemaManagementTool], org.hibernate.tool.schema.spi.SchemaManagementTool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var642-to-var384=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), debug/-1936492793=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var774=([java.lang.String], java.lang.Object), var2646_release/-1806399619=([org.hibernate.resource.transaction.spi.DdlTransactionIsolator], void)}
; {var870=org.hibernate.tool.schema.internal.AbstractSchemaValidator, var1896=r0, var2734=org.hibernate.boot.Metadata, var1070=r4, var2836=org.hibernate.tool.schema.spi.ExecutionOptions, var57=r5, var3990=org.hibernate.tool.schema.internal.HibernateSchemaManagementTool, var357=$r1, var3012=org.hibernate.service.ServiceRegistry, var274=$r2, var1294=org.hibernate.service.Service, var2588=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var462=$r3, var518=$r8, var3200=org.hibernate.boot.model.relational.Database, var1699=$r7, var3129=java.util.Map, var648=$r6, var3391=org.hibernate.boot.model.relational.SqlStringGenerationContext, var552=org.hibernate.boot.model.relational.internal.SqlStringGenerationContextImpl, var1798=r9, var2681=$r10, var3734=$r11, var347=org.hibernate.tool.schema.internal.exec.JdbcContext, var149=r12, var3631=$r13, var2646=org.hibernate.resource.transaction.spi.DdlTransactionIsolator, var3370=r14, var1751=$r15, var1706=$r17, var725=$r16, var2259=org.hibernate.tool.schema.extract.spi.DatabaseInformation, var1825=org.hibernate.tool.schema.internal.Helper, var3480=org.hibernate.tool.schema.spi.SchemaManagementTool, var580=r18, var384=java.lang.Throwable, var3622=$r27, var642=java.lang.Exception, var1959=$r20, var3479=org.jboss.logging.Logger, var512=$r22, var12=$r21, var493=$r24, var2310=$r23, var3143=$r25, var3755=$r26, var774=java.lang.Object}
; {org.hibernate.tool.schema.internal.AbstractSchemaValidator=var870, r0=var1896, org.hibernate.boot.Metadata=var2734, r4=var1070, org.hibernate.tool.schema.spi.ExecutionOptions=var2836, r5=var57, org.hibernate.tool.schema.internal.HibernateSchemaManagementTool=var3990, $r1=var357, org.hibernate.service.ServiceRegistry=var3012, $r2=var274, org.hibernate.service.Service=var1294, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var2588, $r3=var462, $r8=var518, org.hibernate.boot.model.relational.Database=var3200, $r7=var1699, java.util.Map=var3129, $r6=var648, org.hibernate.boot.model.relational.SqlStringGenerationContext=var3391, org.hibernate.boot.model.relational.internal.SqlStringGenerationContextImpl=var552, r9=var1798, $r10=var2681, $r11=var3734, org.hibernate.tool.schema.internal.exec.JdbcContext=var347, r12=var149, $r13=var3631, org.hibernate.resource.transaction.spi.DdlTransactionIsolator=var2646, r14=var3370, $r15=var1751, $r17=var1706, $r16=var725, org.hibernate.tool.schema.extract.spi.DatabaseInformation=var2259, org.hibernate.tool.schema.internal.Helper=var1825, org.hibernate.tool.schema.spi.SchemaManagementTool=var3480, r18=var580, java.lang.Throwable=var384, $r27=var3622, java.lang.Exception=var642, $r20=var1959, org.jboss.logging.Logger=var3479, $r22=var512, $r21=var12, $r24=var493, $r23=var2310, $r25=var3143, $r26=var3755, java.lang.Object=var774}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tool.schema.internal.AbstractSchemaValidator;	r4 := @parameter0: org.hibernate.boot.Metadata;	r5 := @parameter1: org.hibernate.tool.schema.spi.ExecutionOptions;	$r1 = r0.<org.hibernate.tool.schema.internal.AbstractSchemaValidator: org.hibernate.tool.schema.internal.HibernateSchemaManagementTool tool>;	$r2 = virtualinvoke $r1.<org.hibernate.tool.schema.internal.HibernateSchemaManagementTool: org.hibernate.service.ServiceRegistry getServiceRegistry()>();	$r3 = interfaceinvoke $r2.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/env/spi/JdbcEnvironment;");	$r8 = (org.hibernate.engine.jdbc.env.spi.JdbcEnvironment) $r3;	$r7 = interfaceinvoke r4.<org.hibernate.boot.Metadata: org.hibernate.boot.model.relational.Database getDatabase()>();	$r6 = interfaceinvoke r5.<org.hibernate.tool.schema.spi.ExecutionOptions: java.util.Map getConfigurationValues()>();	r9 = staticinvoke <org.hibernate.boot.model.relational.internal.SqlStringGenerationContextImpl: org.hibernate.boot.model.relational.SqlStringGenerationContext fromConfigurationMap(org.hibernate.engine.jdbc.env.spi.JdbcEnvironment,org.hibernate.boot.model.relational.Database,java.util.Map)>($r8, $r7, $r6);	$r10 = r0.<org.hibernate.tool.schema.internal.AbstractSchemaValidator: org.hibernate.tool.schema.internal.HibernateSchemaManagementTool tool>;	$r11 = interfaceinvoke r5.<org.hibernate.tool.schema.spi.ExecutionOptions: java.util.Map getConfigurationValues()>();	r12 = virtualinvoke $r10.<org.hibernate.tool.schema.internal.HibernateSchemaManagementTool: org.hibernate.tool.schema.internal.exec.JdbcContext resolveJdbcContext(java.util.Map)>($r11);	$r13 = r0.<org.hibernate.tool.schema.internal.AbstractSchemaValidator: org.hibernate.tool.schema.internal.HibernateSchemaManagementTool tool>;	r14 = virtualinvoke $r13.<org.hibernate.tool.schema.internal.HibernateSchemaManagementTool: org.hibernate.resource.transaction.spi.DdlTransactionIsolator getDdlTransactionIsolator(org.hibernate.tool.schema.internal.exec.JdbcContext)>(r12);	$r15 = r0.<org.hibernate.tool.schema.internal.AbstractSchemaValidator: org.hibernate.tool.schema.internal.HibernateSchemaManagementTool tool>;	$r17 = virtualinvoke $r15.<org.hibernate.tool.schema.internal.HibernateSchemaManagementTool: org.hibernate.service.ServiceRegistry getServiceRegistry()>();	$r16 = r0.<org.hibernate.tool.schema.internal.AbstractSchemaValidator: org.hibernate.tool.schema.internal.HibernateSchemaManagementTool tool>;	r18 = staticinvoke <org.hibernate.tool.schema.internal.Helper: org.hibernate.tool.schema.extract.spi.DatabaseInformation buildDatabaseInformation(org.hibernate.service.ServiceRegistry,org.hibernate.resource.transaction.spi.DdlTransactionIsolator,org.hibernate.boot.model.relational.SqlStringGenerationContext,org.hibernate.tool.schema.spi.SchemaManagementTool)>($r17, r14, r9, $r16);	$r27 := @caughtexception;	$r20 := @caughtexception;	$r22 = <org.hibernate.tool.schema.internal.AbstractSchemaValidator: org.jboss.logging.Logger log>;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem releasing DatabaseInformation : ");	$r23 = virtualinvoke $r20.<java.lang.Exception: java.lang.String getMessage()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r22.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r26);	interfaceinvoke r14.<org.hibernate.resource.transaction.spi.DdlTransactionIsolator: void release()>();	throw $r27
;block_num 4
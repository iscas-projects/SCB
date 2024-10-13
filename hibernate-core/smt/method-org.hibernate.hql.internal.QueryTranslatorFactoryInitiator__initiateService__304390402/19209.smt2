(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2352 0)
(declare-sort var3433 0)
(declare-sort var1303 0)
(declare-sort var3326 0)
(declare-sort var3819 0)
(declare-sort var693 0)
(declare-sort var1416 0)
(declare-sort var2366 0)
(declare-sort var2549 0)
(declare-sort var1048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var693!class ClassObject)
(declare-const var2549!class ClassObject)
(declare-fun var3819_getService/-972330729 (var3819 ClassObject) var3326)
(declare-fun cast-from-var1303-to-var3819 (var1303) var3819)
(declare-fun cast-from-var3326-to-var693 (var3326) var693)
(declare-fun var3433_get/1088891777 (var3433 var1416) var1416)
(declare-fun cast-from-String-to-var1416 (String) var1416)
(declare-fun var693_resolveDefaultableStrategy/-420100722 (var693 ClassObject var1416 var1416) var1416)
(declare-fun cast-from-var2366-to-var1416 (var2366) var1416)
(declare-fun cast-from-var1416-to-var2549 (var1416) var2549)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1416) String)
(declare-fun cast-from-var2549-to-var1416 (var2549) var1416)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1048_debug/-547240102 (var1048 var1416) void)
(declare-const null-var2352 var2352)
(declare-const null-var3433 var3433)
(declare-const null-var1303 var1303)
(declare-const var2366-INSTANCE var2366)
(declare-const var2352-log var1048)
(declare-const var2839 var2352) ; Statement: r13 := @this: org.hibernate.hql.internal.QueryTranslatorFactoryInitiator 
(assert (not (= var2839 null-var2352)))
(declare-const var1914 var3433) ; Statement: r3 := @parameter0: java.util.Map 
(assert (not (= var1914 null-var3433)))
(declare-const var1506 var1303) ; Statement: r0 := @parameter1: org.hibernate.service.spi.ServiceRegistryImplementor 
(assert (not (= var1506 null-var1303)))
(define-const var2359 var3326 (var3819_getService/-972330729 (cast-from-var1303-to-var3819 var1506) var693!class)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;") 
(define-const var1246 var693 (cast-from-var3326-to-var693 var2359)) ; Statement: r2 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r1 
(define-const var3001 var1416 (var3433_get/1088891777 var1914 (cast-from-String-to-var1416 "hibernate.query.factory_class"))) ; Statement: $r5 = interfaceinvoke r3.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.query.factory_class") 
(define-const var251 var2366 var2366-INSTANCE) ; Statement: $r4 = <org.hibernate.hql.internal.ast.ASTQueryTranslatorFactory: org.hibernate.hql.internal.ast.ASTQueryTranslatorFactory INSTANCE> 
(define-const var3370 var1416 (var693_resolveDefaultableStrategy/-420100722 var1246 var2549!class var3001 (cast-from-var2366-to-var1416 var251))) ; Statement: $r6 = interfaceinvoke r2.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/hql/spi/QueryTranslatorFactory;", $r5, $r4) 
(define-const var1420 var2549 (cast-from-var1416-to-var2549 var3370)) ; Statement: r7 = (org.hibernate.hql.spi.QueryTranslatorFactory) $r6 
(define-const var2878 var1048 var2352-log) ; Statement: $r9 = <org.hibernate.hql.internal.QueryTranslatorFactoryInitiator: org.hibernate.internal.CoreMessageLogger log> 
(define-const var3568 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3568)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3568!1 String)
(assert (= var3568!1 ""))
(assert true)
(define-const var1703 String (append/672562846 var3568!1 "QueryTranslatorFactory: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("QueryTranslatorFactory: ") 
(declare-const var3568!2 String)
(assert (= var3568!2 (str.++ var3568!1 "QueryTranslatorFactory: ")))
(assert true)
(define-const var1719 String (append/-1031950772 var1703 (cast-from-var2549-to-var1416 var1420))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1703!1 String)
(assert (str.prefixof var1703 var1703!1))
(assert true)
(define-const var919 String (toString/-2075883882 var1719)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1048_debug/-547240102 var2878 (cast-from-String-to-var1416 var919))) ; Statement: interfaceinvoke $r9.<org.hibernate.internal.CoreMessageLogger: void debug(java.lang.Object)>($r12) 

(declare-const var2878!1 var1048)
(declare-const var919!1 String)
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3819_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var1303-to-var3819=([org.hibernate.service.spi.ServiceRegistryImplementor], org.hibernate.service.ServiceRegistry), cast-from-var3326-to-var693=([org.hibernate.service.Service], org.hibernate.boot.registry.selector.spi.StrategySelector), var3433_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1416=([java.lang.String], java.lang.Object), var693_resolveDefaultableStrategy/-420100722=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var2366-to-var1416=([org.hibernate.hql.internal.ast.ASTQueryTranslatorFactory], java.lang.Object), cast-from-var1416-to-var2549=([java.lang.Object], org.hibernate.hql.spi.QueryTranslatorFactory), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2549-to-var1416=([org.hibernate.hql.spi.QueryTranslatorFactory], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1048_debug/-547240102=([org.hibernate.internal.CoreMessageLogger, java.lang.Object], void)}
; {var2352=org.hibernate.hql.internal.QueryTranslatorFactoryInitiator, var2839=r13, var3433=java.util.Map, var1914=r3, var1303=org.hibernate.service.spi.ServiceRegistryImplementor, var1506=r0, var3326=org.hibernate.service.Service, var3819=org.hibernate.service.ServiceRegistry, var693=org.hibernate.boot.registry.selector.spi.StrategySelector, var2359=$r1, var1246=r2, var1416=java.lang.Object, var3001=$r5, var2366=org.hibernate.hql.internal.ast.ASTQueryTranslatorFactory, var251=$r4, var2549=org.hibernate.hql.spi.QueryTranslatorFactory, var3370=$r6, var1420=r7, var1048=org.hibernate.internal.CoreMessageLogger, var2878=$r9, var3568=$r8, var1703=$r10, var1719=$r11, var919=$r12}
; {org.hibernate.hql.internal.QueryTranslatorFactoryInitiator=var2352, r13=var2839, java.util.Map=var3433, r3=var1914, org.hibernate.service.spi.ServiceRegistryImplementor=var1303, r0=var1506, org.hibernate.service.Service=var3326, org.hibernate.service.ServiceRegistry=var3819, org.hibernate.boot.registry.selector.spi.StrategySelector=var693, $r1=var2359, r2=var1246, java.lang.Object=var1416, $r5=var3001, org.hibernate.hql.internal.ast.ASTQueryTranslatorFactory=var2366, $r4=var251, org.hibernate.hql.spi.QueryTranslatorFactory=var2549, $r6=var3370, r7=var1420, org.hibernate.internal.CoreMessageLogger=var1048, $r9=var2878, $r8=var3568, $r10=var1703, $r11=var1719, $r12=var919}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.hibernate.hql.internal.QueryTranslatorFactoryInitiator;	r3 := @parameter0: java.util.Map;	r0 := @parameter1: org.hibernate.service.spi.ServiceRegistryImplementor;	$r1 = interfaceinvoke r0.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;");	r2 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r1;	$r5 = interfaceinvoke r3.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.query.factory_class");	$r4 = <org.hibernate.hql.internal.ast.ASTQueryTranslatorFactory: org.hibernate.hql.internal.ast.ASTQueryTranslatorFactory INSTANCE>;	$r6 = interfaceinvoke r2.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/hql/spi/QueryTranslatorFactory;", $r5, $r4);	r7 = (org.hibernate.hql.spi.QueryTranslatorFactory) $r6;	$r9 = <org.hibernate.hql.internal.QueryTranslatorFactoryInitiator: org.hibernate.internal.CoreMessageLogger log>;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("QueryTranslatorFactory: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r9.<org.hibernate.internal.CoreMessageLogger: void debug(java.lang.Object)>($r12);	return r7
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3131-init () (Array Int var3131))
(declare-fun cast-from-String-to-var3131 (String) var3131)
(declare-fun String_format/1339386452 (String (Array Int var3131)) String)
(declare-const null-__Array__Int__var3131__ (Array Int var3131))
(define-const var2656 (Array Int var3131) arr-var3131-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(declare-const var2656!1 (Array Int var3131))
(assert (not (= var2656!1 null-__Array__Int__var3131__)))
(assert (= (select var2656!1 0) (cast-from-String-to-var3131 "hibernate.cache.region.factory_class"))) ; Statement: $r0[0] = "hibernate.cache.region.factory_class" 
(declare-const var2656!2 (Array Int var3131))
(assert (not (= var2656!2 null-__Array__Int__var3131__)))
(assert (= (select var2656!2 1) (cast-from-String-to-var3131 "hibernate.cache.region.factory_class"))) ; Statement: $r0[1] = "hibernate.cache.region.factory_class" 
(define-const var1887 String (String_format/1339386452 "Second-level cache is used in the application, but property %s is not given; please either disable second level cache or set correct region factory using the %s setting and make sure the second level cache provider (hibernate-infinispan, e.g.) is available on the classpath." var2656!2)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Second-level cache is used in the application, but property %s is not given; please either disable second level cache or set correct region factory using the %s setting and make sure the second level cache provider (hibernate-infinispan, e.g.) is available on the classpath.", $r0) 
(define-const var2779 String var1887) ; Statement: <org.hibernate.cache.NoCacheRegionFactoryAvailableException: java.lang.String MSG> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3131-init=([], java.lang.Object[]), cast-from-String-to-var3131=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3131=java.lang.Object, var2656=$r0, var1887=$r1, var2779=<org.hibernate.cache.NoCacheRegionFactoryAvailableException: java.lang.String MSG>}
; {java.lang.Object=var3131, $r0=var2656, $r1=var1887, <org.hibernate.cache.NoCacheRegionFactoryAvailableException: java.lang.String MSG>=var2779}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts $r0 = newarray (java.lang.Object)[2];	$r0[0] = "hibernate.cache.region.factory_class";	$r0[1] = "hibernate.cache.region.factory_class";	$r1 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Second-level cache is used in the application, but property %s is not given; please either disable second level cache or set correct region factory using the %s setting and make sure the second level cache provider (hibernate-infinispan, e.g.) is available on the classpath.", $r0);	<org.hibernate.cache.NoCacheRegionFactoryAvailableException: java.lang.String MSG> = $r1;	return
;block_num 1
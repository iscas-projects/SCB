(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1346 0)
(declare-sort var1918 0)
(declare-sort var352 0)
(declare-sort var714 0)
(declare-sort var2656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1918!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var1346) Bool)
(declare-fun cast-from-var1346-to-var1918 (var1346) var1918)
(declare-fun var352-init () var352)
(declare-fun getClazz/-1483580069 (var1918) String)
(declare-fun getUsage/-958132521 (var1918) var2656)
(declare-fun value/1380821469 (var2656) String)
(declare-fun getRegion/1132158803 (var1918) String)
(declare-fun getInclude/-725789813 (var1918) String)
(declare-fun <init>/-1938880060 (var352 var714 String String String Bool) void)
(declare-const null-var1346 var1346)
(declare-const var714-ENTITY var714)
(declare-const var2051 var1346) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2051 null-var1346)))
(define-const var3374 ClassObject var1918!class) ; Statement: $r1 = class "Lorg/hibernate/boot/jaxb/cfg/spi/JaxbCfgEntityCacheType;" 
(assert true)
(define-const var2394 Bool (isInstance/451912363 var3374 var2051)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto r17 = (org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType) r0 
(assert (not (= (ite var2394 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3740 var1918 (cast-from-var1346-to-var1918 var2051)) ; Statement: r16 = (org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType) r0 
(define-const var817 var352 var352-init) ; Statement: $r8 = new org.hibernate.boot.CacheRegionDefinition 
(define-const var935 var714 var714-ENTITY) ; Statement: $r9 = <org.hibernate.boot.CacheRegionDefinition$CacheRegionType: org.hibernate.boot.CacheRegionDefinition$CacheRegionType ENTITY> 
(assert true)
(define-const var3688 String (getClazz/-1483580069 var3740)) ; Statement: $r15 = virtualinvoke r16.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType: java.lang.String getClazz()>() 
(assert true)
(define-const var3545 var2656 (getUsage/-958132521 var3740)) ; Statement: $r10 = virtualinvoke r16.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType: org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum getUsage()>() 
(assert true)
(define-const var874 String (value/1380821469 var3545)) ; Statement: $r14 = virtualinvoke $r10.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum: java.lang.String value()>() 
(assert true)
(define-const var34 String (getRegion/1132158803 var3740)) ; Statement: $r13 = virtualinvoke r16.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType: java.lang.String getRegion()>() 
(define-const var2911 String "all") ; Statement: $r12 = "all" 
(assert true)
(define-const var2524 String (getInclude/-725789813 var3740)) ; Statement: $r11 = virtualinvoke r16.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType: java.lang.String getInclude()>() 
(assert true)
(define-const var3214 Bool (= var2911 var2524)) ; Statement: $z1 = virtualinvoke $r12.<java.lang.String: boolean equals(java.lang.Object)>($r11) 
(assert true)
;(assert (<init>/-1938880060 var817 var935 var3688 var874 var34 var3214)) ; Statement: specialinvoke $r8.<org.hibernate.boot.CacheRegionDefinition: void <init>(org.hibernate.boot.CacheRegionDefinition$CacheRegionType,java.lang.String,java.lang.String,java.lang.String,boolean)>($r9, $r15, $r14, $r13, $z1) 

(declare-const var817!1 var352)
(declare-const var935!1 var714)
(declare-const var3688!1 String)
(declare-const var874!1 String)
(declare-const var34!1 String)
(declare-const var3214!1 Bool)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var1346-to-var1918=([java.lang.Object], org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType), var352-init=([], org.hibernate.boot.CacheRegionDefinition), getClazz/-1483580069=([org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType], java.lang.String), getUsage/-958132521=([org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType], org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum), value/1380821469=([org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum], java.lang.String), getRegion/1132158803=([org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType], java.lang.String), getInclude/-725789813=([org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType], java.lang.String), <init>/-1938880060=([org.hibernate.boot.CacheRegionDefinition, org.hibernate.boot.CacheRegionDefinition$CacheRegionType, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var1346=java.lang.Object, var2051=r0, var1918=org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType, var3374=$r1, var2394=$z0, var3740=r16, var352=org.hibernate.boot.CacheRegionDefinition, var817=$r8, var714=org.hibernate.boot.CacheRegionDefinition$CacheRegionType, var935=$r9, var3688=$r15, var2656=org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum, var3545=$r10, var874=$r14, var34=$r13, var2911=$r12, var2524=$r11, var3214=$z1}
; {java.lang.Object=var1346, r0=var2051, org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType=var1918, $r1=var3374, $z0=var2394, r16=var3740, org.hibernate.boot.CacheRegionDefinition=var352, $r8=var817, org.hibernate.boot.CacheRegionDefinition$CacheRegionType=var714, $r9=var935, $r15=var3688, org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum=var2656, $r10=var3545, $r14=var874, $r13=var34, $r12=var2911, $r11=var2524, $z1=var3214}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	$r1 = class "Lorg/hibernate/boot/jaxb/cfg/spi/JaxbCfgEntityCacheType;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 == 0 goto r17 = (org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType) r0;	r16 = (org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType) r0;	$r8 = new org.hibernate.boot.CacheRegionDefinition;	$r9 = <org.hibernate.boot.CacheRegionDefinition$CacheRegionType: org.hibernate.boot.CacheRegionDefinition$CacheRegionType ENTITY>;	$r15 = virtualinvoke r16.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType: java.lang.String getClazz()>();	$r10 = virtualinvoke r16.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType: org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum getUsage()>();	$r14 = virtualinvoke $r10.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum: java.lang.String value()>();	$r13 = virtualinvoke r16.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType: java.lang.String getRegion()>();	$r12 = "all";	$r11 = virtualinvoke r16.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType: java.lang.String getInclude()>();	$z1 = virtualinvoke $r12.<java.lang.String: boolean equals(java.lang.Object)>($r11);	specialinvoke $r8.<org.hibernate.boot.CacheRegionDefinition: void <init>(org.hibernate.boot.CacheRegionDefinition$CacheRegionType,java.lang.String,java.lang.String,java.lang.String,boolean)>($r9, $r15, $r14, $r13, $z1);	return $r8
;block_num 2
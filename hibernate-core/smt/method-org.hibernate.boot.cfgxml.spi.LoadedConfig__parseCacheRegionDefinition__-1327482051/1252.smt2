(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1979 0)
(declare-sort var1945 0)
(declare-sort var989 0)
(declare-sort var3685 0)
(declare-sort var3377 0)
(declare-sort var2469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1945!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var1979) Bool)
(declare-fun cast-from-var1979-to-var989 (var1979) var989)
(declare-fun var3685-init () var3685)
(declare-fun getCollection/809186980 (var989) String)
(declare-fun getUsage/1928306450 (var989) var2469)
(declare-fun value/1380821469 (var2469) String)
(declare-fun getRegion/958656782 (var989) String)
(declare-fun <init>/-1938880060 (var3685 var3377 String String String Bool) void)
(declare-const null-var1979 var1979)
(declare-const var3377-COLLECTION var3377)
(declare-const var3268 var1979) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3268 null-var1979)))
(define-const var1125 ClassObject var1945!class) ; Statement: $r1 = class "Lorg/hibernate/boot/jaxb/cfg/spi/JaxbCfgEntityCacheType;" 
(assert true)
(define-const var1297 Bool (isInstance/451912363 var1125 var3268)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto r17 = (org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType) r0 
(assert (= (ite var1297 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1663 var989 (cast-from-var1979-to-var989 var3268)) ; Statement: r17 = (org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType) r0 
(define-const var560 var3685 var3685-init) ; Statement: $r2 = new org.hibernate.boot.CacheRegionDefinition 
(define-const var3831 var3377 var3377-COLLECTION) ; Statement: $r3 = <org.hibernate.boot.CacheRegionDefinition$CacheRegionType: org.hibernate.boot.CacheRegionDefinition$CacheRegionType COLLECTION> 
(assert true)
(define-const var3918 String (getCollection/809186980 var1663)) ; Statement: $r7 = virtualinvoke r17.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType: java.lang.String getCollection()>() 
(assert true)
(define-const var211 var2469 (getUsage/1928306450 var1663)) ; Statement: $r4 = virtualinvoke r17.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType: org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum getUsage()>() 
(assert true)
(define-const var1010 String (value/1380821469 var211)) ; Statement: $r6 = virtualinvoke $r4.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum: java.lang.String value()>() 
(assert true)
(define-const var3472 String (getRegion/958656782 var1663)) ; Statement: $r5 = virtualinvoke r17.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType: java.lang.String getRegion()>() 
(assert true)
;(assert (<init>/-1938880060 var560 var3831 var3918 var1010 var3472 (ite (= 1 0) true false))) ; Statement: specialinvoke $r2.<org.hibernate.boot.CacheRegionDefinition: void <init>(org.hibernate.boot.CacheRegionDefinition$CacheRegionType,java.lang.String,java.lang.String,java.lang.String,boolean)>($r3, $r7, $r6, $r5, 0) 

(declare-const var560!1 var3685)
(declare-const var3831!1 var3377)
(declare-const var3918!1 String)
(declare-const var1010!1 String)
(declare-const var3472!1 String)
(declare-const var2089 Int)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var1979-to-var989=([java.lang.Object], org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType), var3685-init=([], org.hibernate.boot.CacheRegionDefinition), getCollection/809186980=([org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType], java.lang.String), getUsage/1928306450=([org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType], org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum), value/1380821469=([org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum], java.lang.String), getRegion/958656782=([org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType], java.lang.String), <init>/-1938880060=([org.hibernate.boot.CacheRegionDefinition, org.hibernate.boot.CacheRegionDefinition$CacheRegionType, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var1979=java.lang.Object, var3268=r0, var1945=org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType, var1125=$r1, var1297=$z0, var989=org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType, var1663=r17, var3685=org.hibernate.boot.CacheRegionDefinition, var560=$r2, var3377=org.hibernate.boot.CacheRegionDefinition$CacheRegionType, var3831=$r3, var3918=$r7, var2469=org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum, var211=$r4, var1010=$r6, var3472=$r5, var2089=0}
; {java.lang.Object=var1979, r0=var3268, org.hibernate.boot.jaxb.cfg.spi.JaxbCfgEntityCacheType=var1945, $r1=var1125, $z0=var1297, org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType=var989, r17=var1663, org.hibernate.boot.CacheRegionDefinition=var3685, $r2=var560, org.hibernate.boot.CacheRegionDefinition$CacheRegionType=var3377, $r3=var3831, $r7=var3918, org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum=var2469, $r4=var211, $r6=var1010, $r5=var3472, 0=var2089}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	$r1 = class "Lorg/hibernate/boot/jaxb/cfg/spi/JaxbCfgEntityCacheType;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 == 0 goto r17 = (org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType) r0;	r17 = (org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType) r0;	$r2 = new org.hibernate.boot.CacheRegionDefinition;	$r3 = <org.hibernate.boot.CacheRegionDefinition$CacheRegionType: org.hibernate.boot.CacheRegionDefinition$CacheRegionType COLLECTION>;	$r7 = virtualinvoke r17.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType: java.lang.String getCollection()>();	$r4 = virtualinvoke r17.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType: org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum getUsage()>();	$r6 = virtualinvoke $r4.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCacheUsageEnum: java.lang.String value()>();	$r5 = virtualinvoke r17.<org.hibernate.boot.jaxb.cfg.spi.JaxbCfgCollectionCacheType: java.lang.String getRegion()>();	specialinvoke $r2.<org.hibernate.boot.CacheRegionDefinition: void <init>(org.hibernate.boot.CacheRegionDefinition$CacheRegionType,java.lang.String,java.lang.String,java.lang.String,boolean)>($r3, $r7, $r6, $r5, 0);	return $r2
;block_num 2
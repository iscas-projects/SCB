(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var48 0)
(declare-sort var628 0)
(declare-sort var196 0)
(declare-sort var53 0)
(declare-sort var2288 0)
(declare-sort var1608 0)
(declare-sort var492 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var196_getMetadataCollector/-129185252 (var196) var53)
(declare-fun var196_getBootstrapContext/734182883 (var196) var2288)
(declare-fun var2288_getReflectionManager/292253152 (var2288) var1608)
(declare-fun var1608_toClass/1981099912 (var1608 var48) ClassObject)
(declare-fun var53_getMappedSuperclass/1151228640 (var53 ClassObject) var492)
(declare-const null-var48 var48)
(declare-const null-var628 var628)
(declare-const null-var196 var196)
(declare-const var3935 var48) ; Statement: r0 := @parameter0: org.hibernate.annotations.common.reflection.XClass 
(assert (not (= var3935 null-var48)))
(declare-const var900 var628) ; Statement: r7 := @parameter1: java.util.Map 
(assert (not (= var900 null-var628)))
(declare-const var777 var196) ; Statement: r1 := @parameter2: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var777 null-var196)))
(define-const var1413 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
 ; Statement: if r0 == null goto (branch) 
(assert (= var3935 null-var48)) ; Cond: r0 == null 
 ; Statement: if z1 == 0 goto return null 
(assert (not (= (ite var1413 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var1925 var53 (var196_getMetadataCollector/-129185252 var777)) ; Statement: $r5 = interfaceinvoke r1.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var101 var2288 (var196_getBootstrapContext/734182883 var777)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.BootstrapContext getBootstrapContext()>() 
(define-const var1308 var1608 (var2288_getReflectionManager/292253152 var101)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.boot.spi.BootstrapContext: org.hibernate.annotations.common.reflection.ReflectionManager getReflectionManager()>() 
(define-const var610 ClassObject (var1608_toClass/1981099912 var1308 var3935)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.annotations.common.reflection.ReflectionManager: java.lang.Class toClass(org.hibernate.annotations.common.reflection.XClass)>(r0) 
(define-const var3881 var492 (var53_getMappedSuperclass/1151228640 var1925 var610)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.MappedSuperclass getMappedSuperclass(java.lang.Class)>($r4) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var196_getMetadataCollector/-129185252=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.spi.InFlightMetadataCollector), var196_getBootstrapContext/734182883=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.spi.BootstrapContext), var2288_getReflectionManager/292253152=([org.hibernate.boot.spi.BootstrapContext], org.hibernate.annotations.common.reflection.ReflectionManager), var1608_toClass/1981099912=([org.hibernate.annotations.common.reflection.ReflectionManager, org.hibernate.annotations.common.reflection.XClass], java.lang.Class), var53_getMappedSuperclass/1151228640=([org.hibernate.boot.spi.InFlightMetadataCollector, java.lang.Class], org.hibernate.mapping.MappedSuperclass)}
; {var48=org.hibernate.annotations.common.reflection.XClass, var3935=r0, var628=java.util.Map, var900=r7, var196=org.hibernate.boot.spi.MetadataBuildingContext, var777=r1, var1413=z1, var53=org.hibernate.boot.spi.InFlightMetadataCollector, var1925=$r5, var2288=org.hibernate.boot.spi.BootstrapContext, var101=$r2, var1608=org.hibernate.annotations.common.reflection.ReflectionManager, var1308=$r3, var610=$r4, var492=org.hibernate.mapping.MappedSuperclass, var3881=$r6}
; {org.hibernate.annotations.common.reflection.XClass=var48, r0=var3935, java.util.Map=var628, r7=var900, org.hibernate.boot.spi.MetadataBuildingContext=var196, r1=var777, z1=var1413, org.hibernate.boot.spi.InFlightMetadataCollector=var53, $r5=var1925, org.hibernate.boot.spi.BootstrapContext=var2288, $r2=var101, org.hibernate.annotations.common.reflection.ReflectionManager=var1608, $r3=var1308, $r4=var610, org.hibernate.mapping.MappedSuperclass=var492, $r6=var3881}
;seq 
;cnt {}
;stmts r0 := @parameter0: org.hibernate.annotations.common.reflection.XClass;	r7 := @parameter1: java.util.Map;	r1 := @parameter2: org.hibernate.boot.spi.MetadataBuildingContext;	z1 = 0;	if r0 == null goto (branch);	if z1 == 0 goto return null;	$r5 = interfaceinvoke r1.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r2 = interfaceinvoke r1.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.BootstrapContext getBootstrapContext()>();	$r3 = interfaceinvoke $r2.<org.hibernate.boot.spi.BootstrapContext: org.hibernate.annotations.common.reflection.ReflectionManager getReflectionManager()>();	$r4 = interfaceinvoke $r3.<org.hibernate.annotations.common.reflection.ReflectionManager: java.lang.Class toClass(org.hibernate.annotations.common.reflection.XClass)>(r0);	$r6 = interfaceinvoke $r5.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.MappedSuperclass getMappedSuperclass(java.lang.Class)>($r4);	return $r6
;block_num 3
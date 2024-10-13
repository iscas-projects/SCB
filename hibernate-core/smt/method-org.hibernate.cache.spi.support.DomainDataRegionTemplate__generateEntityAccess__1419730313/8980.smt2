(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1678 0)
(declare-sort var716 0)
(declare-sort var733 0)
(declare-sort var54 0)
(declare-sort var2026 0)
(declare-sort var1389 0)
(declare-sort var1933 0)
(declare-sort var3000 0)
(declare-sort var3044 0)
(declare-sort var1473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var54_getNavigableRole/1013081629 (var54) var733)
(declare-fun cast-from-var716-to-var54 (var716) var54)
(declare-fun var54_getAccessType/-737095468 (var54) var2026)
(declare-fun getExternalName/1590936462 (var2026) String)
(declare-fun debugf/47384645 (var1389 String var1933 var1933) void)
(declare-fun cast-from-String-to-var1933 (String) var1933)
(declare-fun cast-from-var733-to-var1933 (var733) var1933)
(declare-fun ordinal/-291641772 (var3044) Int)
(declare-fun cast-from-var2026-to-var3044 (var2026) var3044)
(declare-fun var1473-init () var1473)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1933) String)
(declare-fun cast-from-var2026-to-var1933 (var2026) var1933)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1473 String) void)
(declare-const null-var1678 var1678)
(declare-const null-var716 var716)
(declare-const var1678-log var1389)
(declare-const var3000-$SwitchMap$org$hibernate$cache$spi$access$AccessType (Array Int Int))
(declare-const var3004 var1678) ; Statement: r6 := @this: org.hibernate.cache.spi.support.DomainDataRegionTemplate 
(assert (not (= var3004 null-var1678)))
(declare-const var3825 var716) ; Statement: r0 := @parameter0: org.hibernate.cache.cfg.spi.EntityDataCachingConfig 
(assert (not (= var3825 null-var716)))
(define-const var3454 var733 (var54_getNavigableRole/1013081629 (cast-from-var716-to-var54 var3825))) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.cache.cfg.spi.EntityDataCachingConfig: org.hibernate.metamodel.model.domain.NavigableRole getNavigableRole()>() 
(define-const var755 var2026 (var54_getAccessType/-737095468 (cast-from-var716-to-var54 var3825))) ; Statement: r2 = interfaceinvoke r0.<org.hibernate.cache.cfg.spi.EntityDataCachingConfig: org.hibernate.cache.spi.access.AccessType getAccessType()>() 
(define-const var305 var1389 var1678-log) ; Statement: $r3 = <org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.jboss.logging.Logger log> 
(assert true)
(define-const var287 String (getExternalName/1590936462 var755)) ; Statement: $r4 = virtualinvoke r2.<org.hibernate.cache.spi.access.AccessType: java.lang.String getExternalName()>() 
(assert true)
;(assert (debugf/47384645 var305 "Generating entity cache access [%s] : %s" (cast-from-String-to-var1933 var287) (cast-from-var733-to-var1933 var3454))) ; Statement: virtualinvoke $r3.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("Generating entity cache access [%s] : %s", $r4, r1) 

(declare-const var305!1 var1389)
(declare-const var205 String)
(declare-const var287!1 String)
(declare-const var3454!1 var733)
(define-const var2854 (Array Int Int) var3000-$SwitchMap$org$hibernate$cache$spi$access$AccessType) ; Statement: $r5 = <org.hibernate.cache.spi.support.DomainDataRegionTemplate$1: int[] $SwitchMap$org$hibernate$cache$spi$access$AccessType> 
(assert true)
(define-const var2493 Int (ordinal/-291641772 (cast-from-var2026-to-var3044 var755))) ; Statement: $i0 = virtualinvoke r2.<org.hibernate.cache.spi.access.AccessType: int ordinal()>() 
(define-const var655 Int (select var2854 var2493)) ; Statement: $i1 = $r5[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r10 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.EntityDataAccess generateReadOnlyEntityAccess(org.hibernate.cache.cfg.spi.EntityDataCachingConfig)>(r0);     case 2: goto $r9 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.EntityDataAccess generateReadWriteEntityAccess(org.hibernate.cache.cfg.spi.EntityDataCachingConfig)>(r0);     case 3: goto $r8 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.EntityDataAccess generateNonStrictReadWriteEntityAccess(org.hibernate.cache.cfg.spi.EntityDataCachingConfig)>(r0);     case 4: goto $r7 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.EntityDataAccess generateTransactionalEntityDataAccess(org.hibernate.cache.cfg.spi.EntityDataCachingConfig)>(r0);     default: goto $r11 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var655 4)) (and (not (= var655 3)) (and (not (= var655 2)) (and (not (= var655 1)) true))))) ; Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var2971 var1473 var1473-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var438 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var438)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var438!1 String)
(assert (= var438!1 ""))
(assert true)
(define-const var262 String (append/672562846 var438!1 "Unrecognized cache AccessType - ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized cache AccessType - ") 
(declare-const var438!2 String)
(assert (= var438!2 (str.++ var438!1 "Unrecognized cache AccessType - ")))
(assert true)
(define-const var3930 String (append/-1031950772 var262 (cast-from-var2026-to-var1933 var755))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var262!1 String)
(assert (str.prefixof var262 var262!1))
(assert true)
(define-const var1955 String (toString/-2075883882 var3930)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2971 var1955)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var2971!1 var1473)
(declare-const var1955!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var54_getNavigableRole/1013081629=([org.hibernate.cache.cfg.spi.DomainDataCachingConfig], org.hibernate.metamodel.model.domain.NavigableRole), cast-from-var716-to-var54=([org.hibernate.cache.cfg.spi.EntityDataCachingConfig], org.hibernate.cache.cfg.spi.DomainDataCachingConfig), var54_getAccessType/-737095468=([org.hibernate.cache.cfg.spi.DomainDataCachingConfig], org.hibernate.cache.spi.access.AccessType), getExternalName/1590936462=([org.hibernate.cache.spi.access.AccessType], java.lang.String), debugf/47384645=([org.jboss.logging.Logger, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-String-to-var1933=([java.lang.String], java.lang.Object), cast-from-var733-to-var1933=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.Object), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2026-to-var3044=([org.hibernate.cache.spi.access.AccessType], java.lang.Enum), var1473-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2026-to-var1933=([org.hibernate.cache.spi.access.AccessType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1678=org.hibernate.cache.spi.support.DomainDataRegionTemplate, var3004=r6, var716=org.hibernate.cache.cfg.spi.EntityDataCachingConfig, var3825=r0, var733=org.hibernate.metamodel.model.domain.NavigableRole, var54=org.hibernate.cache.cfg.spi.DomainDataCachingConfig, var3454=r1, var2026=org.hibernate.cache.spi.access.AccessType, var755=r2, var1389=org.jboss.logging.Logger, var305=$r3, var287=$r4, var1933=java.lang.Object, var205="Generating entity cache access [%s] : %s", var3000=org.hibernate.cache.spi.support.DomainDataRegionTemplate$1, var2854=$r5, var3044=java.lang.Enum, var2493=$i0, var655=$i1, var1473=java.lang.IllegalArgumentException, var2971=$r11, var438=$r12, var262=$r13, var3930=$r14, var1955=$r15}
; {org.hibernate.cache.spi.support.DomainDataRegionTemplate=var1678, r6=var3004, org.hibernate.cache.cfg.spi.EntityDataCachingConfig=var716, r0=var3825, org.hibernate.metamodel.model.domain.NavigableRole=var733, org.hibernate.cache.cfg.spi.DomainDataCachingConfig=var54, r1=var3454, org.hibernate.cache.spi.access.AccessType=var2026, r2=var755, org.jboss.logging.Logger=var1389, $r3=var305, $r4=var287, java.lang.Object=var1933, "Generating entity cache access [%s] : %s"=var205, org.hibernate.cache.spi.support.DomainDataRegionTemplate$1=var3000, $r5=var2854, java.lang.Enum=var3044, $i0=var2493, $i1=var655, java.lang.IllegalArgumentException=var1473, $r11=var2971, $r12=var438, $r13=var262, $r14=var3930, $r15=var1955}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.cache.spi.support.DomainDataRegionTemplate;	r0 := @parameter0: org.hibernate.cache.cfg.spi.EntityDataCachingConfig;	r1 = interfaceinvoke r0.<org.hibernate.cache.cfg.spi.EntityDataCachingConfig: org.hibernate.metamodel.model.domain.NavigableRole getNavigableRole()>();	r2 = interfaceinvoke r0.<org.hibernate.cache.cfg.spi.EntityDataCachingConfig: org.hibernate.cache.spi.access.AccessType getAccessType()>();	$r3 = <org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.jboss.logging.Logger log>;	$r4 = virtualinvoke r2.<org.hibernate.cache.spi.access.AccessType: java.lang.String getExternalName()>();	virtualinvoke $r3.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("Generating entity cache access [%s] : %s", $r4, r1);	$r5 = <org.hibernate.cache.spi.support.DomainDataRegionTemplate$1: int[] $SwitchMap$org$hibernate$cache$spi$access$AccessType>;	$i0 = virtualinvoke r2.<org.hibernate.cache.spi.access.AccessType: int ordinal()>();	$i1 = $r5[$i0];	tableswitch($i1) {     case 1: goto $r10 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.EntityDataAccess generateReadOnlyEntityAccess(org.hibernate.cache.cfg.spi.EntityDataCachingConfig)>(r0);     case 2: goto $r9 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.EntityDataAccess generateReadWriteEntityAccess(org.hibernate.cache.cfg.spi.EntityDataCachingConfig)>(r0);     case 3: goto $r8 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.EntityDataAccess generateNonStrictReadWriteEntityAccess(org.hibernate.cache.cfg.spi.EntityDataCachingConfig)>(r0);     case 4: goto $r7 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.EntityDataAccess generateTransactionalEntityDataAccess(org.hibernate.cache.cfg.spi.EntityDataCachingConfig)>(r0);     default: goto $r11 = new java.lang.IllegalArgumentException; };	$r11 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized cache AccessType - ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r11
;block_num 2
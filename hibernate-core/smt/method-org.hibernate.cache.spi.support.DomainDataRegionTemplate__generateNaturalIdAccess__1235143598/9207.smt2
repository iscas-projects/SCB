(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2758 0)
(declare-sort var3096 0)
(declare-sort var867 0)
(declare-sort var2801 0)
(declare-sort var73 0)
(declare-sort var296 0)
(declare-sort var409 0)
(declare-sort var2946 0)
(declare-sort var1867 0)
(declare-sort var1122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2801_getNavigableRole/1013081629 (var2801) var867)
(declare-fun cast-from-var3096-to-var2801 (var3096) var2801)
(declare-fun var2801_getAccessType/-737095468 (var2801) var73)
(declare-fun getExternalName/1590936462 (var73) String)
(declare-fun debugf/47384645 (var296 String var409 var409) void)
(declare-fun cast-from-String-to-var409 (String) var409)
(declare-fun cast-from-var867-to-var409 (var867) var409)
(declare-fun ordinal/-291641772 (var1867) Int)
(declare-fun cast-from-var73-to-var1867 (var73) var1867)
(declare-fun var1122-init () var1122)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var409) String)
(declare-fun cast-from-var73-to-var409 (var73) var409)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1122 String) void)
(declare-const null-var2758 var2758)
(declare-const null-var3096 var3096)
(declare-const var2758-log var296)
(declare-const var2946-$SwitchMap$org$hibernate$cache$spi$access$AccessType (Array Int Int))
(declare-const var3185 var2758) ; Statement: r6 := @this: org.hibernate.cache.spi.support.DomainDataRegionTemplate 
(assert (not (= var3185 null-var2758)))
(declare-const var1568 var3096) ; Statement: r0 := @parameter0: org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig 
(assert (not (= var1568 null-var3096)))
(define-const var593 var867 (var2801_getNavigableRole/1013081629 (cast-from-var3096-to-var2801 var1568))) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig: org.hibernate.metamodel.model.domain.NavigableRole getNavigableRole()>() 
(define-const var2222 var73 (var2801_getAccessType/-737095468 (cast-from-var3096-to-var2801 var1568))) ; Statement: r2 = interfaceinvoke r0.<org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig: org.hibernate.cache.spi.access.AccessType getAccessType()>() 
(define-const var3692 var296 var2758-log) ; Statement: $r3 = <org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.jboss.logging.Logger log> 
(assert true)
(define-const var313 String (getExternalName/1590936462 var2222)) ; Statement: $r4 = virtualinvoke r2.<org.hibernate.cache.spi.access.AccessType: java.lang.String getExternalName()>() 
(assert true)
;(assert (debugf/47384645 var3692 "Generating entity natural-id access [%s] : %s" (cast-from-String-to-var409 var313) (cast-from-var867-to-var409 var593))) ; Statement: virtualinvoke $r3.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("Generating entity natural-id access [%s] : %s", $r4, r1) 

(declare-const var3692!1 var296)
(declare-const var579 String)
(declare-const var313!1 String)
(declare-const var593!1 var867)
(define-const var2584 (Array Int Int) var2946-$SwitchMap$org$hibernate$cache$spi$access$AccessType) ; Statement: $r5 = <org.hibernate.cache.spi.support.DomainDataRegionTemplate$1: int[] $SwitchMap$org$hibernate$cache$spi$access$AccessType> 
(assert true)
(define-const var3171 Int (ordinal/-291641772 (cast-from-var73-to-var1867 var2222))) ; Statement: $i0 = virtualinvoke r2.<org.hibernate.cache.spi.access.AccessType: int ordinal()>() 
(define-const var949 Int (select var2584 var3171)) ; Statement: $i1 = $r5[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r10 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.NaturalIdDataAccess generateReadOnlyNaturalIdAccess(org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig)>(r0);     case 2: goto $r9 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.NaturalIdDataAccess generateReadWriteNaturalIdAccess(org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig)>(r0);     case 3: goto $r8 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.NaturalIdDataAccess generateNonStrictReadWriteNaturalIdAccess(org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig)>(r0);     case 4: goto $r7 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.NaturalIdDataAccess generateTransactionalNaturalIdDataAccess(org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig)>(r0);     default: goto $r11 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var949 4)) (and (not (= var949 3)) (and (not (= var949 2)) (and (not (= var949 1)) true))))) ; Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var3819 var1122 var1122-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var3029 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3029)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3029!1 String)
(assert (= var3029!1 ""))
(assert true)
(define-const var1762 String (append/672562846 var3029!1 "Unrecognized cache AccessType - ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized cache AccessType - ") 
(declare-const var3029!2 String)
(assert (= var3029!2 (str.++ var3029!1 "Unrecognized cache AccessType - ")))
(assert true)
(define-const var2048 String (append/-1031950772 var1762 (cast-from-var73-to-var409 var2222))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1762!1 String)
(assert (str.prefixof var1762 var1762!1))
(assert true)
(define-const var2057 String (toString/-2075883882 var2048)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3819 var2057)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var3819!1 var1122)
(declare-const var2057!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2801_getNavigableRole/1013081629=([org.hibernate.cache.cfg.spi.DomainDataCachingConfig], org.hibernate.metamodel.model.domain.NavigableRole), cast-from-var3096-to-var2801=([org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig], org.hibernate.cache.cfg.spi.DomainDataCachingConfig), var2801_getAccessType/-737095468=([org.hibernate.cache.cfg.spi.DomainDataCachingConfig], org.hibernate.cache.spi.access.AccessType), getExternalName/1590936462=([org.hibernate.cache.spi.access.AccessType], java.lang.String), debugf/47384645=([org.jboss.logging.Logger, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-String-to-var409=([java.lang.String], java.lang.Object), cast-from-var867-to-var409=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.Object), ordinal/-291641772=([java.lang.Enum], int), cast-from-var73-to-var1867=([org.hibernate.cache.spi.access.AccessType], java.lang.Enum), var1122-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var73-to-var409=([org.hibernate.cache.spi.access.AccessType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2758=org.hibernate.cache.spi.support.DomainDataRegionTemplate, var3185=r6, var3096=org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig, var1568=r0, var867=org.hibernate.metamodel.model.domain.NavigableRole, var2801=org.hibernate.cache.cfg.spi.DomainDataCachingConfig, var593=r1, var73=org.hibernate.cache.spi.access.AccessType, var2222=r2, var296=org.jboss.logging.Logger, var3692=$r3, var313=$r4, var409=java.lang.Object, var579="Generating entity natural-id access [%s] : %s", var2946=org.hibernate.cache.spi.support.DomainDataRegionTemplate$1, var2584=$r5, var1867=java.lang.Enum, var3171=$i0, var949=$i1, var1122=java.lang.IllegalArgumentException, var3819=$r11, var3029=$r12, var1762=$r13, var2048=$r14, var2057=$r15}
; {org.hibernate.cache.spi.support.DomainDataRegionTemplate=var2758, r6=var3185, org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig=var3096, r0=var1568, org.hibernate.metamodel.model.domain.NavigableRole=var867, org.hibernate.cache.cfg.spi.DomainDataCachingConfig=var2801, r1=var593, org.hibernate.cache.spi.access.AccessType=var73, r2=var2222, org.jboss.logging.Logger=var296, $r3=var3692, $r4=var313, java.lang.Object=var409, "Generating entity natural-id access [%s] : %s"=var579, org.hibernate.cache.spi.support.DomainDataRegionTemplate$1=var2946, $r5=var2584, java.lang.Enum=var1867, $i0=var3171, $i1=var949, java.lang.IllegalArgumentException=var1122, $r11=var3819, $r12=var3029, $r13=var1762, $r14=var2048, $r15=var2057}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.cache.spi.support.DomainDataRegionTemplate;	r0 := @parameter0: org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig;	r1 = interfaceinvoke r0.<org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig: org.hibernate.metamodel.model.domain.NavigableRole getNavigableRole()>();	r2 = interfaceinvoke r0.<org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig: org.hibernate.cache.spi.access.AccessType getAccessType()>();	$r3 = <org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.jboss.logging.Logger log>;	$r4 = virtualinvoke r2.<org.hibernate.cache.spi.access.AccessType: java.lang.String getExternalName()>();	virtualinvoke $r3.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("Generating entity natural-id access [%s] : %s", $r4, r1);	$r5 = <org.hibernate.cache.spi.support.DomainDataRegionTemplate$1: int[] $SwitchMap$org$hibernate$cache$spi$access$AccessType>;	$i0 = virtualinvoke r2.<org.hibernate.cache.spi.access.AccessType: int ordinal()>();	$i1 = $r5[$i0];	tableswitch($i1) {     case 1: goto $r10 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.NaturalIdDataAccess generateReadOnlyNaturalIdAccess(org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig)>(r0);     case 2: goto $r9 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.NaturalIdDataAccess generateReadWriteNaturalIdAccess(org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig)>(r0);     case 3: goto $r8 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.NaturalIdDataAccess generateNonStrictReadWriteNaturalIdAccess(org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig)>(r0);     case 4: goto $r7 = virtualinvoke r6.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.NaturalIdDataAccess generateTransactionalNaturalIdDataAccess(org.hibernate.cache.cfg.spi.NaturalIdDataCachingConfig)>(r0);     default: goto $r11 = new java.lang.IllegalArgumentException; };	$r11 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized cache AccessType - ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r11
;block_num 2
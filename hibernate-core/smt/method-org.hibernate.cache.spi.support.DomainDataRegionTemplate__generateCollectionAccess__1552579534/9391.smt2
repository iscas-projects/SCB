(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3659 0)
(declare-sort var2557 0)
(declare-sort var2561 0)
(declare-sort var2148 0)
(declare-sort var3352 0)
(declare-sort var1464 0)
(declare-sort var1170 0)
(declare-sort var2354 0)
(declare-sort var1986 0)
(declare-sort var1106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2148_getNavigableRole/1013081629 (var2148) var2561)
(declare-fun cast-from-var2557-to-var2148 (var2557) var2148)
(declare-fun debugf/-1161213948 (var3352 String var1464) void)
(declare-fun cast-from-var2561-to-var1464 (var2561) var1464)
(declare-fun var2148_getAccessType/-737095468 (var2148) var2354)
(declare-fun ordinal/-291641772 (var1986) Int)
(declare-fun cast-from-var2354-to-var1986 (var2354) var1986)
(declare-fun var1106-init () var1106)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1464) String)
(declare-fun cast-from-var2354-to-var1464 (var2354) var1464)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1106 String) void)
(declare-const null-var3659 var3659)
(declare-const null-var2557 var2557)
(declare-const var3659-log var3352)
(declare-const var1170-$SwitchMap$org$hibernate$cache$spi$access$AccessType (Array Int Int))
(declare-const var11 var3659) ; Statement: r5 := @this: org.hibernate.cache.spi.support.DomainDataRegionTemplate 
(assert (not (= var11 null-var3659)))
(declare-const var1930 var2557) ; Statement: r0 := @parameter0: org.hibernate.cache.cfg.spi.CollectionDataCachingConfig 
(assert (not (= var1930 null-var2557)))
(define-const var3340 var2561 (var2148_getNavigableRole/1013081629 (cast-from-var2557-to-var2148 var1930))) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.cache.cfg.spi.CollectionDataCachingConfig: org.hibernate.metamodel.model.domain.NavigableRole getNavigableRole()>() 
(define-const var600 var3352 var3659-log) ; Statement: $r2 = <org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.jboss.logging.Logger log> 
(assert true)
;(assert (debugf/-1161213948 var600 "Generating collection cache access : %s" (cast-from-var2561-to-var1464 var3340))) ; Statement: virtualinvoke $r2.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object)>("Generating collection cache access : %s", r1) 

(declare-const var600!1 var3352)
(declare-const var2384 String)
(declare-const var3340!1 var2561)
(define-const var2705 (Array Int Int) var1170-$SwitchMap$org$hibernate$cache$spi$access$AccessType) ; Statement: $r3 = <org.hibernate.cache.spi.support.DomainDataRegionTemplate$1: int[] $SwitchMap$org$hibernate$cache$spi$access$AccessType> 
(define-const var618 var2354 (var2148_getAccessType/-737095468 (cast-from-var2557-to-var2148 var1930))) ; Statement: $r4 = interfaceinvoke r0.<org.hibernate.cache.cfg.spi.CollectionDataCachingConfig: org.hibernate.cache.spi.access.AccessType getAccessType()>() 
(assert true)
(define-const var2986 Int (ordinal/-291641772 (cast-from-var2354-to-var1986 var618))) ; Statement: $i0 = virtualinvoke $r4.<org.hibernate.cache.spi.access.AccessType: int ordinal()>() 
(define-const var2042 Int (select var2705 var2986)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r9 = specialinvoke r5.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.CollectionDataAccess generateReadOnlyCollectionAccess(org.hibernate.cache.cfg.spi.CollectionDataCachingConfig)>(r0);     case 2: goto $r8 = specialinvoke r5.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.CollectionDataAccess generateReadWriteCollectionAccess(org.hibernate.cache.cfg.spi.CollectionDataCachingConfig)>(r0);     case 3: goto $r7 = specialinvoke r5.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.CollectionDataAccess generateNonStrictReadWriteCollectionAccess(org.hibernate.cache.cfg.spi.CollectionDataCachingConfig)>(r0);     case 4: goto $r6 = virtualinvoke r5.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.CollectionDataAccess generateTransactionalCollectionDataAccess(org.hibernate.cache.cfg.spi.CollectionDataCachingConfig)>(r0);     default: goto $r10 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2042 4)) (and (not (= var2042 3)) (and (not (= var2042 2)) (and (not (= var2042 1)) true))))) ; Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var3098 var1106 var1106-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var1947 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1947)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1947!1 String)
(assert (= var1947!1 ""))
(assert true)
(define-const var530 String (append/672562846 var1947!1 "Unrecognized cache AccessType - ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized cache AccessType - ") 
(declare-const var1947!2 String)
(assert (= var1947!2 (str.++ var1947!1 "Unrecognized cache AccessType - ")))
(define-const var3419 var2354 (var2148_getAccessType/-737095468 (cast-from-var2557-to-var2148 var1930))) ; Statement: $r12 = interfaceinvoke r0.<org.hibernate.cache.cfg.spi.CollectionDataCachingConfig: org.hibernate.cache.spi.access.AccessType getAccessType()>() 
(assert true)
(define-const var1473 String (append/-1031950772 var530 (cast-from-var2354-to-var1464 var3419))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var530!1 String)
(assert (str.prefixof var530 var530!1))
(assert true)
(define-const var2467 String (toString/-2075883882 var1473)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3098 var2467)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var3098!1 var1106)
(declare-const var2467!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2148_getNavigableRole/1013081629=([org.hibernate.cache.cfg.spi.DomainDataCachingConfig], org.hibernate.metamodel.model.domain.NavigableRole), cast-from-var2557-to-var2148=([org.hibernate.cache.cfg.spi.CollectionDataCachingConfig], org.hibernate.cache.cfg.spi.DomainDataCachingConfig), debugf/-1161213948=([org.jboss.logging.Logger, java.lang.String, java.lang.Object], void), cast-from-var2561-to-var1464=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.Object), var2148_getAccessType/-737095468=([org.hibernate.cache.cfg.spi.DomainDataCachingConfig], org.hibernate.cache.spi.access.AccessType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2354-to-var1986=([org.hibernate.cache.spi.access.AccessType], java.lang.Enum), var1106-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2354-to-var1464=([org.hibernate.cache.spi.access.AccessType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3659=org.hibernate.cache.spi.support.DomainDataRegionTemplate, var11=r5, var2557=org.hibernate.cache.cfg.spi.CollectionDataCachingConfig, var1930=r0, var2561=org.hibernate.metamodel.model.domain.NavigableRole, var2148=org.hibernate.cache.cfg.spi.DomainDataCachingConfig, var3340=r1, var3352=org.jboss.logging.Logger, var600=$r2, var1464=java.lang.Object, var2384="Generating collection cache access : %s", var1170=org.hibernate.cache.spi.support.DomainDataRegionTemplate$1, var2705=$r3, var2354=org.hibernate.cache.spi.access.AccessType, var618=$r4, var1986=java.lang.Enum, var2986=$i0, var2042=$i1, var1106=java.lang.IllegalArgumentException, var3098=$r10, var1947=$r11, var530=$r13, var3419=$r12, var1473=$r14, var2467=$r15}
; {org.hibernate.cache.spi.support.DomainDataRegionTemplate=var3659, r5=var11, org.hibernate.cache.cfg.spi.CollectionDataCachingConfig=var2557, r0=var1930, org.hibernate.metamodel.model.domain.NavigableRole=var2561, org.hibernate.cache.cfg.spi.DomainDataCachingConfig=var2148, r1=var3340, org.jboss.logging.Logger=var3352, $r2=var600, java.lang.Object=var1464, "Generating collection cache access : %s"=var2384, org.hibernate.cache.spi.support.DomainDataRegionTemplate$1=var1170, $r3=var2705, org.hibernate.cache.spi.access.AccessType=var2354, $r4=var618, java.lang.Enum=var1986, $i0=var2986, $i1=var2042, java.lang.IllegalArgumentException=var1106, $r10=var3098, $r11=var1947, $r13=var530, $r12=var3419, $r14=var1473, $r15=var2467}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.cache.spi.support.DomainDataRegionTemplate;	r0 := @parameter0: org.hibernate.cache.cfg.spi.CollectionDataCachingConfig;	r1 = interfaceinvoke r0.<org.hibernate.cache.cfg.spi.CollectionDataCachingConfig: org.hibernate.metamodel.model.domain.NavigableRole getNavigableRole()>();	$r2 = <org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.jboss.logging.Logger log>;	virtualinvoke $r2.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object)>("Generating collection cache access : %s", r1);	$r3 = <org.hibernate.cache.spi.support.DomainDataRegionTemplate$1: int[] $SwitchMap$org$hibernate$cache$spi$access$AccessType>;	$r4 = interfaceinvoke r0.<org.hibernate.cache.cfg.spi.CollectionDataCachingConfig: org.hibernate.cache.spi.access.AccessType getAccessType()>();	$i0 = virtualinvoke $r4.<org.hibernate.cache.spi.access.AccessType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r9 = specialinvoke r5.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.CollectionDataAccess generateReadOnlyCollectionAccess(org.hibernate.cache.cfg.spi.CollectionDataCachingConfig)>(r0);     case 2: goto $r8 = specialinvoke r5.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.CollectionDataAccess generateReadWriteCollectionAccess(org.hibernate.cache.cfg.spi.CollectionDataCachingConfig)>(r0);     case 3: goto $r7 = specialinvoke r5.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.CollectionDataAccess generateNonStrictReadWriteCollectionAccess(org.hibernate.cache.cfg.spi.CollectionDataCachingConfig)>(r0);     case 4: goto $r6 = virtualinvoke r5.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.access.CollectionDataAccess generateTransactionalCollectionDataAccess(org.hibernate.cache.cfg.spi.CollectionDataCachingConfig)>(r0);     default: goto $r10 = new java.lang.IllegalArgumentException; };	$r10 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized cache AccessType - ");	$r12 = interfaceinvoke r0.<org.hibernate.cache.cfg.spi.CollectionDataCachingConfig: org.hibernate.cache.spi.access.AccessType getAccessType()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r10
;block_num 2
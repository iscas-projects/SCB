(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var554 0)
(declare-sort var1529 0)
(declare-sort var390 0)
(declare-sort var922 0)
(declare-sort var1264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metamodel/-191801824 (var554) var390)
(declare-fun var390_entityPersister/1947554472 (var390 String) var922)
(declare-fun var922_hasNaturalIdentifier/2013945893 (var922) Bool)
(declare-fun var1264-init () var1264)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1264 String) void)
(declare-const null-var554 var554)
(declare-const null-String String)
(declare-const var1013 var554) ; Statement: r0 := @this: org.hibernate.stat.internal.StatisticsImpl 
(assert (not (= var1013 null-var554)))
(declare-const var3583 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3583 null-String)))
(define-const var2359 var390 (metamodel/-191801824 var1013)) ; Statement: $r2 = r0.<org.hibernate.stat.internal.StatisticsImpl: org.hibernate.metamodel.spi.MetamodelImplementor metamodel> 
(define-const var2272 var922 (var390_entityPersister/1947554472 var2359 var3583)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r1) 
(define-const var2812 Bool (var922_hasNaturalIdentifier/2013945893 var2272)) ; Statement: $z0 = interfaceinvoke r3.<org.hibernate.persister.entity.EntityPersister: boolean hasNaturalIdentifier()>() 
 ; Statement: if $z0 != 0 goto $r4 = new org.hibernate.stat.internal.NaturalIdStatisticsImpl 
(assert (not (not (= (ite var2812 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2717 var1264 var1264-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var2888 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2888)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2888!1 String)
(assert (= var2888!1 ""))
(assert true)
(define-const var3529 String (append/672562846 var2888!1 "Given entity [")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given entity [") 
(declare-const var2888!2 String)
(assert (= var2888!2 (str.++ var2888!1 "Given entity [")))
(assert true)
(define-const var1986 String (append/672562846 var3529 var3583)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3529!1 String)
(assert (= var3529!1 (str.++ var3529 var3583)))
(assert true)
(define-const var3469 String (append/672562846 var1986 "] does not define natural-id")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not define natural-id") 
(declare-const var1986!1 String)
(assert (= var1986!1 (str.++ var1986 "] does not define natural-id")))
(assert true)
(define-const var1839 String (toString/-2075883882 var3469)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2717 var1839)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2717!1 var1264)
(declare-const var1839!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {metamodel/-191801824=([org.hibernate.stat.internal.StatisticsImpl], org.hibernate.metamodel.spi.MetamodelImplementor), var390_entityPersister/1947554472=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), var922_hasNaturalIdentifier/2013945893=([org.hibernate.persister.entity.EntityPersister], boolean), var1264-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var554=org.hibernate.stat.internal.StatisticsImpl, var1013=r0, var3583=r1, var1529=null_type, var390=org.hibernate.metamodel.spi.MetamodelImplementor, var2359=$r2, var922=org.hibernate.persister.entity.EntityPersister, var2272=r3, var2812=$z0, var1264=java.lang.IllegalArgumentException, var2717=$r5, var2888=$r6, var3529=$r7, var1986=$r8, var3469=$r9, var1839=$r10}
; {org.hibernate.stat.internal.StatisticsImpl=var554, r0=var1013, r1=var3583, null_type=var1529, org.hibernate.metamodel.spi.MetamodelImplementor=var390, $r2=var2359, org.hibernate.persister.entity.EntityPersister=var922, r3=var2272, $z0=var2812, java.lang.IllegalArgumentException=var1264, $r5=var2717, $r6=var2888, $r7=var3529, $r8=var1986, $r9=var3469, $r10=var1839}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.stat.internal.StatisticsImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.stat.internal.StatisticsImpl: org.hibernate.metamodel.spi.MetamodelImplementor metamodel>;	r3 = interfaceinvoke $r2.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r1);	$z0 = interfaceinvoke r3.<org.hibernate.persister.entity.EntityPersister: boolean hasNaturalIdentifier()>();	if $z0 != 0 goto $r4 = new org.hibernate.stat.internal.NaturalIdStatisticsImpl;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given entity [");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not define natural-id");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2
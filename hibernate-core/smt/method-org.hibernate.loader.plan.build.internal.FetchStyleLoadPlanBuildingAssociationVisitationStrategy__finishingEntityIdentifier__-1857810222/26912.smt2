(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1249 0)
(declare-sort var3332 0)
(declare-sort var1220 0)
(declare-sort var1002 0)
(declare-sort var145 0)
(declare-sort var2219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun finishingEntityIdentifier/1062360029 (var1220 var3332) void)
(declare-fun cast-from-var1249-to-var1220 (var1249) var1220)
(declare-fun vetoHandleAssociationAttribute/-2061848957 (var1249) Bool)
(declare-fun rootReturn/-2061848957 (var1249) var1002)
(declare-fun var1249_shouldVetoHandleAssociationAttributeInId/-1121970275 (var1002 var3332) Bool)
(declare-fun var145-init () var145)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1056956250 (var145 String) void)
(declare-fun cast-from-var145-to-var2219 (var145) var2219)
(declare-const null-var1249 var1249)
(declare-const null-var3332 var3332)
(declare-const var136 var1249) ; Statement: r0 := @this: org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy 
(assert (not (= var136 null-var1249)))
(declare-const var3259 var3332) ; Statement: r1 := @parameter0: org.hibernate.persister.walking.spi.EntityIdentifierDefinition 
(assert (not (= var3259 null-var3332)))
(assert true)
;(assert (finishingEntityIdentifier/1062360029 (cast-from-var1249-to-var1220 var136) var3259)) ; Statement: specialinvoke r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: void finishingEntityIdentifier(org.hibernate.persister.walking.spi.EntityIdentifierDefinition)>(r1) 

(declare-const var136!1 var1249)
(declare-const var3259!1 var3332)
(define-const var1001 Bool (vetoHandleAssociationAttribute/-2061848957 var136!1)) ; Statement: $z0 = r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean vetoHandleAssociationAttribute> 
(define-const var1533 var1002 (rootReturn/-2061848957 var136!1)) ; Statement: $r2 = r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.spi.Return rootReturn> 
(define-const var3559 Bool (var1249_shouldVetoHandleAssociationAttributeInId/-1121970275 var1533 var3259!1)) ; Statement: $z1 = staticinvoke <org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean shouldVetoHandleAssociationAttributeInId(org.hibernate.loader.plan.spi.Return,org.hibernate.persister.walking.spi.EntityIdentifierDefinition)>($r2, r1) 
 ; Statement: if $z0 == $z1 goto r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean vetoHandleAssociationAttribute> = 0 
(assert (not (= var1001 var3559))) ; Negate: Cond: $z0 == $z1  
(define-const var312 var145 var145-init) ; Statement: $r9 = new org.hibernate.persister.walking.spi.WalkingException 
(define-const var3910 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3910)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3910!1 String)
(assert (= var3910!1 ""))
(assert true)
(define-const var135 String (append/672562846 var3910!1 "vetoHandleAssociationAttribute has unexpected value: ")) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("vetoHandleAssociationAttribute has unexpected value: ") 
(declare-const var3910!2 String)
(assert (= var3910!2 (str.++ var3910!1 "vetoHandleAssociationAttribute has unexpected value: ")))
(define-const var163 Bool (vetoHandleAssociationAttribute/-2061848957 var136!1)) ; Statement: $z2 = r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean vetoHandleAssociationAttribute> 
(assert true)
(define-const var2282 String (append/-388390247 var135 var163)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z2) 
(declare-const var135!1 String)
(assert (str.prefixof var135 var135!1))
(assert true)
(define-const var1623 String (toString/-2075883882 var2282)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1056956250 var312 var1623)) ; Statement: specialinvoke $r9.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r7) 

(declare-const var312!1 var145)
(declare-const var1623!1 String)
(define-const var2568 var2219 (cast-from-var145-to-var2219 var312!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {finishingEntityIdentifier/1062360029=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy, org.hibernate.persister.walking.spi.EntityIdentifierDefinition], void), cast-from-var1249-to-var1220=([org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy], org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy), vetoHandleAssociationAttribute/-2061848957=([org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy], boolean), rootReturn/-2061848957=([org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy], org.hibernate.loader.plan.spi.Return), var1249_shouldVetoHandleAssociationAttributeInId/-1121970275=([org.hibernate.loader.plan.spi.Return, org.hibernate.persister.walking.spi.EntityIdentifierDefinition], boolean), var145-init=([], org.hibernate.persister.walking.spi.WalkingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1056956250=([org.hibernate.persister.walking.spi.WalkingException, java.lang.String], void), cast-from-var145-to-var2219=([org.hibernate.persister.walking.spi.WalkingException], java.lang.Throwable)}
; {var1249=org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy, var136=r0, var3332=org.hibernate.persister.walking.spi.EntityIdentifierDefinition, var3259=r1, var1220=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy, var1001=$z0, var1002=org.hibernate.loader.plan.spi.Return, var1533=$r2, var3559=$z1, var145=org.hibernate.persister.walking.spi.WalkingException, var312=$r9, var3910=$r8, var135=$r5, var163=$z2, var2282=$r6, var1623=$r7, var2219=java.lang.Throwable, var2568=$r10}
; {org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy=var1249, r0=var136, org.hibernate.persister.walking.spi.EntityIdentifierDefinition=var3332, r1=var3259, org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy=var1220, $z0=var1001, org.hibernate.loader.plan.spi.Return=var1002, $r2=var1533, $z1=var3559, org.hibernate.persister.walking.spi.WalkingException=var145, $r9=var312, $r8=var3910, $r5=var135, $z2=var163, $r6=var2282, $r7=var1623, java.lang.Throwable=var2219, $r10=var2568}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy;	r1 := @parameter0: org.hibernate.persister.walking.spi.EntityIdentifierDefinition;	specialinvoke r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: void finishingEntityIdentifier(org.hibernate.persister.walking.spi.EntityIdentifierDefinition)>(r1);	$z0 = r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean vetoHandleAssociationAttribute>;	$r2 = r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.spi.Return rootReturn>;	$z1 = staticinvoke <org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean shouldVetoHandleAssociationAttributeInId(org.hibernate.loader.plan.spi.Return,org.hibernate.persister.walking.spi.EntityIdentifierDefinition)>($r2, r1);	if $z0 == $z1 goto r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean vetoHandleAssociationAttribute> = 0;	$r9 = new org.hibernate.persister.walking.spi.WalkingException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("vetoHandleAssociationAttribute has unexpected value: ");	$z2 = r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean vetoHandleAssociationAttribute>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 2
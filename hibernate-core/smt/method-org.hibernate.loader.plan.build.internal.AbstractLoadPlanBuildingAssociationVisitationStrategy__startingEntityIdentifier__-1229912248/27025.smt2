(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var928 0)
(declare-sort var1541 0)
(declare-sort var846 0)
(declare-sort var3540 0)
(declare-sort var543 0)
(declare-sort var708 0)
(declare-sort var2802 0)
(declare-sort var1661 0)
(declare-sort var628 0)
(declare-sort var1189 0)
(declare-sort var1892 0)
(declare-sort var1055 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fetchSourceStack/303971096 (var928) var3540)
(declare-fun size/2440898 (var3540) Int)
(declare-fun var543_repeat/-922273135 (String Int) String)
(declare-fun var1541_getEntityDefinition/1734274342 (var1541) var708)
(declare-fun var708_getEntityPersister/292732637 (var708) var2802)
(declare-fun var2802_getEntityName/-1914780628 (var2802) String)
(declare-fun tracef/-1473545801 (var846 String var1661 var1661) void)
(declare-fun cast-from-String-to-var1661 (String) var1661)
(declare-fun currentSource/173359568 (var928) var628)
(declare-fun cast-from-var628-to-var1189 (var628) var1189)
(declare-fun var1189_getEntityPersister/-872151685 (var1189) var2802)
(declare-fun equals/-1650223740 (var1661 var1661) Bool)
(declare-fun cast-from-var2802-to-var1661 (var2802) var1661)
(declare-fun var1892-init () var1892)
(declare-fun arr-var1661-init () (Array Int var1661))
(declare-fun String_format/1339386452 (String (Array Int var1661)) String)
(declare-fun <init>/-1056956250 (var1892 String) void)
(declare-fun cast-from-var1892-to-var1055 (var1892) var1055)
(declare-const null-var928 var928)
(declare-const null-var1541 var1541)
(declare-const var928-log var846)
(declare-const null-__Array__Int__var1661__ (Array Int var1661))
(declare-const var2787 var928) ; Statement: r0 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy 
(assert (not (= var2787 null-var928)))
(declare-const var304 var1541) ; Statement: r3 := @parameter0: org.hibernate.persister.walking.spi.EntityIdentifierDefinition 
(assert (not (= var304 null-var1541)))
(define-const var2972 var846 var928-log) ; Statement: $r2 = <org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.jboss.logging.Logger log> 
(define-const var287 var3540 (fetchSourceStack/303971096 var2787)) ; Statement: $r1 = r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: java.util.ArrayDeque fetchSourceStack> 
(assert true)
(define-const var327 Int (size/2440898 var287)) ; Statement: $i0 = virtualinvoke $r1.<java.util.ArrayDeque: int size()>() 
(define-const var1226 String (var543_repeat/-922273135 ">>" var327)) ; Statement: $r7 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(java.lang.String,int)>(">>", $i0) 
(define-const var2070 var708 (var1541_getEntityDefinition/1734274342 var304)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.persister.walking.spi.EntityIdentifierDefinition: org.hibernate.persister.walking.spi.EntityDefinition getEntityDefinition()>() 
(define-const var2903 var2802 (var708_getEntityPersister/292732637 var2070)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.persister.walking.spi.EntityDefinition: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
(define-const var1398 String (var2802_getEntityName/-1914780628 var2903)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert true)
;(assert (tracef/-1473545801 var2972 "%s Starting entity identifier : %s" (cast-from-String-to-var1661 var1226) (cast-from-String-to-var1661 var1398))) ; Statement: virtualinvoke $r2.<org.jboss.logging.Logger: void tracef(java.lang.String,java.lang.Object,java.lang.Object)>("%s Starting entity identifier : %s", $r7, $r6) 

(declare-const var2972!1 var846)
(declare-const var2167 String)
(declare-const var1226!1 String)
(declare-const var1398!1 String)
(assert true)
(define-const var3905 var628 (currentSource/173359568 var2787)) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.build.spi.ExpandingFetchSource currentSource()>() 
(define-const var1475 var1189 (cast-from-var628-to-var1189 var3905)) ; Statement: r9 = (org.hibernate.loader.plan.spi.EntityReference) $r8 
(define-const var3111 var2802 (var1189_getEntityPersister/-872151685 var1475)) ; Statement: $r12 = interfaceinvoke r9.<org.hibernate.loader.plan.spi.EntityReference: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
(define-const var2857 var708 (var1541_getEntityDefinition/1734274342 var304)) ; Statement: $r10 = interfaceinvoke r3.<org.hibernate.persister.walking.spi.EntityIdentifierDefinition: org.hibernate.persister.walking.spi.EntityDefinition getEntityDefinition()>() 
(define-const var3532 var2802 (var708_getEntityPersister/292732637 var2857)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.persister.walking.spi.EntityDefinition: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
(assert true)
(define-const var1383 Bool (equals/-1650223740 (cast-from-var2802-to-var1661 var3111) (cast-from-var2802-to-var1661 var3532))) ; Statement: $z0 = virtualinvoke $r12.<java.lang.Object: boolean equals(java.lang.Object)>($r11) 
 ; Statement: if $z0 != 0 goto $r14 = class "Lorg/hibernate/loader/plan/build/spi/ExpandingEntityIdentifierDescription;" 
(assert (not (not (= (ite var1383 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2568 var1892 var1892-init) ; Statement: $r25 = new org.hibernate.persister.walking.spi.WalkingException 
(define-const var923 (Array Int var1661) arr-var1661-init) ; Statement: $r18 = newarray (java.lang.Object)[2] 
(define-const var1405 var2802 (var1189_getEntityPersister/-872151685 var1475)) ; Statement: $r19 = interfaceinvoke r9.<org.hibernate.loader.plan.spi.EntityReference: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
(define-const var3487 String (var2802_getEntityName/-1914780628 var1405)) ; Statement: $r20 = interfaceinvoke $r19.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(declare-const var923!1 (Array Int var1661))
(assert (not (= var923!1 null-__Array__Int__var1661__)))
(assert (= (select var923!1 0) (cast-from-String-to-var1661 var3487))) ; Statement: $r18[0] = $r20 
(define-const var2801 var708 (var1541_getEntityDefinition/1734274342 var304)) ; Statement: $r21 = interfaceinvoke r3.<org.hibernate.persister.walking.spi.EntityIdentifierDefinition: org.hibernate.persister.walking.spi.EntityDefinition getEntityDefinition()>() 
(define-const var2369 var2802 (var708_getEntityPersister/292732637 var2801)) ; Statement: $r22 = interfaceinvoke $r21.<org.hibernate.persister.walking.spi.EntityDefinition: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
(define-const var934 String (var2802_getEntityName/-1914780628 var2369)) ; Statement: $r23 = interfaceinvoke $r22.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(declare-const var923!2 (Array Int var1661))
(assert (not (= var923!2 null-__Array__Int__var1661__)))
(assert (= (select var923!2 1) (cast-from-String-to-var1661 var934))) ; Statement: $r18[1] = $r23 
(define-const var1209 String (String_format/1339386452 "Encountered unexpected fetch owner [%s] in stack while processing entity identifier for [%s]" var923!2)) ; Statement: $r24 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Encountered unexpected fetch owner [%s] in stack while processing entity identifier for [%s]", $r18) 
(assert true)
;(assert (<init>/-1056956250 var2568 var1209)) ; Statement: specialinvoke $r25.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r24) 

(declare-const var2568!1 var1892)
(declare-const var1209!1 String)
(define-const var524 var1055 (cast-from-var1892-to-var1055 var2568!1)) ; Statement: $r26 = (java.lang.Throwable) $r25 
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {fetchSourceStack/303971096=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], java.util.ArrayDeque), size/2440898=([java.util.ArrayDeque], int), var543_repeat/-922273135=([java.lang.String, int], java.lang.String), var1541_getEntityDefinition/1734274342=([org.hibernate.persister.walking.spi.EntityIdentifierDefinition], org.hibernate.persister.walking.spi.EntityDefinition), var708_getEntityPersister/292732637=([org.hibernate.persister.walking.spi.EntityDefinition], org.hibernate.persister.entity.EntityPersister), var2802_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), tracef/-1473545801=([org.jboss.logging.Logger, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-String-to-var1661=([java.lang.String], java.lang.Object), currentSource/173359568=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], org.hibernate.loader.plan.build.spi.ExpandingFetchSource), cast-from-var628-to-var1189=([org.hibernate.loader.plan.build.spi.ExpandingFetchSource], org.hibernate.loader.plan.spi.EntityReference), var1189_getEntityPersister/-872151685=([org.hibernate.loader.plan.spi.EntityReference], org.hibernate.persister.entity.EntityPersister), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-var2802-to-var1661=([org.hibernate.persister.entity.EntityPersister], java.lang.Object), var1892-init=([], org.hibernate.persister.walking.spi.WalkingException), arr-var1661-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1056956250=([org.hibernate.persister.walking.spi.WalkingException, java.lang.String], void), cast-from-var1892-to-var1055=([org.hibernate.persister.walking.spi.WalkingException], java.lang.Throwable)}
; {var928=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy, var2787=r0, var1541=org.hibernate.persister.walking.spi.EntityIdentifierDefinition, var304=r3, var846=org.jboss.logging.Logger, var2972=$r2, var3540=java.util.ArrayDeque, var287=$r1, var327=$i0, var543=org.hibernate.internal.util.StringHelper, var1226=$r7, var708=org.hibernate.persister.walking.spi.EntityDefinition, var2070=$r4, var2802=org.hibernate.persister.entity.EntityPersister, var2903=$r5, var1398=$r6, var1661=java.lang.Object, var2167="%s Starting entity identifier : %s", var628=org.hibernate.loader.plan.build.spi.ExpandingFetchSource, var3905=$r8, var1189=org.hibernate.loader.plan.spi.EntityReference, var1475=r9, var3111=$r12, var2857=$r10, var3532=$r11, var1383=$z0, var1892=org.hibernate.persister.walking.spi.WalkingException, var2568=$r25, var923=$r18, var1405=$r19, var3487=$r20, var2801=$r21, var2369=$r22, var934=$r23, var1209=$r24, var1055=java.lang.Throwable, var524=$r26}
; {org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy=var928, r0=var2787, org.hibernate.persister.walking.spi.EntityIdentifierDefinition=var1541, r3=var304, org.jboss.logging.Logger=var846, $r2=var2972, java.util.ArrayDeque=var3540, $r1=var287, $i0=var327, org.hibernate.internal.util.StringHelper=var543, $r7=var1226, org.hibernate.persister.walking.spi.EntityDefinition=var708, $r4=var2070, org.hibernate.persister.entity.EntityPersister=var2802, $r5=var2903, $r6=var1398, java.lang.Object=var1661, "%s Starting entity identifier : %s"=var2167, org.hibernate.loader.plan.build.spi.ExpandingFetchSource=var628, $r8=var3905, org.hibernate.loader.plan.spi.EntityReference=var1189, r9=var1475, $r12=var3111, $r10=var2857, $r11=var3532, $z0=var1383, org.hibernate.persister.walking.spi.WalkingException=var1892, $r25=var2568, $r18=var923, $r19=var1405, $r20=var3487, $r21=var2801, $r22=var2369, $r23=var934, $r24=var1209, java.lang.Throwable=var1055, $r26=var524}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy;	r3 := @parameter0: org.hibernate.persister.walking.spi.EntityIdentifierDefinition;	$r2 = <org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.jboss.logging.Logger log>;	$r1 = r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: java.util.ArrayDeque fetchSourceStack>;	$i0 = virtualinvoke $r1.<java.util.ArrayDeque: int size()>();	$r7 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(java.lang.String,int)>(">>", $i0);	$r4 = interfaceinvoke r3.<org.hibernate.persister.walking.spi.EntityIdentifierDefinition: org.hibernate.persister.walking.spi.EntityDefinition getEntityDefinition()>();	$r5 = interfaceinvoke $r4.<org.hibernate.persister.walking.spi.EntityDefinition: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	$r6 = interfaceinvoke $r5.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	virtualinvoke $r2.<org.jboss.logging.Logger: void tracef(java.lang.String,java.lang.Object,java.lang.Object)>("%s Starting entity identifier : %s", $r7, $r6);	$r8 = virtualinvoke r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.build.spi.ExpandingFetchSource currentSource()>();	r9 = (org.hibernate.loader.plan.spi.EntityReference) $r8;	$r12 = interfaceinvoke r9.<org.hibernate.loader.plan.spi.EntityReference: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	$r10 = interfaceinvoke r3.<org.hibernate.persister.walking.spi.EntityIdentifierDefinition: org.hibernate.persister.walking.spi.EntityDefinition getEntityDefinition()>();	$r11 = interfaceinvoke $r10.<org.hibernate.persister.walking.spi.EntityDefinition: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	$z0 = virtualinvoke $r12.<java.lang.Object: boolean equals(java.lang.Object)>($r11);	if $z0 != 0 goto $r14 = class "Lorg/hibernate/loader/plan/build/spi/ExpandingEntityIdentifierDescription;";	$r25 = new org.hibernate.persister.walking.spi.WalkingException;	$r18 = newarray (java.lang.Object)[2];	$r19 = interfaceinvoke r9.<org.hibernate.loader.plan.spi.EntityReference: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	$r20 = interfaceinvoke $r19.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r18[0] = $r20;	$r21 = interfaceinvoke r3.<org.hibernate.persister.walking.spi.EntityIdentifierDefinition: org.hibernate.persister.walking.spi.EntityDefinition getEntityDefinition()>();	$r22 = interfaceinvoke $r21.<org.hibernate.persister.walking.spi.EntityDefinition: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	$r23 = interfaceinvoke $r22.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r18[1] = $r23;	$r24 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Encountered unexpected fetch owner [%s] in stack while processing entity identifier for [%s]", $r18);	specialinvoke $r25.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r24);	$r26 = (java.lang.Throwable) $r25;	throw $r26
;block_num 2
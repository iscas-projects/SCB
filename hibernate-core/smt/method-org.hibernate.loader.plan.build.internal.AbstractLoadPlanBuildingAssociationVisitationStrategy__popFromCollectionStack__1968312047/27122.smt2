(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var351 0)
(declare-sort var522 0)
(declare-sort var1100 0)
(declare-sort var2499 0)
(declare-sort var2980 0)
(declare-sort var2727 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun collectionReferenceStack/303971096 (var351) var522)
(declare-fun removeFirst/1532113461 (var522) var1100)
(declare-fun cast-from-var1100-to-var2499 (var1100) var2499)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1100) String)
(declare-fun cast-from-var2499-to-var1100 (var2499) var1100)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun trace/-660176171 (var2980 var1100) void)
(declare-fun cast-from-String-to-var1100 (String) var1100)
(declare-fun propertyPathStack/303971096 (var351) var2727)
(declare-fun pop/2141376692 (var2727) void)
(declare-const null-var351 var351)
(declare-const var351-log var2980)
(declare-const var1394 var351) ; Statement: r0 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy 
(assert (not (= var1394 null-var351)))
(define-const var2526 var522 (collectionReferenceStack/303971096 var1394)) ; Statement: $r1 = r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: java.util.ArrayDeque collectionReferenceStack> 
(assert true)
(define-const var3885 var1100 (removeFirst/1532113461 var2526)) ; Statement: $r2 = virtualinvoke $r1.<java.util.ArrayDeque: java.lang.Object removeFirst()>() 
(define-const var518 var2499 (cast-from-var1100-to-var2499 var3885)) ; Statement: r3 = (org.hibernate.loader.plan.spi.CollectionReference) $r2 
(define-const var3649 var2980 var351-log) ; Statement: $r5 = <org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.jboss.logging.Logger log> 
(define-const var682 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var682)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var682!1 String)
(assert (= var682!1 ""))
(assert true)
(define-const var3823 String (append/672562846 var682!1 "Popped collection reference from stack : ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Popped collection reference from stack : ") 
(declare-const var682!2 String)
(assert (= var682!2 (str.++ var682!1 "Popped collection reference from stack : ")))
(assert true)
(define-const var1411 String (append/-1031950772 var3823 (cast-from-var2499-to-var1100 var518))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var3823!1 String)
(assert (str.prefixof var3823 var3823!1))
(assert true)
(define-const var2209 String (toString/-2075883882 var1411)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (trace/-660176171 var3649 (cast-from-String-to-var1100 var2209))) ; Statement: virtualinvoke $r5.<org.jboss.logging.Logger: void trace(java.lang.Object)>($r8) 

(declare-const var3649!1 var2980)
(declare-const var2209!1 String)
(define-const var3788 var2727 (propertyPathStack/303971096 var1394)) ; Statement: $r9 = r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack propertyPathStack> 
(assert true)
;(assert (pop/2141376692 var3788)) ; Statement: virtualinvoke $r9.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack: void pop()>() 

(declare-const var3788!1 var2727)
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {collectionReferenceStack/303971096=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], java.util.ArrayDeque), removeFirst/1532113461=([java.util.ArrayDeque], java.lang.Object), cast-from-var1100-to-var2499=([java.lang.Object], org.hibernate.loader.plan.spi.CollectionReference), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2499-to-var1100=([org.hibernate.loader.plan.spi.CollectionReference], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trace/-660176171=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var1100=([java.lang.String], java.lang.Object), propertyPathStack/303971096=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack), pop/2141376692=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack], void)}
; {var351=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy, var1394=r0, var522=java.util.ArrayDeque, var2526=$r1, var1100=java.lang.Object, var3885=$r2, var2499=org.hibernate.loader.plan.spi.CollectionReference, var518=r3, var2980=org.jboss.logging.Logger, var3649=$r5, var682=$r4, var3823=$r6, var1411=$r7, var2209=$r8, var2727=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack, var3788=$r9}
; {org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy=var351, r0=var1394, java.util.ArrayDeque=var522, $r1=var2526, java.lang.Object=var1100, $r2=var3885, org.hibernate.loader.plan.spi.CollectionReference=var2499, r3=var518, org.jboss.logging.Logger=var2980, $r5=var3649, $r4=var682, $r6=var3823, $r7=var1411, $r8=var2209, org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack=var2727, $r9=var3788}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy;	$r1 = r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: java.util.ArrayDeque collectionReferenceStack>;	$r2 = virtualinvoke $r1.<java.util.ArrayDeque: java.lang.Object removeFirst()>();	r3 = (org.hibernate.loader.plan.spi.CollectionReference) $r2;	$r5 = <org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.jboss.logging.Logger log>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Popped collection reference from stack : ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<org.jboss.logging.Logger: void trace(java.lang.Object)>($r8);	$r9 = r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack propertyPathStack>;	virtualinvoke $r9.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack: void pop()>();	return r3
;block_num 1
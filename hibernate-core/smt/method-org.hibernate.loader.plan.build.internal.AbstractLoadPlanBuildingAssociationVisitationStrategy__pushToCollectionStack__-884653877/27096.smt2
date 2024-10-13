(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3679 0)
(declare-sort var1325 0)
(declare-sort var3140 0)
(declare-sort var2909 0)
(declare-sort var651 0)
(declare-sort var1316 0)
(declare-sort var1631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2909) String)
(declare-fun cast-from-var1325-to-var2909 (var1325) var2909)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun trace/-660176171 (var3140 var2909) void)
(declare-fun cast-from-String-to-var2909 (String) var2909)
(declare-fun propertyPathStack/303971096 (var3679) var651)
(declare-fun var1325_getPropertyPath/1324070563 (var1325) var1316)
(declare-fun push/-1486175682 (var651 var1316) void)
(declare-fun collectionReferenceStack/303971096 (var3679) var1631)
(declare-fun addFirst/-421659938 (var1631 var2909) void)
(declare-const null-var3679 var3679)
(declare-const null-var1325 var1325)
(declare-const var3679-log var3140)
(declare-const var343 var3679) ; Statement: r6 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy 
(assert (not (= var343 null-var3679)))
(declare-const var1787 var1325) ; Statement: r2 := @parameter0: org.hibernate.loader.plan.spi.CollectionReference 
(assert (not (= var1787 null-var1325)))
(define-const var2310 var3140 var3679-log) ; Statement: $r1 = <org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.jboss.logging.Logger log> 
(define-const var3694 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3694)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3694!1 String)
(assert (= var3694!1 ""))
(assert true)
(define-const var3728 String (append/672562846 var3694!1 "Pushing collection reference to stack : ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Pushing collection reference to stack : ") 
(declare-const var3694!2 String)
(assert (= var3694!2 (str.++ var3694!1 "Pushing collection reference to stack : ")))
(assert true)
(define-const var2046 String (append/-1031950772 var3728 (cast-from-var1325-to-var2909 var1787))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3728!1 String)
(assert (str.prefixof var3728 var3728!1))
(assert true)
(define-const var733 String (toString/-2075883882 var2046)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (trace/-660176171 var2310 (cast-from-String-to-var2909 var733))) ; Statement: virtualinvoke $r1.<org.jboss.logging.Logger: void trace(java.lang.Object)>($r5) 

(declare-const var2310!1 var3140)
(declare-const var733!1 String)
(define-const var2426 var651 (propertyPathStack/303971096 var343)) ; Statement: $r7 = r6.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack propertyPathStack> 
(define-const var2117 var1316 (var1325_getPropertyPath/1324070563 var1787)) ; Statement: $r8 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.CollectionReference: org.hibernate.loader.PropertyPath getPropertyPath()>() 
(assert true)
;(assert (push/-1486175682 var2426 var2117)) ; Statement: virtualinvoke $r7.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack: void push(org.hibernate.loader.PropertyPath)>($r8) 

(declare-const var2426!1 var651)
(declare-const var2117!1 var1316)
(define-const var3070 var1631 (collectionReferenceStack/303971096 var343)) ; Statement: $r9 = r6.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: java.util.ArrayDeque collectionReferenceStack> 
(assert true)
;(assert (addFirst/-421659938 var3070 (cast-from-var1325-to-var2909 var1787))) ; Statement: virtualinvoke $r9.<java.util.ArrayDeque: void addFirst(java.lang.Object)>(r2) 

(declare-const var3070!1 var1631)
(declare-const var1787!1 var1325)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1325-to-var2909=([org.hibernate.loader.plan.spi.CollectionReference], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trace/-660176171=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var2909=([java.lang.String], java.lang.Object), propertyPathStack/303971096=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack), var1325_getPropertyPath/1324070563=([org.hibernate.loader.plan.spi.CollectionReference], org.hibernate.loader.PropertyPath), push/-1486175682=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack, org.hibernate.loader.PropertyPath], void), collectionReferenceStack/303971096=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], java.util.ArrayDeque), addFirst/-421659938=([java.util.ArrayDeque, java.lang.Object], void)}
; {var3679=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy, var343=r6, var1325=org.hibernate.loader.plan.spi.CollectionReference, var1787=r2, var3140=org.jboss.logging.Logger, var2310=$r1, var3694=$r0, var3728=$r3, var2909=java.lang.Object, var2046=$r4, var733=$r5, var651=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack, var2426=$r7, var1316=org.hibernate.loader.PropertyPath, var2117=$r8, var1631=java.util.ArrayDeque, var3070=$r9}
; {org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy=var3679, r6=var343, org.hibernate.loader.plan.spi.CollectionReference=var1325, r2=var1787, org.jboss.logging.Logger=var3140, $r1=var2310, $r0=var3694, $r3=var3728, java.lang.Object=var2909, $r4=var2046, $r5=var733, org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack=var651, $r7=var2426, org.hibernate.loader.PropertyPath=var1316, $r8=var2117, java.util.ArrayDeque=var1631, $r9=var3070}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy;	r2 := @parameter0: org.hibernate.loader.plan.spi.CollectionReference;	$r1 = <org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.jboss.logging.Logger log>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Pushing collection reference to stack : ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<org.jboss.logging.Logger: void trace(java.lang.Object)>($r5);	$r7 = r6.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack propertyPathStack>;	$r8 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.CollectionReference: org.hibernate.loader.PropertyPath getPropertyPath()>();	virtualinvoke $r7.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack: void push(org.hibernate.loader.PropertyPath)>($r8);	$r9 = r6.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: java.util.ArrayDeque collectionReferenceStack>;	virtualinvoke $r9.<java.util.ArrayDeque: void addFirst(java.lang.Object)>(r2);	return
;block_num 1
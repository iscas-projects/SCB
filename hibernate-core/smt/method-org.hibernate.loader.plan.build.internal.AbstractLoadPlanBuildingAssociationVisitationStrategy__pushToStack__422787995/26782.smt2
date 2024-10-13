(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var961 0)
(declare-sort var3907 0)
(declare-sort var1308 0)
(declare-sort var1569 0)
(declare-sort var3261 0)
(declare-sort var837 0)
(declare-sort var1748 0)
(declare-sort var2617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1569) String)
(declare-fun cast-from-var3907-to-var1569 (var3907) var1569)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun trace/-660176171 (var1308 var1569) void)
(declare-fun cast-from-String-to-var1569 (String) var1569)
(declare-fun propertyPathStack/303971096 (var961) var3261)
(declare-fun var1748_getPropertyPath/216432587 (var1748) var837)
(declare-fun cast-from-var3907-to-var1748 (var3907) var1748)
(declare-fun push/-1486175682 (var3261 var837) void)
(declare-fun fetchSourceStack/303971096 (var961) var2617)
(declare-fun addFirst/-421659938 (var2617 var1569) void)
(declare-const null-var961 var961)
(declare-const null-var3907 var3907)
(declare-const var961-log var1308)
(declare-const var2966 var961) ; Statement: r6 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy 
(assert (not (= var2966 null-var961)))
(declare-const var3617 var3907) ; Statement: r2 := @parameter0: org.hibernate.loader.plan.build.spi.ExpandingFetchSource 
(assert (not (= var3617 null-var3907)))
(define-const var3662 var1308 var961-log) ; Statement: $r1 = <org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.jboss.logging.Logger log> 
(define-const var400 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var400)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var400!1 String)
(assert (= var400!1 ""))
(assert true)
(define-const var3759 String (append/672562846 var400!1 "Pushing fetch source to stack : ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Pushing fetch source to stack : ") 
(declare-const var400!2 String)
(assert (= var400!2 (str.++ var400!1 "Pushing fetch source to stack : ")))
(assert true)
(define-const var899 String (append/-1031950772 var3759 (cast-from-var3907-to-var1569 var3617))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3759!1 String)
(assert (str.prefixof var3759 var3759!1))
(assert true)
(define-const var978 String (toString/-2075883882 var899)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (trace/-660176171 var3662 (cast-from-String-to-var1569 var978))) ; Statement: virtualinvoke $r1.<org.jboss.logging.Logger: void trace(java.lang.Object)>($r5) 

(declare-const var3662!1 var1308)
(declare-const var978!1 String)
(define-const var1438 var3261 (propertyPathStack/303971096 var2966)) ; Statement: $r7 = r6.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack propertyPathStack> 
(define-const var2949 var837 (var1748_getPropertyPath/216432587 (cast-from-var3907-to-var1748 var3617))) ; Statement: $r8 = interfaceinvoke r2.<org.hibernate.loader.plan.build.spi.ExpandingFetchSource: org.hibernate.loader.PropertyPath getPropertyPath()>() 
(assert true)
;(assert (push/-1486175682 var1438 var2949)) ; Statement: virtualinvoke $r7.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack: void push(org.hibernate.loader.PropertyPath)>($r8) 

(declare-const var1438!1 var3261)
(declare-const var2949!1 var837)
(define-const var1259 var2617 (fetchSourceStack/303971096 var2966)) ; Statement: $r9 = r6.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: java.util.ArrayDeque fetchSourceStack> 
(assert true)
;(assert (addFirst/-421659938 var1259 (cast-from-var3907-to-var1569 var3617))) ; Statement: virtualinvoke $r9.<java.util.ArrayDeque: void addFirst(java.lang.Object)>(r2) 

(declare-const var1259!1 var2617)
(declare-const var3617!1 var3907)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3907-to-var1569=([org.hibernate.loader.plan.build.spi.ExpandingFetchSource], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trace/-660176171=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var1569=([java.lang.String], java.lang.Object), propertyPathStack/303971096=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack), var1748_getPropertyPath/216432587=([org.hibernate.loader.plan.spi.FetchSource], org.hibernate.loader.PropertyPath), cast-from-var3907-to-var1748=([org.hibernate.loader.plan.build.spi.ExpandingFetchSource], org.hibernate.loader.plan.spi.FetchSource), push/-1486175682=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack, org.hibernate.loader.PropertyPath], void), fetchSourceStack/303971096=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], java.util.ArrayDeque), addFirst/-421659938=([java.util.ArrayDeque, java.lang.Object], void)}
; {var961=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy, var2966=r6, var3907=org.hibernate.loader.plan.build.spi.ExpandingFetchSource, var3617=r2, var1308=org.jboss.logging.Logger, var3662=$r1, var400=$r0, var3759=$r3, var1569=java.lang.Object, var899=$r4, var978=$r5, var3261=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack, var1438=$r7, var837=org.hibernate.loader.PropertyPath, var1748=org.hibernate.loader.plan.spi.FetchSource, var2949=$r8, var2617=java.util.ArrayDeque, var1259=$r9}
; {org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy=var961, r6=var2966, org.hibernate.loader.plan.build.spi.ExpandingFetchSource=var3907, r2=var3617, org.jboss.logging.Logger=var1308, $r1=var3662, $r0=var400, $r3=var3759, java.lang.Object=var1569, $r4=var899, $r5=var978, org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack=var3261, $r7=var1438, org.hibernate.loader.PropertyPath=var837, org.hibernate.loader.plan.spi.FetchSource=var1748, $r8=var2949, java.util.ArrayDeque=var2617, $r9=var1259}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy;	r2 := @parameter0: org.hibernate.loader.plan.build.spi.ExpandingFetchSource;	$r1 = <org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.jboss.logging.Logger log>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Pushing fetch source to stack : ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<org.jboss.logging.Logger: void trace(java.lang.Object)>($r5);	$r7 = r6.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack propertyPathStack>;	$r8 = interfaceinvoke r2.<org.hibernate.loader.plan.build.spi.ExpandingFetchSource: org.hibernate.loader.PropertyPath getPropertyPath()>();	virtualinvoke $r7.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack: void push(org.hibernate.loader.PropertyPath)>($r8);	$r9 = r6.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: java.util.ArrayDeque fetchSourceStack>;	virtualinvoke $r9.<java.util.ArrayDeque: void addFirst(java.lang.Object)>(r2);	return
;block_num 1
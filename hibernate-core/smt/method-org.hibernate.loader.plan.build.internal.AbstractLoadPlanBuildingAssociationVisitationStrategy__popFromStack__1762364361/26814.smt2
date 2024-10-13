(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3177 0)
(declare-sort var3616 0)
(declare-sort var252 0)
(declare-sort var1059 0)
(declare-sort var1884 0)
(declare-sort var1814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fetchSourceStack/303971096 (var3177) var3616)
(declare-fun removeFirst/1532113461 (var3616) var252)
(declare-fun cast-from-var252-to-var1059 (var252) var1059)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var252) String)
(declare-fun cast-from-var1059-to-var252 (var1059) var252)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun trace/-660176171 (var1884 var252) void)
(declare-fun cast-from-String-to-var252 (String) var252)
(declare-fun propertyPathStack/303971096 (var3177) var1814)
(declare-fun pop/2141376692 (var1814) void)
(declare-const null-var3177 var3177)
(declare-const var3177-log var1884)
(declare-const var800 var3177) ; Statement: r0 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy 
(assert (not (= var800 null-var3177)))
(define-const var3015 var3616 (fetchSourceStack/303971096 var800)) ; Statement: $r1 = r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: java.util.ArrayDeque fetchSourceStack> 
(assert true)
(define-const var1849 var252 (removeFirst/1532113461 var3015)) ; Statement: $r2 = virtualinvoke $r1.<java.util.ArrayDeque: java.lang.Object removeFirst()>() 
(define-const var2632 var1059 (cast-from-var252-to-var1059 var1849)) ; Statement: r3 = (org.hibernate.loader.plan.build.spi.ExpandingFetchSource) $r2 
(define-const var2261 var1884 var3177-log) ; Statement: $r5 = <org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.jboss.logging.Logger log> 
(define-const var3131 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3131)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3131!1 String)
(assert (= var3131!1 ""))
(assert true)
(define-const var3388 String (append/672562846 var3131!1 "Popped fetch owner from stack : ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Popped fetch owner from stack : ") 
(declare-const var3131!2 String)
(assert (= var3131!2 (str.++ var3131!1 "Popped fetch owner from stack : ")))
(assert true)
(define-const var1780 String (append/-1031950772 var3388 (cast-from-var1059-to-var252 var2632))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var3388!1 String)
(assert (str.prefixof var3388 var3388!1))
(assert true)
(define-const var496 String (toString/-2075883882 var1780)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (trace/-660176171 var2261 (cast-from-String-to-var252 var496))) ; Statement: virtualinvoke $r5.<org.jboss.logging.Logger: void trace(java.lang.Object)>($r8) 

(declare-const var2261!1 var1884)
(declare-const var496!1 String)
(define-const var1992 var1814 (propertyPathStack/303971096 var800)) ; Statement: $r9 = r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack propertyPathStack> 
(assert true)
;(assert (pop/2141376692 var1992)) ; Statement: virtualinvoke $r9.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack: void pop()>() 

(declare-const var1992!1 var1814)
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {fetchSourceStack/303971096=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], java.util.ArrayDeque), removeFirst/1532113461=([java.util.ArrayDeque], java.lang.Object), cast-from-var252-to-var1059=([java.lang.Object], org.hibernate.loader.plan.build.spi.ExpandingFetchSource), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1059-to-var252=([org.hibernate.loader.plan.build.spi.ExpandingFetchSource], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trace/-660176171=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var252=([java.lang.String], java.lang.Object), propertyPathStack/303971096=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack), pop/2141376692=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack], void)}
; {var3177=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy, var800=r0, var3616=java.util.ArrayDeque, var3015=$r1, var252=java.lang.Object, var1849=$r2, var1059=org.hibernate.loader.plan.build.spi.ExpandingFetchSource, var2632=r3, var1884=org.jboss.logging.Logger, var2261=$r5, var3131=$r4, var3388=$r6, var1780=$r7, var496=$r8, var1814=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack, var1992=$r9}
; {org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy=var3177, r0=var800, java.util.ArrayDeque=var3616, $r1=var3015, java.lang.Object=var252, $r2=var1849, org.hibernate.loader.plan.build.spi.ExpandingFetchSource=var1059, r3=var2632, org.jboss.logging.Logger=var1884, $r5=var2261, $r4=var3131, $r6=var3388, $r7=var1780, $r8=var496, org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack=var1814, $r9=var1992}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy;	$r1 = r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: java.util.ArrayDeque fetchSourceStack>;	$r2 = virtualinvoke $r1.<java.util.ArrayDeque: java.lang.Object removeFirst()>();	r3 = (org.hibernate.loader.plan.build.spi.ExpandingFetchSource) $r2;	$r5 = <org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.jboss.logging.Logger log>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Popped fetch owner from stack : ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<org.jboss.logging.Logger: void trace(java.lang.Object)>($r8);	$r9 = r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack propertyPathStack>;	virtualinvoke $r9.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy$PropertyPathStack: void pop()>();	return r3
;block_num 1
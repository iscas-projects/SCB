(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1703 0)
(declare-sort var2758 0)
(declare-sort var1724 0)
(declare-sort var3838 0)
(declare-sort var310 0)
(declare-sort var1709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun finish/631348568 (var2758) void)
(declare-fun cast-from-var1703-to-var2758 (var1703) var2758)
(declare-fun graphStack/-613307515 (var1703) var1724)
(declare-fun var1724_pop/1205358497 (var1724) var1709)
(declare-fun var1724_isEmpty/2096372522 (var1724) Bool)
(declare-fun var3838-init () var3838)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1724_depth/268963523 (var1724) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun attributeStack/-613307515 (var1703) var1724)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1056956250 (var3838 String) void)
(declare-fun cast-from-var3838-to-var310 (var3838) var310)
(declare-const null-var1703 var1703)
(declare-const var1497 var1703) ; Statement: r0 := @this: org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy 
(assert (not (= var1497 null-var1703)))
(assert true)
;(assert (finish/631348568 (cast-from-var1703-to-var2758 var1497))) ; Statement: specialinvoke r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: void finish()>() 

(declare-const var1497!1 var1703)
(define-const var339 var1724 (graphStack/-613307515 var1497!1)) ; Statement: $r1 = r0.<org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy: org.hibernate.internal.util.collections.Stack graphStack> 
;(assert (var1724_pop/1205358497 var339)) ; Statement: interfaceinvoke $r1.<org.hibernate.internal.util.collections.Stack: java.lang.Object pop()>() 

(declare-const var339!1 var1724)
(define-const var2731 var1724 (graphStack/-613307515 var1497!1)) ; Statement: $r2 = r0.<org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy: org.hibernate.internal.util.collections.Stack graphStack> 
(define-const var1382 Bool (var1724_isEmpty/2096372522 var2731)) ; Statement: $z0 = interfaceinvoke $r2.<org.hibernate.internal.util.collections.Stack: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r15 = new org.hibernate.persister.walking.spi.WalkingException 
(assert (= (ite var1382 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1287 var3838 var3838-init) ; Statement: $r15 = new org.hibernate.persister.walking.spi.WalkingException 
(define-const var3665 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3665)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3665!1 String)
(assert (= var3665!1 ""))
(assert true)
(define-const var2913 String (append/672562846 var3665!1 "Internal stack error [")) ; Statement: $r6 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Internal stack error [") 
(declare-const var3665!2 String)
(assert (= var3665!2 (str.++ var3665!1 "Internal stack error [")))
(define-const var3037 var1724 (graphStack/-613307515 var1497!1)) ; Statement: $r5 = r0.<org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy: org.hibernate.internal.util.collections.Stack graphStack> 
(define-const var1542 Int (var1724_depth/268963523 var3037)) ; Statement: $i0 = interfaceinvoke $r5.<org.hibernate.internal.util.collections.Stack: int depth()>() 
(assert true)
(define-const var2236 String (append/-1001720160 var2913 var1542)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2913!1 String)
(assert (str.prefixof var2913 var2913!1))
(assert true)
(define-const var1707 String (append/672562846 var2236 ", ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2236!1 String)
(assert (= var2236!1 (str.++ var2236 ", ")))
(define-const var1055 var1724 (attributeStack/-613307515 var1497!1)) ; Statement: $r8 = r0.<org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy: org.hibernate.internal.util.collections.Stack attributeStack> 
(define-const var3801 Int (var1724_depth/268963523 var1055)) ; Statement: $i1 = interfaceinvoke $r8.<org.hibernate.internal.util.collections.Stack: int depth()>() 
(assert true)
(define-const var3089 String (append/-1001720160 var1707 var3801)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1707!1 String)
(assert (str.prefixof var1707 var1707!1))
(assert true)
(define-const var3131 String (append/672562846 var3089 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3089!1 String)
(assert (= var3089!1 (str.++ var3089 "]")))
(assert true)
(define-const var2558 String (toString/-2075883882 var3131)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1056956250 var1287 var2558)) ; Statement: specialinvoke $r15.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r12) 

(declare-const var1287!1 var3838)
(declare-const var2558!1 String)
(define-const var1906 var310 (cast-from-var3838-to-var310 var1287!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {finish/631348568=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], void), cast-from-var1703-to-var2758=([org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy], org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy), graphStack/-613307515=([org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy], org.hibernate.internal.util.collections.Stack), var1724_pop/1205358497=([org.hibernate.internal.util.collections.Stack], java.lang.Object), var1724_isEmpty/2096372522=([org.hibernate.internal.util.collections.Stack], boolean), var3838-init=([], org.hibernate.persister.walking.spi.WalkingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1724_depth/268963523=([org.hibernate.internal.util.collections.Stack], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), attributeStack/-613307515=([org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy], org.hibernate.internal.util.collections.Stack), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1056956250=([org.hibernate.persister.walking.spi.WalkingException, java.lang.String], void), cast-from-var3838-to-var310=([org.hibernate.persister.walking.spi.WalkingException], java.lang.Throwable)}
; {var1703=org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy, var1497=r0, var2758=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy, var1724=org.hibernate.internal.util.collections.Stack, var339=$r1, var2731=$r2, var1382=$z0, var3838=org.hibernate.persister.walking.spi.WalkingException, var1287=$r15, var3665=$r14, var2913=$r6, var3037=$r5, var1542=$i0, var2236=$r7, var1707=$r9, var1055=$r8, var3801=$i1, var3089=$r10, var3131=$r11, var2558=$r12, var310=java.lang.Throwable, var1906=$r16, var1709=java.lang.Object}
; {org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy=var1703, r0=var1497, org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy=var2758, org.hibernate.internal.util.collections.Stack=var1724, $r1=var339, $r2=var2731, $z0=var1382, org.hibernate.persister.walking.spi.WalkingException=var3838, $r15=var1287, $r14=var3665, $r6=var2913, $r5=var3037, $i0=var1542, $r7=var2236, $r9=var1707, $r8=var1055, $i1=var3801, $r10=var3089, $r11=var3131, $r12=var2558, java.lang.Throwable=var310, $r16=var1906, java.lang.Object=var1709}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy;	specialinvoke r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: void finish()>();	$r1 = r0.<org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy: org.hibernate.internal.util.collections.Stack graphStack>;	interfaceinvoke $r1.<org.hibernate.internal.util.collections.Stack: java.lang.Object pop()>();	$r2 = r0.<org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy: org.hibernate.internal.util.collections.Stack graphStack>;	$z0 = interfaceinvoke $r2.<org.hibernate.internal.util.collections.Stack: boolean isEmpty()>();	if $z0 == 0 goto $r15 = new org.hibernate.persister.walking.spi.WalkingException;	$r15 = new org.hibernate.persister.walking.spi.WalkingException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Internal stack error [");	$r5 = r0.<org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy: org.hibernate.internal.util.collections.Stack graphStack>;	$i0 = interfaceinvoke $r5.<org.hibernate.internal.util.collections.Stack: int depth()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r8 = r0.<org.hibernate.loader.plan.build.internal.AbstractEntityGraphVisitationStrategy: org.hibernate.internal.util.collections.Stack attributeStack>;	$i1 = interfaceinvoke $r8.<org.hibernate.internal.util.collections.Stack: int depth()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r12);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2
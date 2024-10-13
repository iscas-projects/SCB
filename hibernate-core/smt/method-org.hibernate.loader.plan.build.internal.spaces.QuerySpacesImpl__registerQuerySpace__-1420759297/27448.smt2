(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1743 0)
(declare-sort var1093 0)
(declare-sort var3648 0)
(declare-sort var3685 0)
(declare-sort var927 0)
(declare-sort var495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1093_getUid/-1971155046 (var1093) String)
(declare-fun debugf/47384645 (var3648 String var3685 var3685) void)
(declare-fun cast-from-String-to-var3685 (String) var3685)
(declare-fun cast-from-var1093-to-var3685 (var1093) var3685)
(declare-fun querySpaceByUid/86166741 (var1743) var927)
(declare-fun var927_put/1464166817 (var927 var3685 var3685) var3685)
(declare-fun cast-from-var3685-to-var1093 (var3685) var1093)
(declare-fun var495-init () var495)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var495 String) void)
(declare-const null-var1743 var1743)
(declare-const null-var1093 var1093)
(declare-const var1743-log var3648)
(declare-const var349 var1743) ; Statement: r3 := @this: org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl 
(assert (not (= var349 null-var1743)))
(declare-const var2776 var1093) ; Statement: r0 := @parameter0: org.hibernate.loader.plan.spi.QuerySpace 
(assert (not (= var2776 null-var1093)))
(define-const var2432 var3648 var1743-log) ; Statement: $r1 = <org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: org.jboss.logging.Logger log> 
(define-const var2182 String (var1093_getUid/-1971155046 var2776)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>() 
(assert true)
;(assert (debugf/47384645 var2432 "Adding QuerySpace : uid = %s -> %s]" (cast-from-String-to-var3685 var2182) (cast-from-var1093-to-var3685 var2776))) ; Statement: virtualinvoke $r1.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("Adding QuerySpace : uid = %s -> %s]", $r2, r0) 

(declare-const var2432!1 var3648)
(declare-const var1422 String)
(declare-const var2182!1 String)
(declare-const var2776!1 var1093)
(define-const var699 var927 (querySpaceByUid/86166741 var349)) ; Statement: $r4 = r3.<org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: java.util.Map querySpaceByUid> 
(define-const var1000 String (var1093_getUid/-1971155046 var2776!1)) ; Statement: $r5 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>() 
(define-const var3865 var3685 (var927_put/1464166817 var699 (cast-from-String-to-var3685 var1000) (cast-from-var1093-to-var3685 var2776!1))) ; Statement: $r6 = interfaceinvoke $r4.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, r0) 
(define-const var1732 var1093 (cast-from-var3685-to-var1093 var3865)) ; Statement: r7 = (org.hibernate.loader.plan.spi.QuerySpace) $r6 
 ; Statement: if r7 == null goto return 
(assert (not (= var1732 null-var1093))) ; Negate: Cond: r7 == null  
(define-const var3989 var495 var495-init) ; Statement: $r8 = new java.lang.IllegalStateException 
(define-const var3335 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3335)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3335!1 String)
(assert (= var3335!1 ""))
(assert true)
(define-const var576 String (append/672562846 var3335!1 "Encountered duplicate QuerySpace uid : ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Encountered duplicate QuerySpace uid : ") 
(declare-const var3335!2 String)
(assert (= var3335!2 (str.++ var3335!1 "Encountered duplicate QuerySpace uid : ")))
(define-const var1243 String (var1093_getUid/-1971155046 var2776!1)) ; Statement: $r10 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>() 
(assert true)
(define-const var2450 String (append/672562846 var576 var1243)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var576!1 String)
(assert (= var576!1 (str.++ var576 var1243)))
(assert true)
(define-const var2858 String (toString/-2075883882 var2450)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3989 var2858)) ; Statement: specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r13) 

(declare-const var3989!1 var495)
(declare-const var2858!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1093_getUid/-1971155046=([org.hibernate.loader.plan.spi.QuerySpace], java.lang.String), debugf/47384645=([org.jboss.logging.Logger, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-String-to-var3685=([java.lang.String], java.lang.Object), cast-from-var1093-to-var3685=([org.hibernate.loader.plan.spi.QuerySpace], java.lang.Object), querySpaceByUid/86166741=([org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl], java.util.Map), var927_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3685-to-var1093=([java.lang.Object], org.hibernate.loader.plan.spi.QuerySpace), var495-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1743=org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl, var349=r3, var1093=org.hibernate.loader.plan.spi.QuerySpace, var2776=r0, var3648=org.jboss.logging.Logger, var2432=$r1, var2182=$r2, var3685=java.lang.Object, var1422="Adding QuerySpace : uid = %s -> %s]", var927=java.util.Map, var699=$r4, var1000=$r5, var3865=$r6, var1732=r7, var495=java.lang.IllegalStateException, var3989=$r8, var3335=$r9, var576=$r11, var1243=$r10, var2450=$r12, var2858=$r13}
; {org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl=var1743, r3=var349, org.hibernate.loader.plan.spi.QuerySpace=var1093, r0=var2776, org.jboss.logging.Logger=var3648, $r1=var2432, $r2=var2182, java.lang.Object=var3685, "Adding QuerySpace : uid = %s -> %s]"=var1422, java.util.Map=var927, $r4=var699, $r5=var1000, $r6=var3865, r7=var1732, java.lang.IllegalStateException=var495, $r8=var3989, $r9=var3335, $r11=var576, $r10=var1243, $r12=var2450, $r13=var2858}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl;	r0 := @parameter0: org.hibernate.loader.plan.spi.QuerySpace;	$r1 = <org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: org.jboss.logging.Logger log>;	$r2 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>();	virtualinvoke $r1.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("Adding QuerySpace : uid = %s -> %s]", $r2, r0);	$r4 = r3.<org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: java.util.Map querySpaceByUid>;	$r5 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>();	$r6 = interfaceinvoke $r4.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, r0);	r7 = (org.hibernate.loader.plan.spi.QuerySpace) $r6;	if r7 == null goto return;	$r8 = new java.lang.IllegalStateException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Encountered duplicate QuerySpace uid : ");	$r10 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r13);	throw $r8
;block_num 2
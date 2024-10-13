(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3321 0)
(declare-sort var492 0)
(declare-sort var2693 0)
(declare-sort var830 0)
(declare-sort var1935 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var492_getUid/-1971155046 (var492) String)
(declare-fun debugf/47384645 (var2693 String var830 var830) void)
(declare-fun cast-from-String-to-var830 (String) var830)
(declare-fun cast-from-var492-to-var830 (var492) var830)
(declare-fun querySpaceByUid/86166741 (var3321) var1935)
(declare-fun var1935_put/1464166817 (var1935 var830 var830) var830)
(declare-fun cast-from-var830-to-var492 (var830) var492)
(declare-const null-var3321 var3321)
(declare-const null-var492 var492)
(declare-const var3321-log var2693)
(declare-const var3098 var3321) ; Statement: r3 := @this: org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl 
(assert (not (= var3098 null-var3321)))
(declare-const var1217 var492) ; Statement: r0 := @parameter0: org.hibernate.loader.plan.spi.QuerySpace 
(assert (not (= var1217 null-var492)))
(define-const var2573 var2693 var3321-log) ; Statement: $r1 = <org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: org.jboss.logging.Logger log> 
(define-const var3665 String (var492_getUid/-1971155046 var1217)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>() 
(assert true)
;(assert (debugf/47384645 var2573 "Adding QuerySpace : uid = %s -> %s]" (cast-from-String-to-var830 var3665) (cast-from-var492-to-var830 var1217))) ; Statement: virtualinvoke $r1.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("Adding QuerySpace : uid = %s -> %s]", $r2, r0) 

(declare-const var2573!1 var2693)
(declare-const var731 String)
(declare-const var3665!1 String)
(declare-const var1217!1 var492)
(define-const var780 var1935 (querySpaceByUid/86166741 var3098)) ; Statement: $r4 = r3.<org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: java.util.Map querySpaceByUid> 
(define-const var2563 String (var492_getUid/-1971155046 var1217!1)) ; Statement: $r5 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>() 
(define-const var1766 var830 (var1935_put/1464166817 var780 (cast-from-String-to-var830 var2563) (cast-from-var492-to-var830 var1217!1))) ; Statement: $r6 = interfaceinvoke $r4.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, r0) 
(define-const var2665 var492 (cast-from-var830-to-var492 var1766)) ; Statement: r7 = (org.hibernate.loader.plan.spi.QuerySpace) $r6 
 ; Statement: if r7 == null goto return 
(assert (= var2665 null-var492)) ; Cond: r7 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var492_getUid/-1971155046=([org.hibernate.loader.plan.spi.QuerySpace], java.lang.String), debugf/47384645=([org.jboss.logging.Logger, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-String-to-var830=([java.lang.String], java.lang.Object), cast-from-var492-to-var830=([org.hibernate.loader.plan.spi.QuerySpace], java.lang.Object), querySpaceByUid/86166741=([org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl], java.util.Map), var1935_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var830-to-var492=([java.lang.Object], org.hibernate.loader.plan.spi.QuerySpace)}
; {var3321=org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl, var3098=r3, var492=org.hibernate.loader.plan.spi.QuerySpace, var1217=r0, var2693=org.jboss.logging.Logger, var2573=$r1, var3665=$r2, var830=java.lang.Object, var731="Adding QuerySpace : uid = %s -> %s]", var1935=java.util.Map, var780=$r4, var2563=$r5, var1766=$r6, var2665=r7}
; {org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl=var3321, r3=var3098, org.hibernate.loader.plan.spi.QuerySpace=var492, r0=var1217, org.jboss.logging.Logger=var2693, $r1=var2573, $r2=var3665, java.lang.Object=var830, "Adding QuerySpace : uid = %s -> %s]"=var731, java.util.Map=var1935, $r4=var780, $r5=var2563, $r6=var1766, r7=var2665}
;seq 
;cnt {}
;stmts r3 := @this: org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl;	r0 := @parameter0: org.hibernate.loader.plan.spi.QuerySpace;	$r1 = <org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: org.jboss.logging.Logger log>;	$r2 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>();	virtualinvoke $r1.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("Adding QuerySpace : uid = %s -> %s]", $r2, r0);	$r4 = r3.<org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: java.util.Map querySpaceByUid>;	$r5 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>();	$r6 = interfaceinvoke $r4.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, r0);	r7 = (org.hibernate.loader.plan.spi.QuerySpace) $r6;	if r7 == null goto return;	return
;block_num 2
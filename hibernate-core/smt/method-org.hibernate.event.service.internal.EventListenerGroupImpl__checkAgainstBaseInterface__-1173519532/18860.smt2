(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var494 0)
(declare-sort var2359 0)
(declare-sort var405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun eventType/803848623 (var494) var405)
(declare-fun baseListenerInterface/-372647481 (var405) ClassObject)
(declare-fun isInstance/451912363 (ClassObject var2359) Bool)
(declare-const null-var494 var494)
(declare-const null-var2359 var2359)
(declare-const var341 var494) ; Statement: r0 := @this: org.hibernate.event.service.internal.EventListenerGroupImpl 
(assert (not (= var341 null-var494)))
(declare-const var3577 var2359) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3577 null-var2359)))
(define-const var636 var405 (eventType/803848623 var341)) ; Statement: $r1 = r0.<org.hibernate.event.service.internal.EventListenerGroupImpl: org.hibernate.event.spi.EventType eventType> 
(assert true)
(define-const var2949 ClassObject (baseListenerInterface/-372647481 var636)) ; Statement: $r3 = virtualinvoke $r1.<org.hibernate.event.spi.EventType: java.lang.Class baseListenerInterface()>() 
(assert true)
(define-const var3349 Bool (isInstance/451912363 var2949 var3577)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Class: boolean isInstance(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3349 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {eventType/803848623=([org.hibernate.event.service.internal.EventListenerGroupImpl], org.hibernate.event.spi.EventType), baseListenerInterface/-372647481=([org.hibernate.event.spi.EventType], java.lang.Class), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean)}
; {var494=org.hibernate.event.service.internal.EventListenerGroupImpl, var341=r0, var2359=java.lang.Object, var3577=r2, var405=org.hibernate.event.spi.EventType, var636=$r1, var2949=$r3, var3349=$z0}
; {org.hibernate.event.service.internal.EventListenerGroupImpl=var494, r0=var341, java.lang.Object=var2359, r2=var3577, org.hibernate.event.spi.EventType=var405, $r1=var636, $r3=var2949, $z0=var3349}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.event.service.internal.EventListenerGroupImpl;	r2 := @parameter0: java.lang.Object;	$r1 = r0.<org.hibernate.event.service.internal.EventListenerGroupImpl: org.hibernate.event.spi.EventType eventType>;	$r3 = virtualinvoke $r1.<org.hibernate.event.spi.EventType: java.lang.Class baseListenerInterface()>();	$z0 = virtualinvoke $r3.<java.lang.Class: boolean isInstance(java.lang.Object)>(r2);	if $z0 != 0 goto return;	return
;block_num 2
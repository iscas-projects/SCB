(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var816 0)
(declare-sort var998 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isReadOnlySettingAvailable/-1072136912 (var816) Bool)
(declare-fun readOnlyBeforeAttachedToSession/752502022 (var816) var998)
(declare-const null-var816 var816)
(declare-const var555 var816) ; Statement: r0 := @this: org.hibernate.proxy.AbstractLazyInitializer 
(assert (not (= var555 null-var816)))
(assert true)
(define-const var995 Bool (isReadOnlySettingAvailable/-1072136912 var555)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.proxy.AbstractLazyInitializer: boolean isReadOnlySettingAvailable()>() 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.Boolean readOnlyBeforeAttachedToSession> 
(assert (= (ite var995 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2212 var998 (readOnlyBeforeAttachedToSession/752502022 var555)) ; Statement: $r1 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.Boolean readOnlyBeforeAttachedToSession> 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isReadOnlySettingAvailable/-1072136912=([org.hibernate.proxy.AbstractLazyInitializer], boolean), readOnlyBeforeAttachedToSession/752502022=([org.hibernate.proxy.AbstractLazyInitializer], java.lang.Boolean)}
; {var816=org.hibernate.proxy.AbstractLazyInitializer, var555=r0, var995=$z0, var998=java.lang.Boolean, var2212=$r1}
; {org.hibernate.proxy.AbstractLazyInitializer=var816, r0=var555, $z0=var995, java.lang.Boolean=var998, $r1=var2212}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.proxy.AbstractLazyInitializer;	$z0 = virtualinvoke r0.<org.hibernate.proxy.AbstractLazyInitializer: boolean isReadOnlySettingAvailable()>();	if $z0 == 0 goto $r1 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.Boolean readOnlyBeforeAttachedToSession>;	$r1 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.Boolean readOnlyBeforeAttachedToSession>;	return $r1
;block_num 2
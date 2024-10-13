(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var335 0)
(declare-sort var638 0)
(declare-sort var1946 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isReadOnlySettingAvailable/-1072136912 (var335) Bool)
(declare-fun readOnlyBeforeAttachedToSession/752502022 (var335) var638)
(declare-fun sessionFactoryUuid/752502022 (var335) String)
(declare-fun allowLoadOutsideTransaction/752502022 (var335) Bool)
(declare-const null-var335 var335)
(declare-const null-var638 var638)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3611 var335) ; Statement: r0 := @this: org.hibernate.proxy.AbstractLazyInitializer 
(assert (not (= var3611 null-var335)))
(declare-const var1386 var638) ; Statement: r1 := @parameter0: java.lang.Boolean 
(assert (not (= var1386 null-var638)))
(declare-const var1003 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1003 null-String)))
(declare-const var631 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var631 null-Bool)))
(assert true)
(define-const var1474 Bool (isReadOnlySettingAvailable/-1072136912 var3611)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.proxy.AbstractLazyInitializer: boolean isReadOnlySettingAvailable()>() 
 ; Statement: if $z0 == 0 goto r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.Boolean readOnlyBeforeAttachedToSession> = r1 
(assert (= (ite var1474 1 0) 0)) ; Cond: $z0 == 0 
(declare-const var3611!1 var335)
(assert (not (= var3611!1 null-var335)))
(assert (= (readOnlyBeforeAttachedToSession/752502022 var3611!1) var1386)) ; Statement: r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.Boolean readOnlyBeforeAttachedToSession> = r1 
(declare-const var3611!2 var335)
(assert (not (= var3611!2 null-var335)))
(assert (= (sessionFactoryUuid/752502022 var3611!2) var1003)) ; Statement: r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.String sessionFactoryUuid> = r2 
(declare-const var3611!3 var335)
(assert (not (= var3611!3 null-var335)))
(assert (= (allowLoadOutsideTransaction/752502022 var3611!3) var631)) ; Statement: r0.<org.hibernate.proxy.AbstractLazyInitializer: boolean allowLoadOutsideTransaction> = z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isReadOnlySettingAvailable/-1072136912=([org.hibernate.proxy.AbstractLazyInitializer], boolean), readOnlyBeforeAttachedToSession/752502022=([org.hibernate.proxy.AbstractLazyInitializer], java.lang.Boolean), sessionFactoryUuid/752502022=([org.hibernate.proxy.AbstractLazyInitializer], java.lang.String), allowLoadOutsideTransaction/752502022=([org.hibernate.proxy.AbstractLazyInitializer], boolean)}
; {var335=org.hibernate.proxy.AbstractLazyInitializer, var3611=r0, var638=java.lang.Boolean, var1386=r1, var1003=r2, var1946=null_type, var631=z1, var1474=$z0}
; {org.hibernate.proxy.AbstractLazyInitializer=var335, r0=var3611, java.lang.Boolean=var638, r1=var1386, r2=var1003, null_type=var1946, z1=var631, $z0=var1474}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.proxy.AbstractLazyInitializer;	r1 := @parameter0: java.lang.Boolean;	r2 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	$z0 = virtualinvoke r0.<org.hibernate.proxy.AbstractLazyInitializer: boolean isReadOnlySettingAvailable()>();	if $z0 == 0 goto r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.Boolean readOnlyBeforeAttachedToSession> = r1;	r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.Boolean readOnlyBeforeAttachedToSession> = r1;	r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.String sessionFactoryUuid> = r2;	r0.<org.hibernate.proxy.AbstractLazyInitializer: boolean allowLoadOutsideTransaction> = z1;	return
;block_num 2
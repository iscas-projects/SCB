(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var890 0)
(declare-sort var1594 0)
(declare-sort var1013 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parameterMetadata/-1176242348 (var890) var1594)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var1594_getQueryParameter/969910513 (var1594 Int) var1013)
(declare-const null-var890 var890)
(declare-const null-Int Int)
(declare-const null-var1013 var1013)
(declare-const var631 var890) ; Statement: r0 := @this: org.hibernate.query.internal.QueryParameterBindingsImpl 
(assert (not (= var631 null-var890)))
(declare-const var1445 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1445 null-Int)))
(define-const var33 var1594 (parameterMetadata/-1176242348 var631)) ; Statement: $r1 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata> 
(define-const var2438 Int (Int_valueOf/-1371140006 var1445)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var2714 var1013 (var1594_getQueryParameter/969910513 var33 var2438)) ; Statement: r3 = interfaceinvoke $r1.<org.hibernate.query.ParameterMetadata: org.hibernate.query.QueryParameter getQueryParameter(java.lang.Integer)>($r2) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var2714 null-var1013))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {parameterMetadata/-1176242348=([org.hibernate.query.internal.QueryParameterBindingsImpl], org.hibernate.query.ParameterMetadata), Int_valueOf/-1371140006=([int], java.lang.Integer), var1594_getQueryParameter/969910513=([org.hibernate.query.ParameterMetadata, java.lang.Integer], org.hibernate.query.QueryParameter)}
; {var890=org.hibernate.query.internal.QueryParameterBindingsImpl, var631=r0, var1445=i0, var1594=org.hibernate.query.ParameterMetadata, var33=$r1, var2438=$r2, var1013=org.hibernate.query.QueryParameter, var2714=r3}
; {org.hibernate.query.internal.QueryParameterBindingsImpl=var890, r0=var631, i0=var1445, org.hibernate.query.ParameterMetadata=var1594, $r1=var33, $r2=var2438, org.hibernate.query.QueryParameter=var1013, r3=var2714}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.internal.QueryParameterBindingsImpl;	i0 := @parameter0: int;	$r1 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	r3 = interfaceinvoke $r1.<org.hibernate.query.ParameterMetadata: org.hibernate.query.QueryParameter getQueryParameter(java.lang.Integer)>($r2);	if r3 != null goto return r3;	return r3
;block_num 2
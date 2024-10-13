(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-const null-var2489 var2489)
(declare-const null-Bool Bool)
(declare-const var2302 var2489) ; Statement: r1 := @this: org.hibernate.dialect.H2Dialect 
(assert (not (= var2302 null-var2489)))
(declare-const var3266 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3266 null-Bool)))
(define-const var2681 String (String_valueOf/-1973653463 var3266)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0) 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-1973653463=([boolean], java.lang.String)}
; {var2489=org.hibernate.dialect.H2Dialect, var2302=r1, var3266=z0, var2681=$r0}
; {org.hibernate.dialect.H2Dialect=var2489, r1=var2302, z0=var3266, $r0=var2681}
;seq <java.lang.String: java.lang.String valueOf(boolean)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 1}
;stmts r1 := @this: org.hibernate.dialect.H2Dialect;	z0 := @parameter0: boolean;	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);	return $r0
;block_num 1
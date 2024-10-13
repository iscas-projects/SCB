(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-const null-var2934 var2934)
(declare-const null-Bool Bool)
(declare-const var852 var2934) ; Statement: r1 := @this: org.hibernate.dialect.HSQLDialect 
(assert (not (= var852 null-var2934)))
(declare-const var2323 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2323 null-Bool)))
(define-const var1025 String (String_valueOf/-1973653463 var2323)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0) 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-1973653463=([boolean], java.lang.String)}
; {var2934=org.hibernate.dialect.HSQLDialect, var852=r1, var2323=z0, var1025=$r0}
; {org.hibernate.dialect.HSQLDialect=var2934, r1=var852, z0=var2323, $r0=var1025}
;seq <java.lang.String: java.lang.String valueOf(boolean)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 1}
;stmts r1 := @this: org.hibernate.dialect.HSQLDialect;	z0 := @parameter0: boolean;	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);	return $r0
;block_num 1
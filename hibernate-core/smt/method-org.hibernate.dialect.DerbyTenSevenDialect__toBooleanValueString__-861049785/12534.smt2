(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1012 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-const null-var1012 var1012)
(declare-const null-Bool Bool)
(declare-const var1141 var1012) ; Statement: r1 := @this: org.hibernate.dialect.DerbyTenSevenDialect 
(assert (not (= var1141 null-var1012)))
(declare-const var322 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var322 null-Bool)))
(define-const var3537 String (String_valueOf/-1973653463 var322)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0) 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-1973653463=([boolean], java.lang.String)}
; {var1012=org.hibernate.dialect.DerbyTenSevenDialect, var1141=r1, var322=z0, var3537=$r0}
; {org.hibernate.dialect.DerbyTenSevenDialect=var1012, r1=var1141, z0=var322, $r0=var3537}
;seq <java.lang.String: java.lang.String valueOf(boolean)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 1}
;stmts r1 := @this: org.hibernate.dialect.DerbyTenSevenDialect;	z0 := @parameter0: boolean;	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);	return $r0
;block_num 1
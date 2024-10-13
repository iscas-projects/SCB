(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3659 0)
(declare-sort var3016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3016_name/1646619874 (var3016) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3659 var3659)
(declare-const null-var3016 var3016)
(declare-const var1569 var3659) ; Statement: r2 := @this: org.hibernate.cfg.annotations.MapBinder 
(assert (not (= var1569 null-var3659)))
(declare-const var3345 var3016) ; Statement: r0 := @parameter0: javax.persistence.AttributeOverride 
(assert (not (= var3345 null-var3016)))
(define-const var844 String (var3016_name/1646619874 var3345)) ; Statement: $r1 = interfaceinvoke r0.<javax.persistence.AttributeOverride: java.lang.String name()>() 
(assert true)
(define-const var1147 Bool (startsWith/-1785782452 var844 "key.")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("key.") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3016_name/1646619874=([javax.persistence.AttributeOverride], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3659=org.hibernate.cfg.annotations.MapBinder, var1569=r2, var3016=javax.persistence.AttributeOverride, var3345=r0, var844=$r1, var1147=$z0}
; {org.hibernate.cfg.annotations.MapBinder=var3659, r2=var1569, javax.persistence.AttributeOverride=var3016, r0=var3345, $r1=var844, $z0=var1147}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.cfg.annotations.MapBinder;	r0 := @parameter0: javax.persistence.AttributeOverride;	$r1 = interfaceinvoke r0.<javax.persistence.AttributeOverride: java.lang.String name()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("key.");	return $z0
;block_num 1
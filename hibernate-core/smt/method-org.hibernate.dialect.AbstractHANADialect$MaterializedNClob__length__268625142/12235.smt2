(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun data/-934077959 (var3233) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3233 var3233)
(declare-const var707 var3233) ; Statement: r0 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob 
(assert (not (= var707 null-var3233)))
(define-const var141 String (data/-934077959 var707)) ; Statement: $r1 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data> 
(assert true)
(define-const var2033 Int (length/-134980193 var141)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var1474 Int (cast-from-Int-to-Int var2033)) ; Statement: $l1 = (long) $i0 
 ; Statement: return $l1 
(check-sat)
(get-model)
(get-unsat-core)
; {data/-934077959=([org.hibernate.dialect.AbstractHANADialect$MaterializedNClob], java.lang.String), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], long)}
; {var3233=org.hibernate.dialect.AbstractHANADialect$MaterializedNClob, var707=r0, var141=$r1, var2033=$i0, var1474=$l1}
; {org.hibernate.dialect.AbstractHANADialect$MaterializedNClob=var3233, r0=var707, $r1=var141, $i0=var2033, $l1=var1474}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob;	$r1 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$l1 = (long) $i0;	return $l1
;block_num 1
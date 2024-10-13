(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var807 0)
(declare-sort var510 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun distinct/982681259 (var807) Bool)
(declare-fun toString/465441083 (var510) String)
(declare-fun cast-from-var807-to-var510 (var807) var510)
(declare-const null-var807 var807)
(declare-const var2858 var807) ; Statement: r0 := @this: org.hibernate.criterion.CountProjection 
(assert (not (= var2858 null-var807)))
(define-const var2258 Bool (distinct/982681259 var2858)) ; Statement: $z0 = r0.<org.hibernate.criterion.CountProjection: boolean distinct> 
 ; Statement: if $z0 == 0 goto $r1 = specialinvoke r0.<org.hibernate.criterion.AggregateProjection: java.lang.String toString()>() 
(assert (= (ite var2258 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3781 String (toString/465441083 (cast-from-var807-to-var510 var2858))) ; Statement: $r1 = specialinvoke r0.<org.hibernate.criterion.AggregateProjection: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {distinct/982681259=([org.hibernate.criterion.CountProjection], boolean), toString/465441083=([org.hibernate.criterion.AggregateProjection], java.lang.String), cast-from-var807-to-var510=([org.hibernate.criterion.CountProjection], org.hibernate.criterion.AggregateProjection)}
; {var807=org.hibernate.criterion.CountProjection, var2858=r0, var2258=$z0, var510=org.hibernate.criterion.AggregateProjection, var3781=$r1}
; {org.hibernate.criterion.CountProjection=var807, r0=var2858, $z0=var2258, org.hibernate.criterion.AggregateProjection=var510, $r1=var3781}
;seq <org.hibernate.criterion.AggregateProjection: java.lang.String toString()>
;cnt {}
;stmts r0 := @this: org.hibernate.criterion.CountProjection;	$z0 = r0.<org.hibernate.criterion.CountProjection: boolean distinct>;	if $z0 == 0 goto $r1 = specialinvoke r0.<org.hibernate.criterion.AggregateProjection: java.lang.String toString()>();	$r1 = specialinvoke r0.<org.hibernate.criterion.AggregateProjection: java.lang.String toString()>();	return $r1
;block_num 2
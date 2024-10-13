(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3135 0)
(declare-sort var2209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyHolder/1550026818 (var3135) var2209)
(declare-const null-var3135 var3135)
(declare-const null-var2209 var2209)
(declare-const var3301 var3135) ; Statement: r0 := @this: org.hibernate.cfg.annotations.CollectionBinder 
(assert (not (= var3301 null-var3135)))
(define-const var986 var2209 (propertyHolder/1550026818 var3301)) ; Statement: $r1 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.cfg.PropertyHolder propertyHolder> 
 ; Statement: if $r1 == null goto return "" 
(assert (= var986 null-var2209)) ; Cond: $r1 == null 
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyHolder/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], org.hibernate.cfg.PropertyHolder)}
; {var3135=org.hibernate.cfg.annotations.CollectionBinder, var3301=r0, var2209=org.hibernate.cfg.PropertyHolder, var986=$r1}
; {org.hibernate.cfg.annotations.CollectionBinder=var3135, r0=var3301, org.hibernate.cfg.PropertyHolder=var2209, $r1=var986}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.cfg.annotations.CollectionBinder;	$r1 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.cfg.PropertyHolder propertyHolder>;	if $r1 == null goto return "";	return ""
;block_num 2
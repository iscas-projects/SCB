(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1874 var1874)
(declare-const null-Int Int)
(declare-const var842 var1874) ; Statement: r4 := @this: org.hibernate.dialect.Teradata14Dialect 
(assert (not (= var842 null-var1874)))
(declare-const var1411 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1411 null-Int)))
 ; Statement: if i0 != 0 goto return " Locking row for write " 
(assert (not (= var1411 0))) ; Cond: i0 != 0 
 ; Statement: return " Locking row for write " 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1874=org.hibernate.dialect.Teradata14Dialect, var842=r4, var1411=i0}
; {org.hibernate.dialect.Teradata14Dialect=var1874, r4=var842, i0=var1411}
;seq 
;cnt {}
;stmts r4 := @this: org.hibernate.dialect.Teradata14Dialect;	i0 := @parameter0: int;	if i0 != 0 goto return " Locking row for write ";	return " Locking row for write "
;block_num 2
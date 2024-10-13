(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3571 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3571 var3571)
(declare-const null-Int Int)
(declare-const var1295 var3571) ; Statement: r4 := @this: org.hibernate.dialect.Teradata14Dialect 
(assert (not (= var1295 null-var3571)))
(declare-const var1643 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1643 null-Int)))
 ; Statement: if i0 != 0 goto return " Locking row for read  " 
(assert (not (= var1643 0))) ; Cond: i0 != 0 
 ; Statement: return " Locking row for read  " 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3571=org.hibernate.dialect.Teradata14Dialect, var1295=r4, var1643=i0}
; {org.hibernate.dialect.Teradata14Dialect=var3571, r4=var1295, i0=var1643}
;seq 
;cnt {}
;stmts r4 := @this: org.hibernate.dialect.Teradata14Dialect;	i0 := @parameter0: int;	if i0 != 0 goto return " Locking row for read  ";	return " Locking row for read  "
;block_num 2
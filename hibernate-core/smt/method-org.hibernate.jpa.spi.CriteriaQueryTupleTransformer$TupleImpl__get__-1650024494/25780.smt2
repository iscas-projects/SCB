(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1604 0)
(declare-sort var2262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tuples/-945384285 (var1604) (Array Int var2262))
(declare-fun getLength-Arr-var2262-1 ((Array Int var2262)) Int)
(declare-const null-var1604 var1604)
(declare-const null-Int Int)
(declare-const var2208 var1604) ; Statement: r0 := @this: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl 
(assert (not (= var2208 null-var1604)))
(declare-const var3533 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3533 null-Int)))
(define-const var1806 (Array Int var2262) (tuples/-945384285 var2208)) ; Statement: $r1 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> 
(define-const var956 Int (getLength-Arr-var2262-1 var1806)) ; Statement: $i1 = lengthof $r1 
 ; Statement: if i0 < $i1 goto $r2 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> 
(assert (< var3533 var956)) ; Cond: i0 < $i1 
(define-const var2014 (Array Int var2262) (tuples/-945384285 var2208)) ; Statement: $r2 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> 
(define-const var411 var2262 (select var2014 var3533)) ; Statement: $r3 = $r2[i0] 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {tuples/-945384285=([org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl], java.lang.Object[]), getLength-Arr-var2262-1=([java.lang.Object[]], int)}
; {var1604=org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl, var2208=r0, var3533=i0, var2262=java.lang.Object, var1806=$r1, var956=$i1, var2014=$r2, var411=$r3}
; {org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl=var1604, r0=var2208, i0=var3533, java.lang.Object=var2262, $r1=var1806, $i1=var956, $r2=var2014, $r3=var411}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl;	i0 := @parameter0: int;	$r1 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples>;	$i1 = lengthof $r1;	if i0 < $i1 goto $r2 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples>;	$r2 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples>;	$r3 = $r2[i0];	return $r3
;block_num 2
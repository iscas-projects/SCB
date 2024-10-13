(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3313 0)
(declare-sort var1474 0)
(declare-sort var824 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun tuples/-945384285 (var3313) (Array Int var824))
(declare-const null-var3313 var3313)
(declare-const null-String String)
(declare-const var1000 var3313) ; Statement: r0 := @this: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl 
(assert (not (= var1000 null-var3313)))
(declare-const var499 String) ; Statement: r15 := @parameter0: java.lang.String 
(assert (not (= var499 null-String)))
(define-const var3119 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
(define-const var2213 Int var3119) ; Statement: i1 = $i4 
 ; Statement: if r15 == null goto (branch) 
(assert (= var499 null-String)) ; Cond: r15 == null 
 ; Statement: if i1 >= 0 goto $r1 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> 
(assert (>= var2213 0)) ; Cond: i1 >= 0 
(define-const var3428 (Array Int var824) (tuples/-945384285 var1000)) ; Statement: $r1 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> 
(define-const var3771 var824 (select var3428 var2213)) ; Statement: $r2 = $r1[i1] 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), tuples/-945384285=([org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl], java.lang.Object[])}
; {var3313=org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl, var1000=r0, var499=r15, var1474=null_type, var3119=$i4, var2213=i1, var824=java.lang.Object, var3428=$r1, var3771=$r2}
; {org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl=var3313, r0=var1000, r15=var499, null_type=var1474, $i4=var3119, i1=var2213, java.lang.Object=var824, $r1=var3428, $r2=var3771}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl;	r15 := @parameter0: java.lang.String;	$i4 = (int) -1;	i1 = $i4;	if r15 == null goto (branch);	if i1 >= 0 goto $r1 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples>;	$r1 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples>;	$r2 = $r1[i1];	return $r2
;block_num 3
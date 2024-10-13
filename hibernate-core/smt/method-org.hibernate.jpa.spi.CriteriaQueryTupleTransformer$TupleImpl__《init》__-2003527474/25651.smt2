(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1074 0)
(declare-sort var3220 0)
(declare-sort var1053 0)
(declare-sort var1780 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-945384285 (var1074) var3220)
(declare-fun <init>/-279557996 (var1053) void)
(declare-fun cast-from-var1074-to-var1053 (var1074) var1053)
(declare-fun getLength-Arr-var1053-1 ((Array Int var1053)) Int)
(declare-fun var3220_access$100/-1993979914 (var3220) var1780)
(declare-fun var1780_size/-959786421 (var1780) Int)
(declare-fun tuples/-945384285 (var1074) (Array Int var1053))
(declare-const null-var1074 var1074)
(declare-const null-var3220 var3220)
(declare-const null-__Array__Int__var1053__ (Array Int var1053))
(declare-const var3588 var1074) ; Statement: r0 := @this: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl 
(assert (not (= var3588 null-var1074)))
(declare-const var3895 var3220) ; Statement: r1 := @parameter0: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer 
(assert (not (= var3895 null-var3220)))
(declare-const var2749 (Array Int var1053)) ; Statement: r2 := @parameter1: java.lang.Object[] 
(assert (not (= var2749 null-__Array__Int__var1053__)))
(declare-const var3588!1 var1074)
(assert (not (= var3588!1 null-var1074)))
(assert (= (this$0/-945384285 var3588!1) var3895)) ; Statement: r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var1074-to-var1053 var3588!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3588!2 var1074)
(define-const var2306 Int (getLength-Arr-var1053-1 var2749)) ; Statement: $i1 = lengthof r2 
(define-const var2845 var1780 (var3220_access$100/-1993979914 var3895)) ; Statement: $r3 = staticinvoke <org.hibernate.jpa.spi.CriteriaQueryTupleTransformer: java.util.List access$100(org.hibernate.jpa.spi.CriteriaQueryTupleTransformer)>(r1) 
(define-const var1619 Int (var1780_size/-959786421 var2845)) ; Statement: $i0 = interfaceinvoke $r3.<java.util.List: int size()>() 
 ; Statement: if $i1 == $i0 goto r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> = r2 
(assert (= var2306 var1619)) ; Cond: $i1 == $i0 
(declare-const var3588!3 var1074)
(assert (not (= var3588!3 null-var1074)))
(assert (= (tuples/-945384285 var3588!3) var2749)) ; Statement: r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-945384285=([org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl], org.hibernate.jpa.spi.CriteriaQueryTupleTransformer), <init>/-279557996=([java.lang.Object], void), cast-from-var1074-to-var1053=([org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl], java.lang.Object), getLength-Arr-var1053-1=([java.lang.Object[]], int), var3220_access$100/-1993979914=([org.hibernate.jpa.spi.CriteriaQueryTupleTransformer], java.util.List), var1780_size/-959786421=([java.util.List], int), tuples/-945384285=([org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl], java.lang.Object[])}
; {var1074=org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl, var3588=r0, var3220=org.hibernate.jpa.spi.CriteriaQueryTupleTransformer, var3895=r1, var1053=java.lang.Object, var2749=r2, var2306=$i1, var1780=java.util.List, var2845=$r3, var1619=$i0}
; {org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl=var1074, r0=var3588, org.hibernate.jpa.spi.CriteriaQueryTupleTransformer=var3220, r1=var3895, java.lang.Object=var1053, r2=var2749, $i1=var2306, java.util.List=var1780, $r3=var2845, $i0=var1619}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl;	r1 := @parameter0: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer;	r2 := @parameter1: java.lang.Object[];	r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	$i1 = lengthof r2;	$r3 = staticinvoke <org.hibernate.jpa.spi.CriteriaQueryTupleTransformer: java.util.List access$100(org.hibernate.jpa.spi.CriteriaQueryTupleTransformer)>(r1);	$i0 = interfaceinvoke $r3.<java.util.List: int size()>();	if $i1 == $i0 goto r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> = r2;	r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> = r2;	return
;block_num 2
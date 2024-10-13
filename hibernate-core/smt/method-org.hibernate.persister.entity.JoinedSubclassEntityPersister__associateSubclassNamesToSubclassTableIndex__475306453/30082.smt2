(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1860 0)
(declare-sort var2599 0)
(declare-sort var993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun subclassTableNameClosure/1437194565 (var1860) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var1860 var1860)
(declare-const null-String String)
(declare-const null-var993 var993)
(declare-const null-__Array__Int____Array__Int__String____ (Array Int (Array Int String)))
(declare-const var797 var1860) ; Statement: r0 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister 
(assert (not (= var797 null-var1860)))
(declare-const var2547 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2547 null-String)))
(declare-const var1133 var993) ; Statement: r15 := @parameter1: java.util.Set 
(assert (not (= var1133 null-var993)))
(declare-const var2651 (Array Int (Array Int String))) ; Statement: r12 := @parameter2: java.lang.String[][] 
(assert (not (= var2651 null-__Array__Int____Array__Int__String____)))
(define-const var511 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3391 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var1999 (Array Int String) (subclassTableNameClosure/1437194565 var797)) ; Statement: $r1 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[] subclassTableNameClosure> 
(define-const var1960 Int (getLength-Arr-String-1 var1999)) ; Statement: $i0 = lengthof $r1 
 ; Statement: if i6 >= $i0 goto (branch) 
(assert (>= var3391 var1960)) ; Cond: i6 >= $i0 
 ; Statement: if z1 != 0 goto return 
(assert (not (= (ite var511 1 0) 0))) ; Cond: z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {subclassTableNameClosure/1437194565=([org.hibernate.persister.entity.JoinedSubclassEntityPersister], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var1860=org.hibernate.persister.entity.JoinedSubclassEntityPersister, var797=r0, var2547=r4, var2599=null_type, var993=java.util.Set, var1133=r15, var2651=r12, var511=z1, var3391=i6, var1999=$r1, var1960=$i0}
; {org.hibernate.persister.entity.JoinedSubclassEntityPersister=var1860, r0=var797, r4=var2547, null_type=var2599, java.util.Set=var993, r15=var1133, r12=var2651, z1=var511, i6=var3391, $r1=var1999, $i0=var1960}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister;	r4 := @parameter0: java.lang.String;	r15 := @parameter1: java.util.Set;	r12 := @parameter2: java.lang.String[][];	z1 = 0;	i6 = 0;	$r1 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[] subclassTableNameClosure>;	$i0 = lengthof $r1;	if i6 >= $i0 goto (branch);	if z1 != 0 goto return;	return
;block_num 4
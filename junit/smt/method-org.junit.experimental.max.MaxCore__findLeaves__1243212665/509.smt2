(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1562 0)
(declare-sort var2632 0)
(declare-sort var805 0)
(declare-sort var1004 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getChildren/-464815365 (var2632) var1004)
(declare-fun isEmpty/1321303667 (var1004) Bool)
(declare-fun iterator/529268990 (var1004) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var1562 var1562)
(declare-const null-var2632 var2632)
(declare-const null-var805 var805)
(declare-const var908 var1562) ; Statement: r6 := @this: org.junit.experimental.max.MaxCore 
(assert (not (= var908 null-var1562)))
(declare-const var527 var2632) ; Statement: r10 := @parameter0: org.junit.runner.Description 
(assert (not (= var527 null-var2632)))
(declare-const var1320 var2632) ; Statement: r0 := @parameter1: org.junit.runner.Description 
(assert (not (= var1320 null-var2632)))
(declare-const var292 var805) ; Statement: r7 := @parameter2: java.util.List 
(assert (not (= var292 null-var805)))
(assert true)
(define-const var1693 var1004 (getChildren/-464815365 var1320)) ; Statement: $r1 = virtualinvoke r0.<org.junit.runner.Description: java.util.ArrayList getChildren()>() 
(assert true)
(define-const var1635 Bool (isEmpty/1321303667 var1693)) ; Statement: $z0 = virtualinvoke $r1.<java.util.ArrayList: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<org.junit.runner.Description: java.util.ArrayList getChildren()>() 
(assert (= (ite var1635 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3546 var1004 (getChildren/-464815365 var1320)) ; Statement: $r2 = virtualinvoke r0.<org.junit.runner.Description: java.util.ArrayList getChildren()>() 
(assert true)
(define-const var3292 Iterator (iterator/529268990 var3546)) ; Statement: r3 = virtualinvoke $r2.<java.util.ArrayList: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3258 Bool (Iterator_hasNext/-1669924200 var3292)) ; Statement: $z1 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var3258 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getChildren/-464815365=([org.junit.runner.Description], java.util.ArrayList), isEmpty/1321303667=([java.util.ArrayList], boolean), iterator/529268990=([java.util.ArrayList], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var1562=org.junit.experimental.max.MaxCore, var908=r6, var2632=org.junit.runner.Description, var527=r10, var1320=r0, var805=java.util.List, var292=r7, var1004=java.util.ArrayList, var1693=$r1, var1635=$z0, var3546=$r2, var3292=r3, var3258=$z1}
; {org.junit.experimental.max.MaxCore=var1562, r6=var908, org.junit.runner.Description=var2632, r10=var527, r0=var1320, java.util.List=var805, r7=var292, java.util.ArrayList=var1004, $r1=var1693, $z0=var1635, $r2=var3546, r3=var3292, $z1=var3258}
;seq 
;cnt {}
;stmts r6 := @this: org.junit.experimental.max.MaxCore;	r10 := @parameter0: org.junit.runner.Description;	r0 := @parameter1: org.junit.runner.Description;	r7 := @parameter2: java.util.List;	$r1 = virtualinvoke r0.<org.junit.runner.Description: java.util.ArrayList getChildren()>();	$z0 = virtualinvoke $r1.<java.util.ArrayList: boolean isEmpty()>();	if $z0 == 0 goto $r2 = virtualinvoke r0.<org.junit.runner.Description: java.util.ArrayList getChildren()>();	$r2 = virtualinvoke r0.<org.junit.runner.Description: java.util.ArrayList getChildren()>();	r3 = virtualinvoke $r2.<java.util.ArrayList: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto return;	return
;block_num 4
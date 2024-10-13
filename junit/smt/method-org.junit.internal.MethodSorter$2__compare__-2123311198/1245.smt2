(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var320 0)
(declare-sort var2458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var2458) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var320 var320)
(declare-const null-var2458 var2458)
(declare-const var341 var320) ; Statement: r6 := @this: org.junit.internal.MethodSorter$2 
(assert (not (= var341 null-var320)))
(declare-const var3041 var2458) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var3041 null-var2458)))
(declare-const var1193 var2458) ; Statement: r1 := @parameter1: java.lang.reflect.Method 
(assert (not (= var1193 null-var2458)))
(assert true)
(define-const var1097 String (getName/1227988463 var3041)) ; Statement: $r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2021 String (getName/1227988463 var1193)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var61 Int (compareTo/1411385946 var1097 var2021)) ; Statement: i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var1097 var2021)) (this<=other (str.<= var1097 var2021)) (compareRes (compareTo/1411385946 var1097 var2021))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if i0 == 0 goto $r5 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String toString()>() 
(assert (not (= var61 0))) ; Negate: Cond: i0 == 0  
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var320=org.junit.internal.MethodSorter$2, var341=r6, var2458=java.lang.reflect.Method, var3041=r0, var1193=r1, var1097=$r3, var2021=$r2, var61=i0}
; {org.junit.internal.MethodSorter$2=var320, r6=var341, java.lang.reflect.Method=var2458, r0=var3041, r1=var1193, $r3=var1097, $r2=var2021, i0=var61}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r6 := @this: org.junit.internal.MethodSorter$2;	r0 := @parameter0: java.lang.reflect.Method;	r1 := @parameter1: java.lang.reflect.Method;	$r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>();	i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	if i0 == 0 goto $r5 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String toString()>();	return i0
;block_num 2
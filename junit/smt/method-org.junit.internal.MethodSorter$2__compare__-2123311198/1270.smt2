(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2490 0)
(declare-sort var1576 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1576) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-fun toString/-1020660066 (var1576) String)
(declare-const null-var2490 var2490)
(declare-const null-var1576 var1576)
(declare-const var4 var2490) ; Statement: r6 := @this: org.junit.internal.MethodSorter$2 
(assert (not (= var4 null-var2490)))
(declare-const var925 var1576) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var925 null-var1576)))
(declare-const var644 var1576) ; Statement: r1 := @parameter1: java.lang.reflect.Method 
(assert (not (= var644 null-var1576)))
(assert true)
(define-const var2867 String (getName/1227988463 var925)) ; Statement: $r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1689 String (getName/1227988463 var644)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var126 Int (compareTo/1411385946 var2867 var1689)) ; Statement: i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var2867 var1689)) (this<=other (str.<= var2867 var1689)) (compareRes (compareTo/1411385946 var2867 var1689))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if i0 == 0 goto $r5 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String toString()>() 
(assert (= var126 0)) ; Cond: i0 == 0 
(assert true)
(define-const var450 String (toString/-1020660066 var925)) ; Statement: $r5 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String toString()>() 
(assert true)
(define-const var3604 String (toString/-1020660066 var644)) ; Statement: $r4 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String toString()>() 
(assert true)
(define-const var3502 Int (compareTo/1411385946 var450 var3604)) ; Statement: $i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var450 var3604)) (this<=other (str.<= var450 var3604)) (compareRes (compareTo/1411385946 var450 var3604))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int), toString/-1020660066=([java.lang.reflect.Method], java.lang.String)}
; {var2490=org.junit.internal.MethodSorter$2, var4=r6, var1576=java.lang.reflect.Method, var925=r0, var644=r1, var2867=$r3, var1689=$r2, var126=i0, var450=$r5, var3604=$r4, var3502=$i1}
; {org.junit.internal.MethodSorter$2=var2490, r6=var4, java.lang.reflect.Method=var1576, r0=var925, r1=var644, $r3=var2867, $r2=var1689, i0=var126, $r5=var450, $r4=var3604, $i1=var3502}
;seq <java.lang.String: int compareTo(java.lang.String)>;	<java.lang.reflect.Method: java.lang.String toString()>;	<java.lang.reflect.Method: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 2}
;stmts r6 := @this: org.junit.internal.MethodSorter$2;	r0 := @parameter0: java.lang.reflect.Method;	r1 := @parameter1: java.lang.reflect.Method;	$r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>();	i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	if i0 == 0 goto $r5 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String toString()>();	$r5 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String toString()>();	$r4 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String toString()>();	$i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	return $i1
;block_num 2
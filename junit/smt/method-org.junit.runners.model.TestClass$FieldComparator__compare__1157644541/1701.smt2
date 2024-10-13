(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3321 0)
(declare-sort var2042 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1618348824 (var2042) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var3321 var3321)
(declare-const null-var2042 var2042)
(declare-const var1692 var3321) ; Statement: r4 := @this: org.junit.runners.model.TestClass$FieldComparator 
(assert (not (= var1692 null-var3321)))
(declare-const var3564 var2042) ; Statement: r0 := @parameter0: java.lang.reflect.Field 
(assert (not (= var3564 null-var2042)))
(declare-const var662 var2042) ; Statement: r1 := @parameter1: java.lang.reflect.Field 
(assert (not (= var662 null-var2042)))
(assert true)
(define-const var1932 String (getName/1618348824 var3564)) ; Statement: $r3 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var905 String (getName/1618348824 var662)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var65 Int (compareTo/1411385946 var1932 var905)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var1932 var905)) (this<=other (str.<= var1932 var905)) (compareRes (compareTo/1411385946 var1932 var905))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1618348824=([java.lang.reflect.Field], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var3321=org.junit.runners.model.TestClass$FieldComparator, var1692=r4, var2042=java.lang.reflect.Field, var3564=r0, var662=r1, var1932=$r3, var905=$r2, var65=$i0}
; {org.junit.runners.model.TestClass$FieldComparator=var3321, r4=var1692, java.lang.reflect.Field=var2042, r0=var3564, r1=var662, $r3=var1932, $r2=var905, $i0=var65}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r4 := @this: org.junit.runners.model.TestClass$FieldComparator;	r0 := @parameter0: java.lang.reflect.Field;	r1 := @parameter1: java.lang.reflect.Field;	$r3 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r2 = virtualinvoke r1.<java.lang.reflect.Field: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1
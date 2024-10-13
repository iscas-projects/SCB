(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1312 0)
(declare-sort var1416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-522406933 (var1416) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1312 var1312)
(declare-const null-var1416 var1416)
(declare-const var3800 var1312) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.UsingToStringOrdering 
(assert (not (= var3800 null-var1312)))
(declare-const var2934 var1416) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2934 null-var1416)))
(declare-const var1869 var1416) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1869 null-var1416)))
(assert true)
(define-const var3714 String (toString/-522406933 var2934)) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2040 String (toString/-522406933 var1869)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2695 Int (compareTo/1411385946 var3714 var2040)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var3714 var2040)) (this<=other (str.<= var3714 var2040)) (compareRes (compareTo/1411385946 var3714 var2040))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1312=com.google.javascript.jscomp.jarjar.com.google.common.collect.UsingToStringOrdering, var3800=r4, var1416=java.lang.Object, var2934=r0, var1869=r1, var3714=$r3, var2040=$r2, var2695=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.UsingToStringOrdering=var1312, r4=var3800, java.lang.Object=var1416, r0=var2934, r1=var1869, $r3=var3714, $r2=var2040, $i0=var2695}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.UsingToStringOrdering;	r0 := @parameter0: java.lang.Object;	r1 := @parameter1: java.lang.Object;	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1
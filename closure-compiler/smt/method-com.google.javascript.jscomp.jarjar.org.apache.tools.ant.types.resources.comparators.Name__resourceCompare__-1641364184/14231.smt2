(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2385 0)
(declare-sort var3504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1314741259 (var3504) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var2385 var2385)
(declare-const null-var3504 var3504)
(declare-const var2236 var2385) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.comparators.Name 
(assert (not (= var2236 null-var2385)))
(declare-const var165 var3504) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var165 null-var3504)))
(declare-const var1540 var3504) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var1540 null-var3504)))
(assert true)
(define-const var567 String (getName/1314741259 var165)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>() 
(assert true)
(define-const var1410 String (getName/1314741259 var1540)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>() 
(assert true)
(define-const var432 Int (compareTo/1411385946 var567 var1410)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var567 var1410)) (this<=other (str.<= var567 var1410)) (compareRes (compareTo/1411385946 var567 var1410))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1314741259=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var2385=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.comparators.Name, var2236=r4, var3504=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var165=r0, var1540=r1, var567=$r3, var1410=$r2, var432=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.comparators.Name=var2385, r4=var2236, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var3504, r0=var165, r1=var1540, $r3=var567, $r2=var1410, $i0=var432}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.comparators.Name;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1
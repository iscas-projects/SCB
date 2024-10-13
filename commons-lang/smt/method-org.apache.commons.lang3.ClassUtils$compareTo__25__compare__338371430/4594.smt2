(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var364 0)
(declare-sort var1989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1989-to-String (var1989) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var364 var364)
(declare-const null-var1989 var1989)
(declare-const var2987 var364) ; Statement: $r0 := @this: org.apache.commons.lang3.ClassUtils$compareTo__25 
(assert (not (= var2987 null-var364)))
(declare-const var486 var1989) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var486 null-var1989)))
(declare-const var1753 var1989) ; Statement: $r2 := @parameter1: java.lang.Object 
(assert (not (= var1753 null-var1989)))
(define-const var140 String (cast-from-var1989-to-String var486)) ; Statement: $r3 = (java.lang.String) $r1 
(define-const var68 String (cast-from-var1989-to-String var1753)) ; Statement: $r4 = (java.lang.String) $r2 
(assert true)
(define-const var410 Int (compareTo/1411385946 var140 var68)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var140 var68)) (this<=other (str.<= var140 var68)) (compareRes (compareTo/1411385946 var140 var68))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1989-to-String=([java.lang.Object], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var364=org.apache.commons.lang3.ClassUtils$compareTo__25, var2987=$r0, var1989=java.lang.Object, var486=$r1, var1753=$r2, var140=$r3, var68=$r4, var410=$i0}
; {org.apache.commons.lang3.ClassUtils$compareTo__25=var364, $r0=var2987, java.lang.Object=var1989, $r1=var486, $r2=var1753, $r3=var140, $r4=var68, $i0=var410}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts $r0 := @this: org.apache.commons.lang3.ClassUtils$compareTo__25;	$r1 := @parameter0: java.lang.Object;	$r2 := @parameter1: java.lang.Object;	$r3 = (java.lang.String) $r1;	$r4 = (java.lang.String) $r2;	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r4);	return $i0
;block_num 1
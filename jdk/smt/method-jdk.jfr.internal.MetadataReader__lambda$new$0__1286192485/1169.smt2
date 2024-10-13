(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-2081927433 (var3408) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var3408 var3408)
(declare-const var2566 var3408) ; Statement: r0 := @parameter0: jdk.jfr.internal.Type 
(assert (not (= var2566 null-var3408)))
(declare-const var307 var3408) ; Statement: r1 := @parameter1: jdk.jfr.internal.Type 
(assert (not (= var307 null-var3408)))
(assert true)
(define-const var2455 String (getName/-2081927433 var2566)) ; Statement: $r3 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert true)
(define-const var970 String (getName/-2081927433 var307)) ; Statement: $r2 = virtualinvoke r1.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert true)
(define-const var3648 Int (compareTo/1411385946 var2455 var970)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var2455 var970)) (this<=other (str.<= var2455 var970)) (compareRes (compareTo/1411385946 var2455 var970))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var3408=jdk.jfr.internal.Type, var2566=r0, var307=r1, var2455=$r3, var970=$r2, var3648=$i0}
; {jdk.jfr.internal.Type=var3408, r0=var2566, r1=var307, $r3=var2455, $r2=var970, $i0=var3648}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @parameter0: jdk.jfr.internal.Type;	r1 := @parameter1: jdk.jfr.internal.Type;	$r3 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>();	$r2 = virtualinvoke r1.<jdk.jfr.internal.Type: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1
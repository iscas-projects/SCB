(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2530 0)
(declare-sort var3081 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/614227758 (var3081) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var2530 var2530)
(declare-const null-var3081 var3081)
(declare-const var3919 var2530) ; Statement: r4 := @this: jdk.jfr.internal.dcmd.DCmdCheck$1 
(assert (not (= var3919 null-var2530)))
(declare-const var2984 var3081) ; Statement: r0 := @parameter0: jdk.jfr.EventType 
(assert (not (= var2984 null-var3081)))
(declare-const var2391 var3081) ; Statement: r1 := @parameter1: jdk.jfr.EventType 
(assert (not (= var2391 null-var3081)))
(assert true)
(define-const var2060 String (getName/614227758 var2984)) ; Statement: $r3 = virtualinvoke r0.<jdk.jfr.EventType: java.lang.String getName()>() 
(assert true)
(define-const var3812 String (getName/614227758 var2391)) ; Statement: $r2 = virtualinvoke r1.<jdk.jfr.EventType: java.lang.String getName()>() 
(assert true)
(define-const var3749 Int (compareTo/1411385946 var2060 var3812)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var2060 var3812)) (this<=other (str.<= var2060 var3812)) (compareRes (compareTo/1411385946 var2060 var3812))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/614227758=([jdk.jfr.EventType], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var2530=jdk.jfr.internal.dcmd.DCmdCheck$1, var3919=r4, var3081=jdk.jfr.EventType, var2984=r0, var2391=r1, var2060=$r3, var3812=$r2, var3749=$i0}
; {jdk.jfr.internal.dcmd.DCmdCheck$1=var2530, r4=var3919, jdk.jfr.EventType=var3081, r0=var2984, r1=var2391, $r3=var2060, $r2=var3812, $i0=var3749}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r4 := @this: jdk.jfr.internal.dcmd.DCmdCheck$1;	r0 := @parameter0: jdk.jfr.EventType;	r1 := @parameter1: jdk.jfr.EventType;	$r3 = virtualinvoke r0.<jdk.jfr.EventType: java.lang.String getName()>();	$r2 = virtualinvoke r1.<jdk.jfr.EventType: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1
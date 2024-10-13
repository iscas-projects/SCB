(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1172 0)
(declare-sort var1666 0)
(declare-sort var1976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEventType/-1848430003 (var1172) var1666)
(declare-fun getName/-2081927433 (var1976) String)
(declare-fun cast-from-var1666-to-var1976 (var1666) var1976)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1172 var1172)
(declare-const var3867 var1172) ; Statement: r0 := @parameter0: jdk.jfr.internal.EventControl 
(assert (not (= var3867 null-var1172)))
(declare-const var530 var1172) ; Statement: r2 := @parameter1: jdk.jfr.internal.EventControl 
(assert (not (= var530 null-var1172)))
(assert true)
(define-const var368 var1666 (getEventType/-1848430003 var3867)) ; Statement: $r1 = virtualinvoke r0.<jdk.jfr.internal.EventControl: jdk.jfr.internal.PlatformEventType getEventType()>() 
(assert true)
(define-const var2733 String (getName/-2081927433 (cast-from-var1666-to-var1976 var368))) ; Statement: $r5 = virtualinvoke $r1.<jdk.jfr.internal.PlatformEventType: java.lang.String getName()>() 
(assert true)
(define-const var2391 var1666 (getEventType/-1848430003 var530)) ; Statement: $r3 = virtualinvoke r2.<jdk.jfr.internal.EventControl: jdk.jfr.internal.PlatformEventType getEventType()>() 
(assert true)
(define-const var556 String (getName/-2081927433 (cast-from-var1666-to-var1976 var2391))) ; Statement: $r4 = virtualinvoke $r3.<jdk.jfr.internal.PlatformEventType: java.lang.String getName()>() 
(assert true)
(define-const var993 Int (compareTo/1411385946 var2733 var556)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var2733 var556)) (this<=other (str.<= var2733 var556)) (compareRes (compareTo/1411385946 var2733 var556))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getEventType/-1848430003=([jdk.jfr.internal.EventControl], jdk.jfr.internal.PlatformEventType), getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String), cast-from-var1666-to-var1976=([jdk.jfr.internal.PlatformEventType], jdk.jfr.internal.Type), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1172=jdk.jfr.internal.EventControl, var3867=r0, var530=r2, var1666=jdk.jfr.internal.PlatformEventType, var368=$r1, var1976=jdk.jfr.internal.Type, var2733=$r5, var2391=$r3, var556=$r4, var993=$i0}
; {jdk.jfr.internal.EventControl=var1172, r0=var3867, r2=var530, jdk.jfr.internal.PlatformEventType=var1666, $r1=var368, jdk.jfr.internal.Type=var1976, $r5=var2733, $r3=var2391, $r4=var556, $i0=var993}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @parameter0: jdk.jfr.internal.EventControl;	r2 := @parameter1: jdk.jfr.internal.EventControl;	$r1 = virtualinvoke r0.<jdk.jfr.internal.EventControl: jdk.jfr.internal.PlatformEventType getEventType()>();	$r5 = virtualinvoke $r1.<jdk.jfr.internal.PlatformEventType: java.lang.String getName()>();	$r3 = virtualinvoke r2.<jdk.jfr.internal.EventControl: jdk.jfr.internal.PlatformEventType getEventType()>();	$r4 = virtualinvoke $r3.<jdk.jfr.internal.PlatformEventType: java.lang.String getName()>();	$i0 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	return $i0
;block_num 1
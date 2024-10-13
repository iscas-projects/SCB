(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1036 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _name/-2056846942 (var1036) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1036 var1036)
(declare-const var597 var1036) ; Statement: r0 := @this: org.javacc.utils.OptionInfo 
(assert (not (= var597 null-var1036)))
(declare-const var705 var1036) ; Statement: r1 := @parameter0: org.javacc.utils.OptionInfo 
(assert (not (= var705 null-var1036)))
(define-const var3306 String (_name/-2056846942 var597)) ; Statement: $r3 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
(define-const var155 String (_name/-2056846942 var705)) ; Statement: $r2 = r1.<org.javacc.utils.OptionInfo: java.lang.String _name> 
(assert true)
(define-const var866 Int (compareTo/1411385946 var3306 var155)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var3306 var155)) (this<=other (str.<= var3306 var155)) (compareRes (compareTo/1411385946 var3306 var155))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {_name/-2056846942=([org.javacc.utils.OptionInfo], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1036=org.javacc.utils.OptionInfo, var597=r0, var705=r1, var3306=$r3, var155=$r2, var866=$i0}
; {org.javacc.utils.OptionInfo=var1036, r0=var597, r1=var705, $r3=var3306, $r2=var155, $i0=var866}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: org.javacc.utils.OptionInfo;	r1 := @parameter0: org.javacc.utils.OptionInfo;	$r3 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	$r2 = r1.<org.javacc.utils.OptionInfo: java.lang.String _name>;	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1688 0)
(declare-sort var2541 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1096976293 (var2541) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1688 var1688)
(declare-const null-var2541 var2541)
(declare-const var1464 var1688) ; Statement: r8 := @this: org.apache.ibatis.javassist.SerialVersionUID$3 
(assert (not (= var1464 null-var1688)))
(declare-const var3747 var2541) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.CtMethod 
(assert (not (= var3747 null-var2541)))
(declare-const var2298 var2541) ; Statement: r1 := @parameter1: org.apache.ibatis.javassist.CtMethod 
(assert (not (= var2298 null-var2541)))
(assert true)
(define-const var3633 String (getName/-1096976293 var3747)) ; Statement: $r3 = virtualinvoke r0.<org.apache.ibatis.javassist.CtMethod: java.lang.String getName()>() 
(assert true)
(define-const var3447 String (getName/-1096976293 var2298)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtMethod: java.lang.String getName()>() 
(assert true)
(define-const var3719 Int (compareTo/1411385946 var3633 var3447)) ; Statement: i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var3633 var3447)) (this<=other (str.<= var3633 var3447)) (compareRes (compareTo/1411385946 var3633 var3447))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if i0 != 0 goto return i0 
(assert (not (= var3719 0))) ; Cond: i0 != 0 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1096976293=([org.apache.ibatis.javassist.CtMethod], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1688=org.apache.ibatis.javassist.SerialVersionUID$3, var1464=r8, var2541=org.apache.ibatis.javassist.CtMethod, var3747=r0, var2298=r1, var3633=$r3, var3447=$r2, var3719=i0}
; {org.apache.ibatis.javassist.SerialVersionUID$3=var1688, r8=var1464, org.apache.ibatis.javassist.CtMethod=var2541, r0=var3747, r1=var2298, $r3=var3633, $r2=var3447, i0=var3719}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r8 := @this: org.apache.ibatis.javassist.SerialVersionUID$3;	r0 := @parameter0: org.apache.ibatis.javassist.CtMethod;	r1 := @parameter1: org.apache.ibatis.javassist.CtMethod;	$r3 = virtualinvoke r0.<org.apache.ibatis.javassist.CtMethod: java.lang.String getName()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtMethod: java.lang.String getName()>();	i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	if i0 != 0 goto return i0;	return i0
;block_num 2
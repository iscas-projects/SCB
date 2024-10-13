(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2535 0)
(declare-sort var75 0)
(declare-sort var1610 0)
(declare-sort var1582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMethodInfo2/-1623269181 (var1582) var1610)
(declare-fun cast-from-var75-to-var1582 (var75) var1582)
(declare-fun getDescriptor/241025769 (var1610) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var2535 var2535)
(declare-const null-var75 var75)
(declare-const var2146 var2535) ; Statement: r6 := @this: org.apache.ibatis.javassist.SerialVersionUID$2 
(assert (not (= var2146 null-var2535)))
(declare-const var279 var75) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.CtConstructor 
(assert (not (= var279 null-var75)))
(declare-const var3641 var75) ; Statement: r2 := @parameter1: org.apache.ibatis.javassist.CtConstructor 
(assert (not (= var3641 null-var75)))
(assert true)
(define-const var400 var1610 (getMethodInfo2/-1623269181 (cast-from-var75-to-var1582 var279))) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtConstructor: org.apache.ibatis.javassist.bytecode.MethodInfo getMethodInfo2()>() 
(assert true)
(define-const var3874 String (getDescriptor/241025769 var400)) ; Statement: $r5 = virtualinvoke $r1.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>() 
(assert true)
(define-const var1611 var1610 (getMethodInfo2/-1623269181 (cast-from-var75-to-var1582 var3641))) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.javassist.CtConstructor: org.apache.ibatis.javassist.bytecode.MethodInfo getMethodInfo2()>() 
(assert true)
(define-const var1896 String (getDescriptor/241025769 var1611)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>() 
(assert true)
(define-const var3454 Int (compareTo/1411385946 var3874 var1896)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var3874 var1896)) (this<=other (str.<= var3874 var1896)) (compareRes (compareTo/1411385946 var3874 var1896))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getMethodInfo2/-1623269181=([org.apache.ibatis.javassist.CtBehavior], org.apache.ibatis.javassist.bytecode.MethodInfo), cast-from-var75-to-var1582=([org.apache.ibatis.javassist.CtConstructor], org.apache.ibatis.javassist.CtBehavior), getDescriptor/241025769=([org.apache.ibatis.javassist.bytecode.MethodInfo], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var2535=org.apache.ibatis.javassist.SerialVersionUID$2, var2146=r6, var75=org.apache.ibatis.javassist.CtConstructor, var279=r0, var3641=r2, var1610=org.apache.ibatis.javassist.bytecode.MethodInfo, var1582=org.apache.ibatis.javassist.CtBehavior, var400=$r1, var3874=$r5, var1611=$r3, var1896=$r4, var3454=$i0}
; {org.apache.ibatis.javassist.SerialVersionUID$2=var2535, r6=var2146, org.apache.ibatis.javassist.CtConstructor=var75, r0=var279, r2=var3641, org.apache.ibatis.javassist.bytecode.MethodInfo=var1610, org.apache.ibatis.javassist.CtBehavior=var1582, $r1=var400, $r5=var3874, $r3=var1611, $r4=var1896, $i0=var3454}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r6 := @this: org.apache.ibatis.javassist.SerialVersionUID$2;	r0 := @parameter0: org.apache.ibatis.javassist.CtConstructor;	r2 := @parameter1: org.apache.ibatis.javassist.CtConstructor;	$r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtConstructor: org.apache.ibatis.javassist.bytecode.MethodInfo getMethodInfo2()>();	$r5 = virtualinvoke $r1.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>();	$r3 = virtualinvoke r2.<org.apache.ibatis.javassist.CtConstructor: org.apache.ibatis.javassist.bytecode.MethodInfo getMethodInfo2()>();	$r4 = virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>();	$i0 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	return $i0
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1580 0)
(declare-sort var633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/573518636 (var633) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1580 var1580)
(declare-const null-var633 var633)
(declare-const var3720 var1580) ; Statement: r4 := @this: org.apache.ibatis.javassist.SerialVersionUID$1 
(assert (not (= var3720 null-var1580)))
(declare-const var2069 var633) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.CtField 
(assert (not (= var2069 null-var633)))
(declare-const var3967 var633) ; Statement: r1 := @parameter1: org.apache.ibatis.javassist.CtField 
(assert (not (= var3967 null-var633)))
(assert true)
(define-const var339 String (getName/573518636 var2069)) ; Statement: $r3 = virtualinvoke r0.<org.apache.ibatis.javassist.CtField: java.lang.String getName()>() 
(assert true)
(define-const var1829 String (getName/573518636 var3967)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField: java.lang.String getName()>() 
(assert true)
(define-const var1040 Int (compareTo/1411385946 var339 var1829)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var339 var1829)) (this<=other (str.<= var339 var1829)) (compareRes (compareTo/1411385946 var339 var1829))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/573518636=([org.apache.ibatis.javassist.CtField], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1580=org.apache.ibatis.javassist.SerialVersionUID$1, var3720=r4, var633=org.apache.ibatis.javassist.CtField, var2069=r0, var3967=r1, var339=$r3, var1829=$r2, var1040=$i0}
; {org.apache.ibatis.javassist.SerialVersionUID$1=var1580, r4=var3720, org.apache.ibatis.javassist.CtField=var633, r0=var2069, r1=var3967, $r3=var339, $r2=var1829, $i0=var1040}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r4 := @this: org.apache.ibatis.javassist.SerialVersionUID$1;	r0 := @parameter0: org.apache.ibatis.javassist.CtField;	r1 := @parameter1: org.apache.ibatis.javassist.CtField;	$r3 = virtualinvoke r0.<org.apache.ibatis.javassist.CtField: java.lang.String getName()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2483 0)
(declare-sort var1592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun wasPruned/1891348345 (var2483) Bool)
(declare-const null-var2483 var2483)
(declare-const null-String String)
(declare-const var3541 var2483) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClassType 
(assert (not (= var3541 null-var2483)))
(declare-const var395 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var395 null-String)))
(define-const var3631 Bool (wasPruned/1891348345 var3541)) ; Statement: $z0 = r0.<org.apache.ibatis.javassist.CtClassType: boolean wasPruned> 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var3631 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {wasPruned/1891348345=([org.apache.ibatis.javassist.CtClassType], boolean)}
; {var2483=org.apache.ibatis.javassist.CtClassType, var3541=r0, var395=r3, var1592=null_type, var3631=$z0}
; {org.apache.ibatis.javassist.CtClassType=var2483, r0=var3541, r3=var395, null_type=var1592, $z0=var3631}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClassType;	r3 := @parameter0: java.lang.String;	$z0 = r0.<org.apache.ibatis.javassist.CtClassType: boolean wasPruned>;	if $z0 == 0 goto return;	return
;block_num 2
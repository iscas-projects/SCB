(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2236 0)
(declare-sort var1402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-var2236 var2236)
(declare-const null-String String)
(declare-const var3961 var2236) ; Statement: r3 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var3961 null-var2236)))
(declare-const var1936 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1936 null-String)))
(assert true)
(define-const var79 Int (indexOf/-1037706067 var1936 41)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
 ; Statement: if i0 >= 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (>= var79 0))) ; Negate: Cond: i0 >= 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var2236=org.apache.ibatis.javassist.CtClass, var3961=r3, var1936=r0, var1402=null_type, var79=i0}
; {org.apache.ibatis.javassist.CtClass=var2236, r3=var3961, r0=var1936, null_type=var1402, i0=var79}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r3 := @parameter0: org.apache.ibatis.javassist.CtClass;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	if i0 >= 0 goto $r1 = new java.lang.StringBuilder;	return r0
;block_num 2
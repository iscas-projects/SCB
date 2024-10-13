(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2422 0)
(declare-sort var3270 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const null-var3270 var3270)
(declare-const var3522 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3522 null-String)))
(declare-const var2551 var3270) ; Statement: r2 := @parameter1: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var2551 null-var3270)))
(assert true)
(define-const var324 Int (indexOf/-1037706067 var3522 41)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
 ; Statement: if i0 >= 0 goto r1 = newarray (org.apache.ibatis.javassist.CtClass)[1] 
(assert (not (>= var324 0))) ; Negate: Cond: i0 >= 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var3522=r0, var2422=null_type, var3270=org.apache.ibatis.javassist.ClassPool, var2551=r2, var324=i0}
; {r0=var3522, null_type=var2422, org.apache.ibatis.javassist.ClassPool=var3270, r2=var2551, i0=var324}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: org.apache.ibatis.javassist.ClassPool;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	if i0 >= 0 goto r1 = newarray (org.apache.ibatis.javassist.CtClass)[1];	return null
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2476 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun qualifiedName/-1705733217 (var2476) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-var2476 var2476)
(declare-const var1439 var2476) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1439 null-var2476)))
(define-const var2505 String (qualifiedName/-1705733217 var1439)) ; Statement: r1 = r0.<org.apache.ibatis.javassist.CtClass: java.lang.String qualifiedName> 
(assert true)
(define-const var697 Int (lastIndexOf/-1292097097 var2505 46)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $i1 = i0 + 1 
(assert (not (>= var697 0))) ; Negate: Cond: i0 >= 0  
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {qualifiedName/-1705733217=([org.apache.ibatis.javassist.CtClass], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var2476=org.apache.ibatis.javassist.CtClass, var1439=r0, var2505=r1, var697=i0}
; {org.apache.ibatis.javassist.CtClass=var2476, r0=var1439, r1=var2505, i0=var697}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClass;	r1 = r0.<org.apache.ibatis.javassist.CtClass: java.lang.String qualifiedName>;	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46);	if i0 >= 0 goto $i1 = i0 + 1;	return r1
;block_num 2
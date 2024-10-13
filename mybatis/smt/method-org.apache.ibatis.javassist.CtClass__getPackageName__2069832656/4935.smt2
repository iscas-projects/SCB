(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun qualifiedName/-1705733217 (var2400) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-var2400 var2400)
(declare-const var3942 var2400) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClass 
(assert (not (= var3942 null-var2400)))
(define-const var2692 String (qualifiedName/-1705733217 var3942)) ; Statement: r1 = r0.<org.apache.ibatis.javassist.CtClass: java.lang.String qualifiedName> 
(assert true)
(define-const var1034 Int (lastIndexOf/-1292097097 var2692 46)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (>= var1034 0))) ; Negate: Cond: i0 >= 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {qualifiedName/-1705733217=([org.apache.ibatis.javassist.CtClass], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var2400=org.apache.ibatis.javassist.CtClass, var3942=r0, var2692=r1, var1034=i0}
; {org.apache.ibatis.javassist.CtClass=var2400, r0=var3942, r1=var2692, i0=var1034}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClass;	r1 = r0.<org.apache.ibatis.javassist.CtClass: java.lang.String qualifiedName>;	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46);	if i0 >= 0 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return null
;block_num 2
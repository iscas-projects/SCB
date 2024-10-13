(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun qualifiedName/-1705733217 (var2961) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var2961 var2961)
(declare-const var1874 var2961) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1874 null-var2961)))
(define-const var993 String (qualifiedName/-1705733217 var1874)) ; Statement: r1 = r0.<org.apache.ibatis.javassist.CtClass: java.lang.String qualifiedName> 
(assert true)
(define-const var140 Int (lastIndexOf/-1292097097 var993 46)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (>= var140 0)) ; Cond: i0 >= 0 
(assert (not (and true (and (>= 0 0) (>= (str.len var993) var140) (>= var140 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {qualifiedName/-1705733217=([org.apache.ibatis.javassist.CtClass], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2961=org.apache.ibatis.javassist.CtClass, var1874=r0, var993=r1, var140=i0, var807=$r2}
; {org.apache.ibatis.javassist.CtClass=var2961, r0=var1874, r1=var993, i0=var140, $r2=var807}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClass;	r1 = r0.<org.apache.ibatis.javassist.CtClass: java.lang.String qualifiedName>;	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46);	if i0 >= 0 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r2
;block_num 2
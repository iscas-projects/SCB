(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun qualifiedName/-1705733217 (var3085) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var3085 var3085)
(declare-const var3962 var3085) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClass 
(assert (not (= var3962 null-var3085)))
(define-const var966 String (qualifiedName/-1705733217 var3962)) ; Statement: r1 = r0.<org.apache.ibatis.javassist.CtClass: java.lang.String qualifiedName> 
(assert true)
(define-const var3676 Int (lastIndexOf/-1292097097 var966 46)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $i1 = i0 + 1 
(assert (>= var3676 0)) ; Cond: i0 >= 0 
(define-const var277 Int (+ var3676 1)) ; Statement: $i1 = i0 + 1 
(assert (not (and true (and (>= var277 0) (>= (str.len var966) var277)))))
(check-sat)
(get-model)
(get-unsat-core)
; {qualifiedName/-1705733217=([org.apache.ibatis.javassist.CtClass], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3085=org.apache.ibatis.javassist.CtClass, var3962=r0, var966=r1, var3676=i0, var277=$i1, var237=$r2}
; {org.apache.ibatis.javassist.CtClass=var3085, r0=var3962, r1=var966, i0=var3676, $i1=var277, $r2=var237}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClass;	r1 = r0.<org.apache.ibatis.javassist.CtClass: java.lang.String qualifiedName>;	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46);	if i0 >= 0 goto $i1 = i0 + 1;	$i1 = i0 + 1;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i1);	return $r2
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3173 0)
(declare-sort var1943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var1943) ClassObject)
(declare-fun cast-from-var3173-to-var1943 (var3173) var1943)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var3173 var3173)
(declare-const var344 var3173) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.ast.ASTree 
(assert (not (= var344 null-var3173)))
(assert true)
(define-const var1954 ClassObject (getClass/1258963082 (cast-from-var3173-to-var1943 var344))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3535 String (getName/-1958580599 var1954)) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2662 Int (lastIndexOf/-1292097097 var3535 46)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var222 Int (+ var2662 1)) ; Statement: $i1 = $i0 + 1 
(assert (not (and true (and (>= var222 0) (>= (str.len var3535) var222)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3173-to-var1943=([org.apache.ibatis.javassist.compiler.ast.ASTree], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3173=org.apache.ibatis.javassist.compiler.ast.ASTree, var344=r0, var1943=java.lang.Object, var1954=$r1, var3535=r2, var2662=$i0, var222=$i1, var42=$r3}
; {org.apache.ibatis.javassist.compiler.ast.ASTree=var3173, r0=var344, java.lang.Object=var1943, $r1=var1954, r2=var3535, $i0=var2662, $i1=var222, $r3=var42}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.ast.ASTree;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46);	$i1 = $i0 + 1;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1);	return $r3
;block_num 1
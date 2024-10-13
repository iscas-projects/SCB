(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1915 0)
(declare-sort var379 0)
(declare-sort var2788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1611768686 (var379) String)
(declare-fun cast-from-var1915-to-var379 (var1915) var379)
(declare-fun pool/-1707385728 (var1915) var2788)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun get/-1068841021 (var2788 String) var379)
(declare-const null-var1915 var1915)
(declare-const var3762 var1915) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtArray 
(assert (not (= var3762 null-var1915)))
(assert true)
(define-const var3645 String (getName/1611768686 (cast-from-var1915-to-var379 var3762))) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtArray: java.lang.String getName()>() 
(define-const var3962 var2788 (pool/-1707385728 var3762)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.CtArray: org.apache.ibatis.javassist.ClassPool pool> 
(assert true)
(define-const var1917 Int (length/-134980193 var3645)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var353 Int (- var1917 2)) ; Statement: $i1 = $i0 - 2 
(assert (and true (and (>= 0 0) (>= (str.len var3645) var353) (>= var353 0))))
(define-const var2469 String (substring/-1240304868 var3645 0 var353)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i1) 
(assert true)
(define-const var3636 var379 (get/-1068841021 var3962 var2469)) ; Statement: $r4 = virtualinvoke $r2.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>($r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), cast-from-var1915-to-var379=([org.apache.ibatis.javassist.CtArray], org.apache.ibatis.javassist.CtClass), pool/-1707385728=([org.apache.ibatis.javassist.CtArray], org.apache.ibatis.javassist.ClassPool), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), get/-1068841021=([org.apache.ibatis.javassist.ClassPool, java.lang.String], org.apache.ibatis.javassist.CtClass)}
; {var1915=org.apache.ibatis.javassist.CtArray, var3762=r0, var379=org.apache.ibatis.javassist.CtClass, var3645=r1, var2788=org.apache.ibatis.javassist.ClassPool, var3962=$r2, var1917=$i0, var353=$i1, var2469=$r3, var3636=$r4}
; {org.apache.ibatis.javassist.CtArray=var1915, r0=var3762, org.apache.ibatis.javassist.CtClass=var379, r1=var3645, org.apache.ibatis.javassist.ClassPool=var2788, $r2=var3962, $i0=var1917, $i1=var353, $r3=var2469, $r4=var3636}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtArray;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtArray: java.lang.String getName()>();	$r2 = r0.<org.apache.ibatis.javassist.CtArray: org.apache.ibatis.javassist.ClassPool pool>;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 - 2;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	$r4 = virtualinvoke $r2.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>($r3);	return $r4
;block_num 1
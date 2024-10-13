(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3506 0)
(declare-sort var1301 0)
(declare-sort var152 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun get/-1068841021 (var3506 String) var152)
(declare-const null-var3506 var3506)
(declare-const null-String String)
(declare-const var1769 var3506) ; Statement: r1 := @this: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var1769 null-var3506)))
(declare-const var130 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var130 null-String)))
(assert (and true (and (> (str.len var130) 0) (<= 0 0))))
(define-const var1959 Int (charAt/698050440 var130 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var448 Int (cast-from-Int-to-Int var1959)) ; Statement: $i1 = (int) $c0 
 ; Statement: if $i1 != 91 goto $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>(r0) 
(assert (not (= var448 91))) ; Cond: $i1 != 91 
(assert true)
(define-const var2404 var152 (get/-1068841021 var1769 var130)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>(r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), get/-1068841021=([org.apache.ibatis.javassist.ClassPool, java.lang.String], org.apache.ibatis.javassist.CtClass)}
; {var3506=org.apache.ibatis.javassist.ClassPool, var1769=r1, var130=r0, var1301=null_type, var1959=$c0, var448=$i1, var152=org.apache.ibatis.javassist.CtClass, var2404=$r2}
; {org.apache.ibatis.javassist.ClassPool=var3506, r1=var1769, r0=var130, null_type=var1301, $c0=var1959, $i1=var448, org.apache.ibatis.javassist.CtClass=var152, $r2=var2404}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.ClassPool;	r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 != 91 goto $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>(r0);	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>(r0);	return $r2
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3817 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getStringRep/-444510392 (var3817) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3817 var3817)
(declare-const var2699 var3817) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtMethod 
(assert (not (= var2699 null-var3817)))
(assert true)
(define-const var1320 String (getStringRep/-444510392 var2699)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtMethod: java.lang.String getStringRep()>() 
(assert true)
(define-const var3637 Int (hashCode/-467973558 var1320)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getStringRep/-444510392=([org.apache.ibatis.javassist.CtMethod], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3817=org.apache.ibatis.javassist.CtMethod, var2699=r0, var1320=$r1, var3637=$i0}
; {org.apache.ibatis.javassist.CtMethod=var3817, r0=var2699, $r1=var1320, $i0=var3637}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtMethod;	$r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtMethod: java.lang.String getStringRep()>();	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3442 0)
(declare-sort var2513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-var3442 var3442)
(declare-const null-String String)
(declare-const var930 var3442) ; Statement: r2 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var930 null-var3442)))
(declare-const var846 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var846 null-String)))
(assert true)
(define-const var574 Int (indexOf/-1037706067 var846 46)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if $i0 <= 0 goto return r0 
(assert (<= var574 0)) ; Cond: $i0 <= 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var3442=org.hibernate.loader.criteria.CriteriaQueryTranslator, var930=r2, var846=r0, var2513=null_type, var574=$i0}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var3442, r2=var930, r0=var846, null_type=var2513, $i0=var574}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r2 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if $i0 <= 0 goto return r0;	return r0
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-const null-String String)
(declare-const var808 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var808 null-String)))
 ; Statement: if r0 != null goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("/") 
(assert (not (= var808 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var917 (Array Int String) (split/-636890950 var808 "/")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("/") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var808 "/") i) (re.++ (re.* re.all) (str.to_re "/") (re.* re.all))))))
(define-const var17 String (select var917 0)) ; Statement: $r2 = r1[0] 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[])}
; {var808=r0, var3514=null_type, var917=r1, var17=$r2}
; {r0=var808, null_type=var3514, r1=var917, $r2=var17}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("/");	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("/");	$r2 = r1[0];	return $r2
;block_num 2
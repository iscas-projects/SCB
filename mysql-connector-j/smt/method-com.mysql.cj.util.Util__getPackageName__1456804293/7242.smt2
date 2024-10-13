(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-ClassObject ClassObject)
(declare-const var2282 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2282 null-ClassObject)))
(assert true)
(define-const var3973 String (getName/-1958580599 var2282)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3184 Int (lastIndexOf/-1292097097 var3973 46)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 <= 0 goto return "" 
(assert (<= var3184 0)) ; Cond: i0 <= 0 
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var2282=r0, var3973=r1, var3184=i0}
; {r0=var2282, r1=var3973, i0=var3184}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46);	if i0 <= 0 goto return "";	return ""
;block_num 2
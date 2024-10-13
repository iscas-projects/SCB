(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1419 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var1357 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1357 null-ClassObject)))
(assert true)
(define-const var724 String (getName/-1958580599 var1357)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3676 Int (lastIndexOf/-1292097097 var724 46)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (>= var3676 0))) ; Negate: Cond: i0 >= 0  
(define-const var1704 String null-String) ; Statement: $r2 = null 
 ; Statement: goto [?= return $r2] 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var1357=r0, var724=r1, var3676=i0, var1419=null_type, var1704=$r2}
; {r0=var1357, r1=var724, i0=var3676, null_type=var1419, $r2=var1704}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46);	if i0 >= 0 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r2 = null;	goto [?= return $r2];	return $r2
;block_num 3
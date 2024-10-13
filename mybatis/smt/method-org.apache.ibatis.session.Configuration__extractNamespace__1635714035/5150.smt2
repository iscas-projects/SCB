(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1844 0)
(declare-sort var1815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-var1844 var1844)
(declare-const null-String String)
(declare-const var2678 var1844) ; Statement: r1 := @this: org.apache.ibatis.session.Configuration 
(assert (not (= var2678 null-var1844)))
(declare-const var791 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var791 null-String)))
(assert true)
(define-const var626 Int (lastIndexOf/-1292097097 var791 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 <= 0 goto $r2 = null 
(assert (<= var626 0)) ; Cond: i0 <= 0 
(define-const var2750 String null-String) ; Statement: $r2 = null 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var1844=org.apache.ibatis.session.Configuration, var2678=r1, var791=r0, var1815=null_type, var626=i0, var2750=$r2}
; {org.apache.ibatis.session.Configuration=var1844, r1=var2678, r0=var791, null_type=var1815, i0=var626, $r2=var2750}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r1 := @this: org.apache.ibatis.session.Configuration;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	if i0 <= 0 goto $r2 = null;	$r2 = null;	return $r2
;block_num 3
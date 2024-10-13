(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var311 0)
(declare-sort var2100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun addUnconditionalHolder/-1464768914 (var311 var2100) var311)
(declare-fun cast-from-String-to-var2100 (String) var2100)
(declare-const null-var311 var311)
(declare-const null-Int Int)
(declare-const var2193 var311) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper 
(assert (not (= var2193 null-var311)))
(declare-const var3928 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3928 null-Int)))
(define-const var3056 String (String_valueOf/1240665136 var3928)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
(define-const var3264 var311 (addUnconditionalHolder/-1464768914 var2193 (cast-from-String-to-var2100 var3056))) ; Statement: $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/1240665136=([int], java.lang.String), addUnconditionalHolder/-1464768914=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), cast-from-String-to-var2100=([java.lang.String], java.lang.Object)}
; {var311=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, var2193=r0, var3928=i0, var3056=$r1, var2100=java.lang.Object, var3264=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper=var311, r0=var2193, i0=var3928, $r1=var3056, java.lang.Object=var2100, $r2=var3264}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper;	i0 := @parameter0: int;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	$r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.Object)>($r1);	return $r2
;block_num 1
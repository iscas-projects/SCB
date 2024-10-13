(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1236 0)
(declare-sort var3563 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-987357574 (Float64) String)
(declare-fun addUnconditionalHolder/-1464768914 (var1236 var3563) var1236)
(declare-fun cast-from-String-to-var3563 (String) var3563)
(declare-const null-var1236 var1236)
(declare-const null-Float64 Float64)
(declare-const var3783 var1236) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper 
(assert (not (= var3783 null-var1236)))
(declare-const var13 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var13 null-Float64)))
(define-const var297 String (String_valueOf/-987357574 var13)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0) 
(assert true)
(define-const var2337 var1236 (addUnconditionalHolder/-1464768914 var3783 (cast-from-String-to-var3563 var297))) ; Statement: $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-987357574=([double], java.lang.String), addUnconditionalHolder/-1464768914=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), cast-from-String-to-var3563=([java.lang.String], java.lang.Object)}
; {var1236=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, var3783=r0, var13=d0, var297=$r1, var3563=java.lang.Object, var2337=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper=var1236, r0=var3783, d0=var13, $r1=var297, java.lang.Object=var3563, $r2=var2337}
;seq <java.lang.String: java.lang.String valueOf(double)>
;cnt {"<java.lang.String: java.lang.String valueOf(double)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper;	d0 := @parameter0: double;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0);	$r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.Object)>($r1);	return $r2
;block_num 1
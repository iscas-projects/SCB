(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2715 0)
(declare-sort var1480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-149410723 (Float32) String)
(declare-fun addUnconditionalHolder/-1464768914 (var2715 var1480) var2715)
(declare-fun cast-from-String-to-var1480 (String) var1480)
(declare-const null-var2715 var2715)
(declare-const null-Float32 Float32)
(declare-const var2227 var2715) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper 
(assert (not (= var2227 null-var2715)))
(declare-const var3910 Float32) ; Statement: f0 := @parameter0: float 
(assert (not (= var3910 null-Float32)))
(define-const var1700 String (String_valueOf/-149410723 var3910)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>(f0) 
(assert true)
(define-const var179 var2715 (addUnconditionalHolder/-1464768914 var2227 (cast-from-String-to-var1480 var1700))) ; Statement: $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-149410723=([float], java.lang.String), addUnconditionalHolder/-1464768914=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), cast-from-String-to-var1480=([java.lang.String], java.lang.Object)}
; {var2715=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, var2227=r0, var3910=f0, var1700=$r1, var1480=java.lang.Object, var179=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper=var2715, r0=var2227, f0=var3910, $r1=var1700, java.lang.Object=var1480, $r2=var179}
;seq <java.lang.String: java.lang.String valueOf(float)>
;cnt {"<java.lang.String: java.lang.String valueOf(float)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper;	f0 := @parameter0: float;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>(f0);	$r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.Object)>($r1);	return $r2
;block_num 1
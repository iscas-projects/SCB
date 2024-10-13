(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1931 0)
(declare-sort var354 0)
(declare-sort var341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-987357574 (Float64) String)
(declare-fun addUnconditionalHolder/447605001 (var1931 String var341) var1931)
(declare-fun cast-from-String-to-var341 (String) var341)
(declare-const null-var1931 var1931)
(declare-const null-String String)
(declare-const null-Float64 Float64)
(declare-const var1586 var1931) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper 
(assert (not (= var1586 null-var1931)))
(declare-const var1298 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1298 null-String)))
(declare-const var2232 Float64) ; Statement: d0 := @parameter1: double 
(assert (not (= var2232 null-Float64)))
(define-const var4 String (String_valueOf/-987357574 var2232)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0) 
(assert true)
(define-const var110 var1931 (addUnconditionalHolder/447605001 var1586 var1298 (cast-from-String-to-var341 var4))) ; Statement: $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.String,java.lang.Object)>(r1, $r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-987357574=([double], java.lang.String), addUnconditionalHolder/447605001=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, java.lang.String, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), cast-from-String-to-var341=([java.lang.String], java.lang.Object)}
; {var1931=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, var1586=r0, var1298=r1, var354=null_type, var2232=d0, var4=$r2, var341=java.lang.Object, var110=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper=var1931, r0=var1586, r1=var1298, null_type=var354, d0=var2232, $r2=var4, java.lang.Object=var341, $r3=var110}
;seq <java.lang.String: java.lang.String valueOf(double)>
;cnt {"<java.lang.String: java.lang.String valueOf(double)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper;	r1 := @parameter0: java.lang.String;	d0 := @parameter1: double;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0);	$r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.String,java.lang.Object)>(r1, $r2);	return $r3
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var786 0)
(declare-sort var102 0)
(declare-sort var1436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-149410723 (Float32) String)
(declare-fun addUnconditionalHolder/447605001 (var786 String var1436) var786)
(declare-fun cast-from-String-to-var1436 (String) var1436)
(declare-const null-var786 var786)
(declare-const null-String String)
(declare-const null-Float32 Float32)
(declare-const var1692 var786) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper 
(assert (not (= var1692 null-var786)))
(declare-const var1244 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1244 null-String)))
(declare-const var1582 Float32) ; Statement: f0 := @parameter1: float 
(assert (not (= var1582 null-Float32)))
(define-const var3506 String (String_valueOf/-149410723 var1582)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>(f0) 
(assert true)
(define-const var1224 var786 (addUnconditionalHolder/447605001 var1692 var1244 (cast-from-String-to-var1436 var3506))) ; Statement: $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.String,java.lang.Object)>(r1, $r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-149410723=([float], java.lang.String), addUnconditionalHolder/447605001=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, java.lang.String, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), cast-from-String-to-var1436=([java.lang.String], java.lang.Object)}
; {var786=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, var1692=r0, var1244=r1, var102=null_type, var1582=f0, var3506=$r2, var1436=java.lang.Object, var1224=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper=var786, r0=var1692, r1=var1244, null_type=var102, f0=var1582, $r2=var3506, java.lang.Object=var1436, $r3=var1224}
;seq <java.lang.String: java.lang.String valueOf(float)>
;cnt {"<java.lang.String: java.lang.String valueOf(float)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper;	r1 := @parameter0: java.lang.String;	f0 := @parameter1: float;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>(f0);	$r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.String,java.lang.Object)>(r1, $r2);	return $r3
;block_num 1
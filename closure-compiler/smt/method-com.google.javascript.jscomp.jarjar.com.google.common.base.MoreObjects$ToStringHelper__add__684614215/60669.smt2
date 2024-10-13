(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2385 0)
(declare-sort var3513 0)
(declare-sort var1714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-fun addUnconditionalHolder/447605001 (var2385 String var1714) var2385)
(declare-fun cast-from-String-to-var1714 (String) var1714)
(declare-const null-var2385 var2385)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1454 var2385) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper 
(assert (not (= var1454 null-var2385)))
(declare-const var1670 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1670 null-String)))
(declare-const var80 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var80 null-Bool)))
(define-const var1968 String (String_valueOf/-1973653463 var80)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0) 
(assert true)
(define-const var61 var2385 (addUnconditionalHolder/447605001 var1454 var1670 (cast-from-String-to-var1714 var1968))) ; Statement: $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.String,java.lang.Object)>(r1, $r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-1973653463=([boolean], java.lang.String), addUnconditionalHolder/447605001=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, java.lang.String, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), cast-from-String-to-var1714=([java.lang.String], java.lang.Object)}
; {var2385=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, var1454=r0, var1670=r1, var3513=null_type, var80=z0, var1968=$r2, var1714=java.lang.Object, var61=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper=var2385, r0=var1454, r1=var1670, null_type=var3513, z0=var80, $r2=var1968, java.lang.Object=var1714, $r3=var61}
;seq <java.lang.String: java.lang.String valueOf(boolean)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);	$r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.String,java.lang.Object)>(r1, $r2);	return $r3
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2848 0)
(declare-sort var1624 0)
(declare-sort var242 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun addUnconditionalHolder/447605001 (var2848 String var242) var2848)
(declare-fun cast-from-String-to-var242 (String) var242)
(declare-const null-var2848 var2848)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var780 var2848) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper 
(assert (not (= var780 null-var2848)))
(declare-const var3889 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3889 null-String)))
(declare-const var2874 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2874 null-Int)))
(define-const var3625 String (String_valueOf/1240665136 var2874)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
(define-const var1479 var2848 (addUnconditionalHolder/447605001 var780 var3889 (cast-from-String-to-var242 var3625))) ; Statement: $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.String,java.lang.Object)>(r1, $r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/1240665136=([int], java.lang.String), addUnconditionalHolder/447605001=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, java.lang.String, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), cast-from-String-to-var242=([java.lang.String], java.lang.Object)}
; {var2848=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, var780=r0, var3889=r1, var1624=null_type, var2874=i0, var3625=$r2, var242=java.lang.Object, var1479=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper=var2848, r0=var780, r1=var3889, null_type=var1624, i0=var2874, $r2=var3625, java.lang.Object=var242, $r3=var1479}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	$r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.String,java.lang.Object)>(r1, $r2);	return $r3
;block_num 1
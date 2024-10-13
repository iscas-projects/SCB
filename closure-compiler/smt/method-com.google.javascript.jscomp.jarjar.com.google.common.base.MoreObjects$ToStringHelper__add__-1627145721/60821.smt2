(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var299 0)
(declare-sort var463 0)
(declare-sort var2884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun addUnconditionalHolder/447605001 (var299 String var2884) var299)
(declare-fun cast-from-String-to-var2884 (String) var2884)
(declare-const null-var299 var299)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3264 var299) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper 
(assert (not (= var3264 null-var299)))
(declare-const var2941 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2941 null-String)))
(declare-const var105 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var105 null-Int)))
(define-const var1223 String (String_valueOf/-107395227 var105)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0) 
(assert true)
(define-const var897 var299 (addUnconditionalHolder/447605001 var3264 var2941 (cast-from-String-to-var2884 var1223))) ; Statement: $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.String,java.lang.Object)>(r1, $r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-107395227=([long], java.lang.String), addUnconditionalHolder/447605001=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, java.lang.String, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), cast-from-String-to-var2884=([java.lang.String], java.lang.Object)}
; {var299=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, var3264=r0, var2941=r1, var463=null_type, var105=l0, var1223=$r2, var2884=java.lang.Object, var897=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper=var299, r0=var3264, r1=var2941, null_type=var463, l0=var105, $r2=var1223, java.lang.Object=var2884, $r3=var897}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper;	r1 := @parameter0: java.lang.String;	l0 := @parameter1: long;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0);	$r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.String,java.lang.Object)>(r1, $r2);	return $r3
;block_num 1
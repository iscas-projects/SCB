(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1310 0)
(declare-sort var1960 0)
(declare-sort var3067 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun addUnconditionalHolder/447605001 (var1310 String var3067) var1310)
(declare-fun cast-from-String-to-var3067 (String) var3067)
(declare-const null-var1310 var1310)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2769 var1310) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper 
(assert (not (= var2769 null-var1310)))
(declare-const var1348 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1348 null-String)))
(declare-const var2285 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var2285 null-Int)))
(define-const var3075 String (String_valueOf/-371898945 var2285)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(assert true)
(define-const var2051 var1310 (addUnconditionalHolder/447605001 var2769 var1348 (cast-from-String-to-var3067 var3075))) ; Statement: $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.String,java.lang.Object)>(r1, $r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-371898945=([char], java.lang.String), addUnconditionalHolder/447605001=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, java.lang.String, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), cast-from-String-to-var3067=([java.lang.String], java.lang.Object)}
; {var1310=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, var2769=r0, var1348=r1, var1960=null_type, var2285=c0, var3075=$r2, var3067=java.lang.Object, var2051=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper=var1310, r0=var2769, r1=var1348, null_type=var1960, c0=var2285, $r2=var3075, java.lang.Object=var3067, $r3=var2051}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper;	r1 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	$r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.String,java.lang.Object)>(r1, $r2);	return $r3
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2355 0)
(declare-sort var2370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun addUnconditionalHolder/-1464768914 (var2355 var2370) var2355)
(declare-fun cast-from-String-to-var2370 (String) var2370)
(declare-const null-var2355 var2355)
(declare-const null-Int Int)
(declare-const var1293 var2355) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper 
(assert (not (= var1293 null-var2355)))
(declare-const var1402 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1402 null-Int)))
(define-const var115 String (String_valueOf/-107395227 var1402)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0) 
(assert true)
(define-const var3897 var2355 (addUnconditionalHolder/-1464768914 var1293 (cast-from-String-to-var2370 var115))) ; Statement: $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-107395227=([long], java.lang.String), addUnconditionalHolder/-1464768914=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), cast-from-String-to-var2370=([java.lang.String], java.lang.Object)}
; {var2355=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, var1293=r0, var1402=l0, var115=$r1, var2370=java.lang.Object, var3897=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper=var2355, r0=var1293, l0=var1402, $r1=var115, java.lang.Object=var2370, $r2=var3897}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper;	l0 := @parameter0: long;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0);	$r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.Object)>($r1);	return $r2
;block_num 1
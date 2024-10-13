(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3520 0)
(declare-sort var2836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun addUnconditionalHolder/-1464768914 (var3520 var2836) var3520)
(declare-fun cast-from-String-to-var2836 (String) var2836)
(declare-const null-var3520 var3520)
(declare-const null-Int Int)
(declare-const var3329 var3520) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper 
(assert (not (= var3329 null-var3520)))
(declare-const var2362 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2362 null-Int)))
(define-const var2053 String (String_valueOf/-371898945 var2362)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(assert true)
(define-const var2404 var3520 (addUnconditionalHolder/-1464768914 var3329 (cast-from-String-to-var2836 var2053))) ; Statement: $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-371898945=([char], java.lang.String), addUnconditionalHolder/-1464768914=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), cast-from-String-to-var2836=([java.lang.String], java.lang.Object)}
; {var3520=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, var3329=r0, var2362=c0, var2053=$r1, var2836=java.lang.Object, var2404=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper=var3520, r0=var3329, c0=var2362, $r1=var2053, java.lang.Object=var2836, $r2=var2404}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper;	c0 := @parameter0: char;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	$r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.Object)>($r1);	return $r2
;block_num 1
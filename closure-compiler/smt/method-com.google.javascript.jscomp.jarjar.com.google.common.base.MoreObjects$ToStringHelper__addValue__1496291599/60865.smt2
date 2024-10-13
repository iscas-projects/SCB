(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1351 0)
(declare-sort var2914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-fun addUnconditionalHolder/-1464768914 (var1351 var2914) var1351)
(declare-fun cast-from-String-to-var2914 (String) var2914)
(declare-const null-var1351 var1351)
(declare-const null-Bool Bool)
(declare-const var3804 var1351) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper 
(assert (not (= var3804 null-var1351)))
(declare-const var61 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var61 null-Bool)))
(define-const var3335 String (String_valueOf/-1973653463 var61)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0) 
(assert true)
(define-const var888 var1351 (addUnconditionalHolder/-1464768914 var3804 (cast-from-String-to-var2914 var3335))) ; Statement: $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-1973653463=([boolean], java.lang.String), addUnconditionalHolder/-1464768914=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), cast-from-String-to-var2914=([java.lang.String], java.lang.Object)}
; {var1351=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, var3804=r0, var61=z0, var3335=$r1, var2914=java.lang.Object, var888=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper=var1351, r0=var3804, z0=var61, $r1=var3335, java.lang.Object=var2914, $r2=var888}
;seq <java.lang.String: java.lang.String valueOf(boolean)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper;	z0 := @parameter0: boolean;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);	$r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper addUnconditionalHolder(java.lang.Object)>($r1);	return $r2
;block_num 1
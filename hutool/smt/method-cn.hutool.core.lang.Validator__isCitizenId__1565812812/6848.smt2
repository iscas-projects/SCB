(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2919 0)
(declare-sort var3350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var2919) String)
(declare-fun cast-from-String-to-var2919 (String) var2919)
(declare-fun var3350_isValidCard/-547683158 (String) Bool)
(declare-const null-String String)
(declare-const var1742 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1742 null-String)))
(define-const var3682 String (String_valueOf/-333372740 (cast-from-String-to-var2919 var1742))) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
(define-const var1268 Bool (var3350_isValidCard/-547683158 var3682)) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.IdcardUtil: boolean isValidCard(java.lang.String)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var2919=([java.lang.CharSequence], java.lang.Object), var3350_isValidCard/-547683158=([java.lang.String], boolean)}
; {var1742=r0, var2919=java.lang.Object, var3682=$r1, var3350=cn.hutool.core.util.IdcardUtil, var1268=$z0}
; {r0=var1742, java.lang.Object=var2919, $r1=var3682, cn.hutool.core.util.IdcardUtil=var3350, $z0=var1268}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	$z0 = staticinvoke <cn.hutool.core.util.IdcardUtil: boolean isValidCard(java.lang.String)>($r1);	return $z0
;block_num 1
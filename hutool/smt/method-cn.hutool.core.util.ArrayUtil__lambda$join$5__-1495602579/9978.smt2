(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2865 0)
(declare-sort var514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2865_edit/162354335 (var2865 var514) var514)
(declare-fun String_valueOf/-333372740 (var514) String)
(declare-const null-var2865 var2865)
(declare-const null-var514 var514)
(declare-const var99 var2865) ; Statement: r0 := @parameter0: cn.hutool.core.lang.Editor 
(assert (not (= var99 null-var2865)))
(declare-const var933 var514) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var933 null-var514)))
(define-const var3925 var514 (var2865_edit/162354335 var99 var933)) ; Statement: $r2 = interfaceinvoke r0.<cn.hutool.core.lang.Editor: java.lang.Object edit(java.lang.Object)>(r1) 
(define-const var1367 String (String_valueOf/-333372740 var3925)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2865_edit/162354335=([cn.hutool.core.lang.Editor, java.lang.Object], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var2865=cn.hutool.core.lang.Editor, var99=r0, var514=java.lang.Object, var933=r1, var3925=$r2, var1367=$r3}
; {cn.hutool.core.lang.Editor=var2865, r0=var99, java.lang.Object=var514, r1=var933, $r2=var3925, $r3=var1367}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @parameter0: cn.hutool.core.lang.Editor;	r1 := @parameter1: java.lang.Object;	$r2 = interfaceinvoke r0.<cn.hutool.core.lang.Editor: java.lang.Object edit(java.lang.Object)>(r1);	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2);	return $r3
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2987 0)
(declare-sort var156 0)
(declare-sort var3719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var156_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3719_valueOf/-1186540555 (Int) var3719)
(declare-const null-String String)
(declare-const var2219 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2219 null-String)))
(define-const var3805 Bool (var156_isEmpty/1595667738 (cast-from-String-to-String var2219))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (= (ite var3805 1 0) 0)) ; Cond: $z0 == 0 
(assert (not (and true (and (> (str.len var2219) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var156_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), charAt/698050440=([java.lang.String, int], char), var3719_valueOf/-1186540555=([char], java.lang.Character)}
; {var2219=r0, var2987=null_type, var156=org.apache.commons.lang3.StringUtils, var3805=$z0, var3477=$c0, var3719=java.lang.Character, var2120=$r1}
; {r0=var2219, null_type=var2987, org.apache.commons.lang3.StringUtils=var156, $z0=var3805, $c0=var3477, java.lang.Character=var3719, $r1=var2120}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r1 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c0);	return $r1
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3014 0)
(declare-sort var1874 0)
(declare-sort var3955 0)
(declare-sort var1277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getByGroup/-42940638 (var3014 String String) String)
(declare-fun var3955_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1277_valueOf/-1186540555 (Int) var1277)
(declare-const null-var3014 var3014)
(declare-const null-String String)
(declare-const var1276 var3014) ; Statement: r0 := @this: cn.hutool.setting.AbsSetting 
(assert (not (= var1276 null-var3014)))
(declare-const var2990 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2990 null-String)))
(declare-const var1398 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1398 null-String)))
(assert true)
(define-const var3208 String (getByGroup/-42940638 var1276 var2990 var1398)) ; Statement: r3 = virtualinvoke r0.<cn.hutool.setting.AbsSetting: java.lang.String getByGroup(java.lang.String,java.lang.String)>(r1, r2) 
(define-const var519 Bool (var3955_isBlank/-1569658263 (cast-from-String-to-String var3208))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r3) 
 ; Statement: if $z0 == 0 goto $c0 = virtualinvoke r3.<java.lang.String: char charAt(int)>(0) 
(assert (= (ite var519 1 0) 0)) ; Cond: $z0 == 0 
(assert (and true (and (> (str.len var3208) 0) (<= 0 0))))
(define-const var2504 Int (charAt/698050440 var3208 0)) ; Statement: $c0 = virtualinvoke r3.<java.lang.String: char charAt(int)>(0) 
(define-const var2704 var1277 (var1277_valueOf/-1186540555 var2504)) ; Statement: $r4 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getByGroup/-42940638=([cn.hutool.setting.AbsSetting, java.lang.String, java.lang.String], java.lang.String), var3955_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), charAt/698050440=([java.lang.String, int], char), var1277_valueOf/-1186540555=([char], java.lang.Character)}
; {var3014=cn.hutool.setting.AbsSetting, var1276=r0, var2990=r1, var1874=null_type, var1398=r2, var3208=r3, var3955=cn.hutool.core.text.CharSequenceUtil, var519=$z0, var2504=$c0, var1277=java.lang.Character, var2704=$r4}
; {cn.hutool.setting.AbsSetting=var3014, r0=var1276, r1=var2990, null_type=var1874, r2=var1398, r3=var3208, cn.hutool.core.text.CharSequenceUtil=var3955, $z0=var519, $c0=var2504, java.lang.Character=var1277, $r4=var2704}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: cn.hutool.setting.AbsSetting;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r3 = virtualinvoke r0.<cn.hutool.setting.AbsSetting: java.lang.String getByGroup(java.lang.String,java.lang.String)>(r1, r2);	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r3);	if $z0 == 0 goto $c0 = virtualinvoke r3.<java.lang.String: char charAt(int)>(0);	$c0 = virtualinvoke r3.<java.lang.String: char charAt(int)>(0);	$r4 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c0);	return $r4
;block_num 2
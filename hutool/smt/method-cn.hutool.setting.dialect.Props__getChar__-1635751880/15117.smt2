(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2170 0)
(declare-sort var3760 0)
(declare-sort var1013 0)
(declare-sort var2774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getStr/-447594086 (var2170 String) String)
(declare-fun var2774_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1013_valueOf/-1186540555 (Int) var1013)
(declare-const null-var2170 var2170)
(declare-const null-String String)
(declare-const null-var1013 var1013)
(declare-const var369 var2170) ; Statement: r0 := @this: cn.hutool.setting.dialect.Props 
(assert (not (= var369 null-var2170)))
(declare-const var3346 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3346 null-String)))
(declare-const var2771 var1013) ; Statement: r4 := @parameter1: java.lang.Character 
(assert (not (= var2771 null-var1013)))
(assert true)
(define-const var3191 String (getStr/-447594086 var369 var3346)) ; Statement: r2 = virtualinvoke r0.<cn.hutool.setting.dialect.Props: java.lang.String getStr(java.lang.String)>(r1) 
(define-const var3811 Bool (var2774_isBlank/-1569658263 (cast-from-String-to-String var3191))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r2) 
 ; Statement: if $z0 == 0 goto $c0 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0) 
(assert (= (ite var3811 1 0) 0)) ; Cond: $z0 == 0 
(assert (and true (and (> (str.len var3191) 0) (<= 0 0))))
(define-const var1680 Int (charAt/698050440 var3191 0)) ; Statement: $c0 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0) 
(define-const var3436 var1013 (var1013_valueOf/-1186540555 var1680)) ; Statement: $r3 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getStr/-447594086=([cn.hutool.setting.dialect.Props, java.lang.String], java.lang.String), var2774_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), charAt/698050440=([java.lang.String, int], char), var1013_valueOf/-1186540555=([char], java.lang.Character)}
; {var2170=cn.hutool.setting.dialect.Props, var369=r0, var3346=r1, var3760=null_type, var1013=java.lang.Character, var2771=r4, var3191=r2, var2774=cn.hutool.core.text.CharSequenceUtil, var3811=$z0, var1680=$c0, var3436=$r3}
; {cn.hutool.setting.dialect.Props=var2170, r0=var369, r1=var3346, null_type=var3760, java.lang.Character=var1013, r4=var2771, r2=var3191, cn.hutool.core.text.CharSequenceUtil=var2774, $z0=var3811, $c0=var1680, $r3=var3436}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: cn.hutool.setting.dialect.Props;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Character;	r2 = virtualinvoke r0.<cn.hutool.setting.dialect.Props: java.lang.String getStr(java.lang.String)>(r1);	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r2);	if $z0 == 0 goto $c0 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0);	$c0 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0);	$r3 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c0);	return $r3
;block_num 2
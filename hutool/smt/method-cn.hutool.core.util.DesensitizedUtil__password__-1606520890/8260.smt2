(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1723 0)
(declare-sort var1350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1350_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1350_repeat/-2130777133 (Int Int) String)
(declare-const null-String String)
(declare-const var3379 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3379 null-String)))
(define-const var2776 Bool (var1350_isBlank/-1569658263 (cast-from-String-to-String var3379))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (= (ite var2776 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1174 Int (length/-134980193 var3379)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3404 String (var1350_repeat/-2130777133 42 var1174)) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String repeat(char,int)>(42, $i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1350_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), var1350_repeat/-2130777133=([char, int], java.lang.String)}
; {var3379=r0, var1723=null_type, var1350=cn.hutool.core.text.CharSequenceUtil, var2776=$z0, var1174=$i0, var3404=$r1}
; {r0=var3379, null_type=var1723, cn.hutool.core.text.CharSequenceUtil=var1350, $z0=var2776, $i0=var1174, $r1=var3404}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String repeat(char,int)>(42, $i0);	return $r1
;block_num 2
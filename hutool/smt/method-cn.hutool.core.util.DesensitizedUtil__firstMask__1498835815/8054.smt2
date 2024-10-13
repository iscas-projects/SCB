(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2984 0)
(declare-sort var3653 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3653_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3653_hide/527634244 (String Int Int) String)
(declare-const null-String String)
(declare-const var672 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var672 null-String)))
(define-const var3445 Bool (var3653_isBlank/-1569658263 (cast-from-String-to-String var672))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (= (ite var3445 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2282 Int (length/-134980193 var672)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var8 String (var3653_hide/527634244 (cast-from-String-to-String var672) 1 var2282)) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String hide(java.lang.CharSequence,int,int)>(r0, 1, $i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3653_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), var3653_hide/527634244=([java.lang.CharSequence, int, int], java.lang.String)}
; {var672=r0, var2984=null_type, var3653=cn.hutool.core.text.CharSequenceUtil, var3445=$z0, var2282=$i0, var8=$r1}
; {r0=var672, null_type=var2984, cn.hutool.core.text.CharSequenceUtil=var3653, $z0=var3445, $i0=var2282, $r1=var8}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String hide(java.lang.CharSequence,int,int)>(r0, 1, $i0);	return $r1
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1234 0)
(declare-sort var2807 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2807_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2807_hide/527634244 (String Int Int) String)
(declare-const null-String String)
(declare-const var160 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var160 null-String)))
(define-const var3123 Bool (var2807_isBlank/-1569658263 (cast-from-String-to-String var160))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (= (ite var3123 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var388 Int (length/-134980193 var160)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1109 Int (- var388 4)) ; Statement: $i1 = $i0 - 4 
(define-const var1077 String (var2807_hide/527634244 (cast-from-String-to-String var160) 3 var1109)) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String hide(java.lang.CharSequence,int,int)>(r0, 3, $i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2807_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), var2807_hide/527634244=([java.lang.CharSequence, int, int], java.lang.String)}
; {var160=r0, var1234=null_type, var2807=cn.hutool.core.text.CharSequenceUtil, var3123=$z0, var388=$i0, var1109=$i1, var1077=$r1}
; {r0=var160, null_type=var1234, cn.hutool.core.text.CharSequenceUtil=var2807, $z0=var3123, $i0=var388, $i1=var1109, $r1=var1077}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 - 4;	$r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String hide(java.lang.CharSequence,int,int)>(r0, 3, $i1);	return $r1
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var860 0)
(declare-sort var2624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2624_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2624_hide/527634244 (String Int Int) String)
(declare-const null-String String)
(declare-const var3973 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3973 null-String)))
(define-const var2813 Bool (var2624_isBlank/-1569658263 (cast-from-String-to-String var3973))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (= (ite var2813 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var838 Int (length/-134980193 var3973)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2100 Int (- var838 2)) ; Statement: $i1 = $i0 - 2 
(define-const var146 String (var2624_hide/527634244 (cast-from-String-to-String var3973) 4 var2100)) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String hide(java.lang.CharSequence,int,int)>(r0, 4, $i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2624_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), var2624_hide/527634244=([java.lang.CharSequence, int, int], java.lang.String)}
; {var3973=r0, var860=null_type, var2624=cn.hutool.core.text.CharSequenceUtil, var2813=$z0, var838=$i0, var2100=$i1, var146=$r1}
; {r0=var3973, null_type=var860, cn.hutool.core.text.CharSequenceUtil=var2624, $z0=var2813, $i0=var838, $i1=var2100, $r1=var146}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 - 2;	$r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String hide(java.lang.CharSequence,int,int)>(r0, 4, $i1);	return $r1
;block_num 2
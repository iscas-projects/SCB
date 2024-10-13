(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1644 0)
(declare-sort var2680 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2680_removePreAndLowerFirst/-550414596 (String Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var2252 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2252 null-String)))
(assert true)
(define-const var1847 Bool (startsWith/-1785782452 var2252 "get")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("get") 
 ; Statement: if $z0 != 0 goto $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removePreAndLowerFirst(java.lang.CharSequence,int)>(r0, 3) 
(assert (not (= (ite var1847 1 0) 0))) ; Cond: $z0 != 0 
(define-const var157 String (var2680_removePreAndLowerFirst/-550414596 (cast-from-String-to-String var2252) 3)) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removePreAndLowerFirst(java.lang.CharSequence,int)>(r0, 3) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2680_removePreAndLowerFirst/-550414596=([java.lang.CharSequence, int], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2252=r0, var1644=null_type, var1847=$z0, var2680=cn.hutool.core.text.CharSequenceUtil, var157=$r1}
; {r0=var2252, null_type=var1644, $z0=var1847, cn.hutool.core.text.CharSequenceUtil=var2680, $r1=var157}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("get");	if $z0 != 0 goto $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removePreAndLowerFirst(java.lang.CharSequence,int)>(r0, 3);	$r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removePreAndLowerFirst(java.lang.CharSequence,int)>(r0, 3);	return $r1
;block_num 2
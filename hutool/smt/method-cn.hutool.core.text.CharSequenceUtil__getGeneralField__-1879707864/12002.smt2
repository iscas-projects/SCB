(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2210 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2210_removePreAndLowerFirst/-550414596 (String Int) String)
(declare-const null-String String)
(declare-const var239 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var239 null-String)))
(define-const var3680 String (String_toString/-1426662429 var239)) ; Statement: r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var2422 Bool (startsWith/-1785782452 var3680 "get")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("get") 
 ; Statement: if $z0 != 0 goto $r2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String removePreAndLowerFirst(java.lang.CharSequence,int)>(r0, 3) 
(assert (not (= (ite var2422 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1435 String (var2210_removePreAndLowerFirst/-550414596 var239 3)) ; Statement: $r2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String removePreAndLowerFirst(java.lang.CharSequence,int)>(r0, 3) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2210_removePreAndLowerFirst/-550414596=([java.lang.CharSequence, int], java.lang.String)}
; {var239=r0, var3680=r1, var2422=$z0, var2210=cn.hutool.core.text.CharSequenceUtil, var1435=$r2}
; {r0=var239, r1=var3680, $z0=var2422, cn.hutool.core.text.CharSequenceUtil=var2210, $r2=var1435}
;seq <java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("get");	if $z0 != 0 goto $r2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String removePreAndLowerFirst(java.lang.CharSequence,int)>(r0, 3);	$r2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String removePreAndLowerFirst(java.lang.CharSequence,int)>(r0, 3);	return $r2
;block_num 2
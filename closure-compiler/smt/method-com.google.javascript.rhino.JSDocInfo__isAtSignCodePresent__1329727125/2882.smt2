(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2659 0)
(declare-sort var3225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOriginalCommentString/-1694040755 (var2659) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var2659 var2659)
(declare-const null-String String)
(declare-const var3781 var2659) ; Statement: r0 := @this: com.google.javascript.rhino.JSDocInfo 
(assert (not (= var3781 null-var2659)))
(assert true)
(define-const var4 String (getOriginalCommentString/-1694040755 var3781)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.JSDocInfo: java.lang.String getOriginalCommentString()>() 
 ; Statement: if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@code") 
(assert (not (= var4 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var1662 Bool (contains/1009244746 var4 (cast-from-String-to-String "@code"))) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@code") 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getOriginalCommentString/-1694040755=([com.google.javascript.rhino.JSDocInfo], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2659=com.google.javascript.rhino.JSDocInfo, var3781=r0, var4=r1, var3225=null_type, var1662=$z0}
; {com.google.javascript.rhino.JSDocInfo=var2659, r0=var3781, r1=var4, null_type=var3225, $z0=var1662}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.google.javascript.rhino.JSDocInfo;	r1 = virtualinvoke r0.<com.google.javascript.rhino.JSDocInfo: java.lang.String getOriginalCommentString()>();	if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@code");	$z0 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@code");	return $z0
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1732 0)
(declare-sort var182 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var182_removeExtraneousSlashes/-1184663642 (String) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var2460 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2460 null-String)))
(define-const var95 String (var182_removeExtraneousSlashes/-1184663642 var2460)) ; Statement: r11 = staticinvoke <com.google.javascript.jscomp.deps.PathUtil: java.lang.String removeExtraneousSlashes(java.lang.String)>(r10) 
(assert true)
(define-const var1708 Bool (contains/1009244746 var95 (cast-from-String-to-String "."))) ; Statement: $z0 = virtualinvoke r11.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z0 != 0 goto $r0 = new java.util.ArrayList 
(assert (not (not (= (ite var1708 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var182_removeExtraneousSlashes/-1184663642=([java.lang.String], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2460=r10, var1732=null_type, var182=com.google.javascript.jscomp.deps.PathUtil, var95=r11, var1708=$z0}
; {r10=var2460, null_type=var1732, com.google.javascript.jscomp.deps.PathUtil=var182, r11=var95, $z0=var1708}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r10 := @parameter0: java.lang.String;	r11 = staticinvoke <com.google.javascript.jscomp.deps.PathUtil: java.lang.String removeExtraneousSlashes(java.lang.String)>(r10);	$z0 = virtualinvoke r11.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z0 != 0 goto $r0 = new java.util.ArrayList;	return r11
;block_num 2
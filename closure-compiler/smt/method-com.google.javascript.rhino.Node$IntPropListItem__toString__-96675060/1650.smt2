(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2932 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun intValue/1047007348 (var2932) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var2932 var2932)
(declare-const var3706 var2932) ; Statement: r0 := @this: com.google.javascript.rhino.Node$IntPropListItem 
(assert (not (= var3706 null-var2932)))
(define-const var2849 Int (intValue/1047007348 var3706)) ; Statement: $i0 = r0.<com.google.javascript.rhino.Node$IntPropListItem: int intValue> 
(define-const var1017 String (String_valueOf/1240665136 var2849)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {intValue/1047007348=([com.google.javascript.rhino.Node$IntPropListItem], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var2932=com.google.javascript.rhino.Node$IntPropListItem, var3706=r0, var2849=$i0, var1017=$r1}
; {com.google.javascript.rhino.Node$IntPropListItem=var2932, r0=var3706, $i0=var2849, $r1=var1017}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.rhino.Node$IntPropListItem;	$i0 = r0.<com.google.javascript.rhino.Node$IntPropListItem: int intValue>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	return $r1
;block_num 1
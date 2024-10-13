(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var989 0)
(declare-sort var1924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultValueToken/-597608604 (var989) var1924)
(declare-fun name/-597608604 (var989) String)
(declare-const null-var989 var989)
(declare-const null-var1924 var1924)
(declare-const var3379 var989) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.FormalArgument 
(assert (not (= var3379 null-var989)))
(define-const var2998 var1924 (defaultValueToken/-597608604 var3379)) ; Statement: $r1 = r0.<org.stringtemplate.v4.compiler.FormalArgument: org.antlr.runtime.Token defaultValueToken> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name> 
(assert (= var2998 null-var1924)) ; Cond: $r1 == null 
(define-const var2749 String (name/-597608604 var3379)) ; Statement: $r2 = r0.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultValueToken/-597608604=([org.stringtemplate.v4.compiler.FormalArgument], org.antlr.runtime.Token), name/-597608604=([org.stringtemplate.v4.compiler.FormalArgument], java.lang.String)}
; {var989=org.stringtemplate.v4.compiler.FormalArgument, var3379=r0, var1924=org.antlr.runtime.Token, var2998=$r1, var2749=$r2}
; {org.stringtemplate.v4.compiler.FormalArgument=var989, r0=var3379, org.antlr.runtime.Token=var1924, $r1=var2998, $r2=var2749}
;seq 
;cnt {}
;stmts r0 := @this: org.stringtemplate.v4.compiler.FormalArgument;	$r1 = r0.<org.stringtemplate.v4.compiler.FormalArgument: org.antlr.runtime.Token defaultValueToken>;	if $r1 == null goto $r2 = r0.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name>;	$r2 = r0.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name>;	return $r2
;block_num 2
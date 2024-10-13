(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var623 0)
(declare-sort var3984 0)
(declare-sort var3879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun safeSetString/682355463 (var623 var3984 String) void)
(declare-fun getParent/-1802087535 (var3984) var3984)
(declare-const null-var623 var623)
(declare-const null-var3984 var3984)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var999 var623) ; Statement: r2 := @this: com.google.javascript.jscomp.ClosureRewriteModule 
(assert (not (= var999 null-var623)))
(declare-const var3632 var3984) ; Statement: r1 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3632 null-var3984)))
(declare-const var1825 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1825 null-String)))
(declare-const var831 Bool) ; Statement: z3 := @parameter2: boolean 
(assert (not (= var831 null-Bool)))
(assert true)
(define-const var2090 Bool (contains/1009244746 var1825 (cast-from-String-to-String "."))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z0 != 0 goto r15 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
(assert (not (not (= (ite var2090 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
;(assert (safeSetString/682355463 var999 var3632 var1825)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.ClosureRewriteModule: void safeSetString(com.google.javascript.rhino.Node,java.lang.String)>(r1, r0) 

(declare-const var999!1 var623)
(declare-const var3632!1 var3984)
(declare-const var1825!1 String)
(assert true)
(define-const var1640 var3984 (getParent/-1802087535 var3632!1)) ; Statement: r14 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
 ; Statement: if z3 == 0 goto return 
(assert (= (ite var831 1 0) 0)) ; Cond: z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), safeSetString/682355463=([com.google.javascript.jscomp.ClosureRewriteModule, com.google.javascript.rhino.Node, java.lang.String], void), getParent/-1802087535=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node)}
; {var623=com.google.javascript.jscomp.ClosureRewriteModule, var999=r2, var3984=com.google.javascript.rhino.Node, var3632=r1, var1825=r0, var3879=null_type, var831=z3, var2090=$z0, var1640=r14}
; {com.google.javascript.jscomp.ClosureRewriteModule=var623, r2=var999, com.google.javascript.rhino.Node=var3984, r1=var3632, r0=var1825, null_type=var3879, z3=var831, $z0=var2090, r14=var1640}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ClosureRewriteModule;	r1 := @parameter0: com.google.javascript.rhino.Node;	r0 := @parameter1: java.lang.String;	z3 := @parameter2: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z0 != 0 goto r15 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	virtualinvoke r2.<com.google.javascript.jscomp.ClosureRewriteModule: void safeSetString(com.google.javascript.rhino.Node,java.lang.String)>(r1, r0);	r14 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	if z3 == 0 goto return;	return
;block_num 3
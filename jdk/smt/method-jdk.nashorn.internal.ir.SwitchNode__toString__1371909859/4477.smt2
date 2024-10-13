(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2508 0)
(declare-sort var2369 0)
(declare-sort var2574 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expression/316433074 (var2508) var2369)
(declare-fun toString/740977591 (var2574 String Bool) void)
(declare-fun cast-from-var2369-to-var2574 (var2369) var2574)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var2508 var2508)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2906 var2508) ; Statement: r1 := @this: jdk.nashorn.internal.ir.SwitchNode 
(assert (not (= var2906 null-var2508)))
(declare-const var839 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var839 null-String)))
(declare-const var2486 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2486 null-Bool)))
(assert true)
;(assert (append/672562846 var839 "switch (")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("switch (") 
(declare-const var839!1 String)
(assert (= var839!1 (str.++ var839 "switch (")))
(define-const var1987 var2369 (expression/316433074 var2906)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.SwitchNode: jdk.nashorn.internal.ir.Expression expression> 
(assert true)
;(assert (toString/740977591 (cast-from-var2369-to-var2574 var1987) var839!1 var2486)) ; Statement: virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r0, z0) 

(declare-const var1987!1 var2369)
(declare-const var839!2 String)
(declare-const var2486!1 Bool)
(assert true)
;(assert (append/-1166366385 var839!2 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var839!3 String)
(assert (str.prefixof var839!2 var839!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), expression/316433074=([jdk.nashorn.internal.ir.SwitchNode], jdk.nashorn.internal.ir.Expression), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), cast-from-var2369-to-var2574=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2508=jdk.nashorn.internal.ir.SwitchNode, var2906=r1, var839=r0, var2486=z0, var2369=jdk.nashorn.internal.ir.Expression, var1987=$r2, var2574=jdk.nashorn.internal.ir.Node}
; {jdk.nashorn.internal.ir.SwitchNode=var2508, r1=var2906, r0=var839, z0=var2486, jdk.nashorn.internal.ir.Expression=var2369, $r2=var1987, jdk.nashorn.internal.ir.Node=var2574}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.SwitchNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("switch (");	$r2 = r1.<jdk.nashorn.internal.ir.SwitchNode: jdk.nashorn.internal.ir.Expression expression>;	virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r0, z0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 1
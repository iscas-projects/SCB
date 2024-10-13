(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2489 0)
(declare-sort var2158 0)
(declare-sort var3155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun test/1364156706 (var3155) var2158)
(declare-fun cast-from-var2489-to-var3155 (var2489) var3155)
(declare-fun toString/-950452462 (var2158 String Bool) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var2489 var2489)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var605 var2489) ; Statement: r1 := @this: jdk.nashorn.internal.ir.WhileNode 
(assert (not (= var605 null-var2489)))
(declare-const var957 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var957 null-String)))
(declare-const var830 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var830 null-Bool)))
(assert true)
;(assert (append/672562846 var957 "while (")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("while (") 
(declare-const var957!1 String)
(assert (= var957!1 (str.++ var957 "while (")))
(define-const var3949 var2158 (test/1364156706 (cast-from-var2489-to-var3155 var605))) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.WhileNode: jdk.nashorn.internal.ir.JoinPredecessorExpression test> 
(assert true)
;(assert (toString/-950452462 var3949 var957!1 var830)) ; Statement: virtualinvoke $r2.<jdk.nashorn.internal.ir.JoinPredecessorExpression: void toString(java.lang.StringBuilder,boolean)>(r0, z0) 

(declare-const var3949!1 var2158)
(declare-const var957!2 String)
(declare-const var830!1 Bool)
(assert true)
;(assert (append/-1166366385 var957!2 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var957!3 String)
(assert (str.prefixof var957!2 var957!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), test/1364156706=([jdk.nashorn.internal.ir.LoopNode], jdk.nashorn.internal.ir.JoinPredecessorExpression), cast-from-var2489-to-var3155=([jdk.nashorn.internal.ir.WhileNode], jdk.nashorn.internal.ir.LoopNode), toString/-950452462=([jdk.nashorn.internal.ir.JoinPredecessorExpression, java.lang.StringBuilder, boolean], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2489=jdk.nashorn.internal.ir.WhileNode, var605=r1, var957=r0, var830=z0, var2158=jdk.nashorn.internal.ir.JoinPredecessorExpression, var3155=jdk.nashorn.internal.ir.LoopNode, var3949=$r2}
; {jdk.nashorn.internal.ir.WhileNode=var2489, r1=var605, r0=var957, z0=var830, jdk.nashorn.internal.ir.JoinPredecessorExpression=var2158, jdk.nashorn.internal.ir.LoopNode=var3155, $r2=var3949}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.ir.JoinPredecessorExpression: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.WhileNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("while (");	$r2 = r1.<jdk.nashorn.internal.ir.WhileNode: jdk.nashorn.internal.ir.JoinPredecessorExpression test>;	virtualinvoke $r2.<jdk.nashorn.internal.ir.JoinPredecessorExpression: void toString(java.lang.StringBuilder,boolean)>(r0, z0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 1
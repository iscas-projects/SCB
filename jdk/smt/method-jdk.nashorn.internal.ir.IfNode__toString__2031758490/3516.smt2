(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var880 0)
(declare-sort var935 0)
(declare-sort var424 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun test/-1090409957 (var880) var935)
(declare-fun toString/740977591 (var424 String Bool) void)
(declare-fun cast-from-var935-to-var424 (var935) var424)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var880 var880)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var705 var880) ; Statement: r1 := @this: jdk.nashorn.internal.ir.IfNode 
(assert (not (= var705 null-var880)))
(declare-const var456 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var456 null-String)))
(declare-const var2763 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2763 null-Bool)))
(assert true)
;(assert (append/672562846 var456 "if (")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("if (") 
(declare-const var456!1 String)
(assert (= var456!1 (str.++ var456 "if (")))
(define-const var832 var935 (test/-1090409957 var705)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.IfNode: jdk.nashorn.internal.ir.Expression test> 
(assert true)
;(assert (toString/740977591 (cast-from-var935-to-var424 var832) var456!1 var2763)) ; Statement: virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r0, z0) 

(declare-const var832!1 var935)
(declare-const var456!2 String)
(declare-const var2763!1 Bool)
(assert true)
;(assert (append/-1166366385 var456!2 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var456!3 String)
(assert (str.prefixof var456!2 var456!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), test/-1090409957=([jdk.nashorn.internal.ir.IfNode], jdk.nashorn.internal.ir.Expression), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), cast-from-var935-to-var424=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var880=jdk.nashorn.internal.ir.IfNode, var705=r1, var456=r0, var2763=z0, var935=jdk.nashorn.internal.ir.Expression, var832=$r2, var424=jdk.nashorn.internal.ir.Node}
; {jdk.nashorn.internal.ir.IfNode=var880, r1=var705, r0=var456, z0=var2763, jdk.nashorn.internal.ir.Expression=var935, $r2=var832, jdk.nashorn.internal.ir.Node=var424}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.IfNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("if (");	$r2 = r1.<jdk.nashorn.internal.ir.IfNode: jdk.nashorn.internal.ir.Expression test>;	virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r0, z0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1246 0)
(declare-sort var2586 0)
(declare-sort var2248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expression/-1834063292 (var1246) var2586)
(declare-fun toString/740977591 (var2248 String Bool) void)
(declare-fun cast-from-var2586-to-var2248 (var2586) var2248)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var1246 var1246)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3089 var1246) ; Statement: r1 := @this: jdk.nashorn.internal.ir.WithNode 
(assert (not (= var3089 null-var1246)))
(declare-const var3004 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3004 null-String)))
(declare-const var1190 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1190 null-Bool)))
(assert true)
;(assert (append/672562846 var3004 "with (")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("with (") 
(declare-const var3004!1 String)
(assert (= var3004!1 (str.++ var3004 "with (")))
(define-const var1602 var2586 (expression/-1834063292 var3089)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.WithNode: jdk.nashorn.internal.ir.Expression expression> 
(assert true)
;(assert (toString/740977591 (cast-from-var2586-to-var2248 var1602) var3004!1 var1190)) ; Statement: virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r0, z0) 

(declare-const var1602!1 var2586)
(declare-const var3004!2 String)
(declare-const var1190!1 Bool)
(assert true)
;(assert (append/-1166366385 var3004!2 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3004!3 String)
(assert (str.prefixof var3004!2 var3004!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), expression/-1834063292=([jdk.nashorn.internal.ir.WithNode], jdk.nashorn.internal.ir.Expression), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), cast-from-var2586-to-var2248=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1246=jdk.nashorn.internal.ir.WithNode, var3089=r1, var3004=r0, var1190=z0, var2586=jdk.nashorn.internal.ir.Expression, var1602=$r2, var2248=jdk.nashorn.internal.ir.Node}
; {jdk.nashorn.internal.ir.WithNode=var1246, r1=var3089, r0=var3004, z0=var1190, jdk.nashorn.internal.ir.Expression=var2586, $r2=var1602, jdk.nashorn.internal.ir.Node=var2248}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.WithNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("with (");	$r2 = r1.<jdk.nashorn.internal.ir.WithNode: jdk.nashorn.internal.ir.Expression expression>;	virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r0, z0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 1
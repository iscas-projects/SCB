(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3937 0)
(declare-sort var3198 0)
(declare-sort var3320 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun value/843938677 (var3320) var3198)
(declare-fun cast-from-var3937-to-var3320 (var3937) var3320)
(declare-fun cast-from-var3198-to-String (var3198) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3937 var3937)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3045 var3937) ; Statement: r1 := @this: jdk.nashorn.internal.ir.LiteralNode$StringLiteralNode 
(assert (not (= var3045 null-var3937)))
(declare-const var138 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var138 null-String)))
(declare-const var3864 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3864 null-Bool)))
(assert true)
;(assert (append/-1166366385 var138 34)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var138!1 String)
(assert (str.prefixof var138 var138!1))
(define-const var3799 var3198 (value/843938677 (cast-from-var3937-to-var3320 var3045))) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.LiteralNode$StringLiteralNode: java.lang.Object value> 
(define-const var2409 String (cast-from-var3198-to-String var3799)) ; Statement: $r3 = (java.lang.String) $r2 
(assert true)
;(assert (append/672562846 var138!1 var2409)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var138!2 String)
(assert (= var138!2 (str.++ var138!1 var2409)))
(assert true)
;(assert (append/-1166366385 var138!2 34)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var138!3 String)
(assert (str.prefixof var138!2 var138!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), value/843938677=([jdk.nashorn.internal.ir.LiteralNode], java.lang.Object), cast-from-var3937-to-var3320=([jdk.nashorn.internal.ir.LiteralNode$StringLiteralNode], jdk.nashorn.internal.ir.LiteralNode), cast-from-var3198-to-String=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3937=jdk.nashorn.internal.ir.LiteralNode$StringLiteralNode, var3045=r1, var138=r0, var3864=z0, var3198=java.lang.Object, var3320=jdk.nashorn.internal.ir.LiteralNode, var3799=$r2, var2409=$r3}
; {jdk.nashorn.internal.ir.LiteralNode$StringLiteralNode=var3937, r1=var3045, r0=var138, z0=var3864, java.lang.Object=var3198, jdk.nashorn.internal.ir.LiteralNode=var3320, $r2=var3799, $r3=var2409}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.LiteralNode$StringLiteralNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r2 = r1.<jdk.nashorn.internal.ir.LiteralNode$StringLiteralNode: java.lang.Object value>;	$r3 = (java.lang.String) $r2;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	return
;block_num 1
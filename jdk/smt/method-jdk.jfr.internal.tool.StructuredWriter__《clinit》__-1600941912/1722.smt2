(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2717 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2717-init () (Array Int var2717))
(declare-fun String_format/1339386452 (String (Array Int var2717)) String)
(define-const var1947 (Array Int var2717) arr-var2717-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
(define-const var2076 String (String_format/1339386452 "%n" var1947)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n", $r0) 
(define-const var1156 String var2076) ; Statement: <jdk.jfr.internal.tool.StructuredWriter: java.lang.String LINE_SEPARATOR> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2717-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2717=java.lang.Object, var1947=$r0, var2076=$r1, var1156=<jdk.jfr.internal.tool.StructuredWriter: java.lang.String LINE_SEPARATOR>}
; {java.lang.Object=var2717, $r0=var1947, $r1=var2076, <jdk.jfr.internal.tool.StructuredWriter: java.lang.String LINE_SEPARATOR>=var1156}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts $r0 = newarray (java.lang.Object)[0];	$r1 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n", $r0);	<jdk.jfr.internal.tool.StructuredWriter: java.lang.String LINE_SEPARATOR> = $r1;	return
;block_num 1
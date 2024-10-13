(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1775 0)
(declare-sort var1252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var1252) String)
(declare-fun print/169216161 (var1775 String) void)
(declare-const null-var1775 var1775)
(declare-const null-var1252 var1252)
(declare-const var3084 var1775) ; Statement: r0 := @this: jdk.jfr.internal.tool.StructuredWriter 
(assert (not (= var3084 null-var1775)))
(declare-const var2174 var1252) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2174 null-var1252)))
(define-const var2608 String (String_valueOf/-333372740 var2174)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (print/169216161 var3084 var2608)) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.StructuredWriter: void print(java.lang.String)>($r2) 

(declare-const var3084!1 var1775)
(declare-const var2608!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), print/169216161=([jdk.jfr.internal.tool.StructuredWriter, java.lang.String], void)}
; {var1775=jdk.jfr.internal.tool.StructuredWriter, var3084=r0, var1252=java.lang.Object, var2174=r1, var2608=$r2}
; {jdk.jfr.internal.tool.StructuredWriter=var1775, r0=var3084, java.lang.Object=var1252, r1=var2174, $r2=var2608}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.jfr.internal.tool.StructuredWriter;	r1 := @parameter0: java.lang.Object;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<jdk.jfr.internal.tool.StructuredWriter: void print(java.lang.String)>($r2);	return
;block_num 1
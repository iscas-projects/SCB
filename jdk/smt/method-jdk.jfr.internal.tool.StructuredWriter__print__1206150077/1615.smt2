(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun print/169216161 (var982 String) void)
(declare-const null-var982 var982)
(declare-const null-Int Int)
(declare-const var3536 var982) ; Statement: r0 := @this: jdk.jfr.internal.tool.StructuredWriter 
(assert (not (= var3536 null-var982)))
(declare-const var2813 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2813 null-Int)))
(define-const var1889 String (String_valueOf/1240665136 var2813)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
;(assert (print/169216161 var3536 var1889)) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.StructuredWriter: void print(java.lang.String)>($r1) 

(declare-const var3536!1 var982)
(declare-const var1889!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/1240665136=([int], java.lang.String), print/169216161=([jdk.jfr.internal.tool.StructuredWriter, java.lang.String], void)}
; {var982=jdk.jfr.internal.tool.StructuredWriter, var3536=r0, var2813=i0, var1889=$r1}
; {jdk.jfr.internal.tool.StructuredWriter=var982, r0=var3536, i0=var2813, $r1=var1889}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: jdk.jfr.internal.tool.StructuredWriter;	i0 := @parameter0: int;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	virtualinvoke r0.<jdk.jfr.internal.tool.StructuredWriter: void print(java.lang.String)>($r1);	return
;block_num 1
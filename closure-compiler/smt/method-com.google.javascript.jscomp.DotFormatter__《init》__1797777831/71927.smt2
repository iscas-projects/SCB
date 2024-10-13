(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1126 0)
(declare-sort var1497 0)
(declare-sort var3374 0)
(declare-sort var2541 0)
(declare-sort var1441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1497) void)
(declare-fun cast-from-var1126-to-var1497 (var1126) var1497)
(declare-fun var3374-init () var3374)
(declare-fun <init>/-1461814690 (var3374) void)
(declare-fun assignments/1373975966 (var1126) var3374)
(declare-fun keyCount/1373975966 (var1126) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun cast-from-String-to-var2541 (String) var2541)
(declare-fun builder/1373975966 (var1126) var2541)
(declare-fun cfg/1373975966 (var1126) var1441)
(declare-fun printAnnotations/1373975966 (var1126) Bool)
(declare-const null-var1126 var1126)
(declare-const null-var1441 var1441)
(declare-const var3515 var1126) ; Statement: r0 := @this: com.google.javascript.jscomp.DotFormatter 
(assert (not (= var3515 null-var1126)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1126-to-var1497 var3515))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3515!1 var1126)
(define-const var974 var3374 var3374-init) ; Statement: $r1 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var974)) ; Statement: specialinvoke $r1.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var974!1 var3374)
(declare-const var3515!2 var1126)
(assert (not (= var3515!2 null-var1126)))
(assert (= (assignments/1373975966 var3515!2) var974!1)) ; Statement: r0.<com.google.javascript.jscomp.DotFormatter: java.util.LinkedHashMap assignments> = $r1 
(declare-const var3515!3 var1126)
(assert (not (= var3515!3 null-var1126)))
(assert (= (keyCount/1373975966 var3515!3) 0)) ; Statement: r0.<com.google.javascript.jscomp.DotFormatter: int keyCount> = 0 
(define-const var3169 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3169)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3169!1 String)
(assert (= var3169!1 ""))
(declare-const var3515!4 var1126)
(assert (not (= var3515!4 null-var1126)))
(assert (= (builder/1373975966 var3515!4) (cast-from-String-to-var2541 var3169!1))) ; Statement: r0.<com.google.javascript.jscomp.DotFormatter: java.lang.Appendable builder> = $r2 
(declare-const var3515!5 var1126)
(assert (not (= var3515!5 null-var1126)))
(assert (= (cfg/1373975966 var3515!5) null-var1441)) ; Statement: r0.<com.google.javascript.jscomp.DotFormatter: com.google.javascript.jscomp.ControlFlowGraph cfg> = null 
(declare-const var3515!6 var1126)
(assert (not (= var3515!6 null-var1126)))
(assert (= (printAnnotations/1373975966 var3515!6) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.DotFormatter: boolean printAnnotations> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1126-to-var1497=([com.google.javascript.jscomp.DotFormatter], java.lang.Object), var3374-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), assignments/1373975966=([com.google.javascript.jscomp.DotFormatter], java.util.LinkedHashMap), keyCount/1373975966=([com.google.javascript.jscomp.DotFormatter], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-String-to-var2541=([java.lang.StringBuilder], java.lang.Appendable), builder/1373975966=([com.google.javascript.jscomp.DotFormatter], java.lang.Appendable), cfg/1373975966=([com.google.javascript.jscomp.DotFormatter], com.google.javascript.jscomp.ControlFlowGraph), printAnnotations/1373975966=([com.google.javascript.jscomp.DotFormatter], boolean)}
; {var1126=com.google.javascript.jscomp.DotFormatter, var3515=r0, var1497=java.lang.Object, var3374=java.util.LinkedHashMap, var974=$r1, var3169=$r2, var2541=java.lang.Appendable, var1441=com.google.javascript.jscomp.ControlFlowGraph}
; {com.google.javascript.jscomp.DotFormatter=var1126, r0=var3515, java.lang.Object=var1497, java.util.LinkedHashMap=var3374, $r1=var974, $r2=var3169, java.lang.Appendable=var2541, com.google.javascript.jscomp.ControlFlowGraph=var1441}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.DotFormatter;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.LinkedHashMap;	specialinvoke $r1.<java.util.LinkedHashMap: void <init>()>();	r0.<com.google.javascript.jscomp.DotFormatter: java.util.LinkedHashMap assignments> = $r1;	r0.<com.google.javascript.jscomp.DotFormatter: int keyCount> = 0;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r0.<com.google.javascript.jscomp.DotFormatter: java.lang.Appendable builder> = $r2;	r0.<com.google.javascript.jscomp.DotFormatter: com.google.javascript.jscomp.ControlFlowGraph cfg> = null;	r0.<com.google.javascript.jscomp.DotFormatter: boolean printAnnotations> = 0;	return
;block_num 1
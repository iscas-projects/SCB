(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3349 0)
(declare-sort var344 0)
(declare-sort var467 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceMap/-1525370 (var3349) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun transpiled/-1525370 (var3349) String)
(declare-fun escape/-916411016 (var344 String) String)
(declare-fun var3349-init () var3349)
(declare-fun path/-1525370 (var3349) var467)
(declare-fun original/-1525370 (var3349) String)
(declare-fun <init>/473561733 (var3349 var467 String String String) void)
(declare-const null-var3349 var3349)
(declare-const var3349-ESCAPER var344)
(declare-const var1281 var3349) ; Statement: r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult 
(assert (not (= var1281 null-var3349)))
(define-const var3649 String (sourceMap/-1525370 var1281)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap> 
(assert true)
(define-const var3858 Bool (isEmpty/-1285796103 var3649)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled> 
(assert (= (ite var3858 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3736 String (transpiled/-1525370 var1281)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled> 
(define-const var2958 var344 var3349-ESCAPER) ; Statement: $r3 = <com.google.javascript.jscomp.transpile.TranspileResult: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escaper ESCAPER> 
(define-const var3157 String (sourceMap/-1525370 var1281)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap> 
(assert true)
(define-const var3027 String (escape/-916411016 var2958 var3157)) ; Statement: $r5 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escaper: java.lang.String escape(java.lang.String)>($r2) 
(define-const var3425 String (str.++ "\u0001\n//# sourceMappingURL=data:,\u0001\n" var3736 var3027)) ; Statement: r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r4, $r5) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\n//# sourceMappingURL=data:,\u0001\n") 
(define-const var2492 var3349 var3349-init) ; Statement: $r7 = new com.google.javascript.jscomp.transpile.TranspileResult 
(define-const var1051 var467 (path/-1525370 var1281)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.net.URI path> 
(define-const var697 String (original/-1525370 var1281)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String original> 
(assert true)
;(assert (<init>/473561733 var2492 var1051 var697 var3425 "")) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.transpile.TranspileResult: void <init>(java.net.URI,java.lang.String,java.lang.String,java.lang.String)>($r9, $r8, r6, "") 

(declare-const var2492!1 var3349)
(declare-const var1051!1 var467)
(declare-const var697!1 String)
(declare-const var3425!1 String)
(declare-const var495 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceMap/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), transpiled/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), escape/-916411016=([com.google.javascript.jscomp.jarjar.com.google.common.escape.Escaper, java.lang.String], java.lang.String), var3349-init=([], com.google.javascript.jscomp.transpile.TranspileResult), path/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.net.URI), original/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), <init>/473561733=([com.google.javascript.jscomp.transpile.TranspileResult, java.net.URI, java.lang.String, java.lang.String, java.lang.String], void)}
; {var3349=com.google.javascript.jscomp.transpile.TranspileResult, var1281=r0, var3649=$r1, var3858=$z0, var3736=$r4, var344=com.google.javascript.jscomp.jarjar.com.google.common.escape.Escaper, var2958=$r3, var3157=$r2, var3027=$r5, var3425=r6, var2492=$r7, var467=java.net.URI, var1051=$r9, var697=$r8, var495=""}
; {com.google.javascript.jscomp.transpile.TranspileResult=var3349, r0=var1281, $r1=var3649, $z0=var3858, $r4=var3736, com.google.javascript.jscomp.jarjar.com.google.common.escape.Escaper=var344, $r3=var2958, $r2=var3157, $r5=var3027, r6=var3425, $r7=var2492, java.net.URI=var467, $r9=var1051, $r8=var697, ""=var495}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult;	$r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled>;	$r4 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled>;	$r3 = <com.google.javascript.jscomp.transpile.TranspileResult: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escaper ESCAPER>;	$r2 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap>;	$r5 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escaper: java.lang.String escape(java.lang.String)>($r2);	r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r4, $r5) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\n//# sourceMappingURL=data:,\u0001\n");	$r7 = new com.google.javascript.jscomp.transpile.TranspileResult;	$r9 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.net.URI path>;	$r8 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String original>;	specialinvoke $r7.<com.google.javascript.jscomp.transpile.TranspileResult: void <init>(java.net.URI,java.lang.String,java.lang.String,java.lang.String)>($r9, $r8, r6, "");	return $r7
;block_num 2
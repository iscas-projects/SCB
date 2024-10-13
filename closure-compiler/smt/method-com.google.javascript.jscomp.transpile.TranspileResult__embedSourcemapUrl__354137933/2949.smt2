(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3181 0)
(declare-sort var3434 0)
(declare-sort var352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceMap/-1525370 (var3181) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun transpiled/-1525370 (var3181) String)
(declare-fun var3181-init () var3181)
(declare-fun path/-1525370 (var3181) var352)
(declare-fun original/-1525370 (var3181) String)
(declare-fun <init>/473561733 (var3181 var352 String String String) void)
(declare-const null-var3181 var3181)
(declare-const null-String String)
(declare-const var337 var3181) ; Statement: r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult 
(assert (not (= var337 null-var3181)))
(declare-const var2142 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2142 null-String)))
(define-const var242 String (sourceMap/-1525370 var337)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap> 
(assert true)
(define-const var660 Bool (isEmpty/-1285796103 var242)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r3 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled> 
(assert (= (ite var660 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2356 String (transpiled/-1525370 var337)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled> 
(define-const var2756 String (str.++ "\u0001\n//# sourceMappingURL=\u0001\n" var2356 var2142)) ; Statement: r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r3, r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\n//# sourceMappingURL=\u0001\n") 
(define-const var1 var3181 var3181-init) ; Statement: $r5 = new com.google.javascript.jscomp.transpile.TranspileResult 
(define-const var3649 var352 (path/-1525370 var337)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.net.URI path> 
(define-const var1814 String (original/-1525370 var337)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String original> 
(define-const var954 String (sourceMap/-1525370 var337)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap> 
(assert true)
;(assert (<init>/473561733 var1 var3649 var1814 var2756 var954)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.transpile.TranspileResult: void <init>(java.net.URI,java.lang.String,java.lang.String,java.lang.String)>($r8, $r7, r4, $r6) 

(declare-const var1!1 var3181)
(declare-const var3649!1 var352)
(declare-const var1814!1 String)
(declare-const var2756!1 String)
(declare-const var954!1 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceMap/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), transpiled/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), var3181-init=([], com.google.javascript.jscomp.transpile.TranspileResult), path/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.net.URI), original/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), <init>/473561733=([com.google.javascript.jscomp.transpile.TranspileResult, java.net.URI, java.lang.String, java.lang.String, java.lang.String], void)}
; {var3181=com.google.javascript.jscomp.transpile.TranspileResult, var337=r0, var2142=r2, var3434=null_type, var242=$r1, var660=$z0, var2356=$r3, var2756=r4, var1=$r5, var352=java.net.URI, var3649=$r8, var1814=$r7, var954=$r6}
; {com.google.javascript.jscomp.transpile.TranspileResult=var3181, r0=var337, r2=var2142, null_type=var3434, $r1=var242, $z0=var660, $r3=var2356, r4=var2756, $r5=var1, java.net.URI=var352, $r8=var3649, $r7=var1814, $r6=var954}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult;	r2 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r3 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled>;	$r3 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled>;	r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r3, r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\n//# sourceMappingURL=\u0001\n");	$r5 = new com.google.javascript.jscomp.transpile.TranspileResult;	$r8 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.net.URI path>;	$r7 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String original>;	$r6 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap>;	specialinvoke $r5.<com.google.javascript.jscomp.transpile.TranspileResult: void <init>(java.net.URI,java.lang.String,java.lang.String,java.lang.String)>($r8, $r7, r4, $r6);	return $r5
;block_num 2
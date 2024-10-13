(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3951 0)
(declare-sort var3448 0)
(declare-sort var2468 0)
(declare-sort var3287 0)
(declare-sort var1162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceMap/-1525370 (var3951) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun transpiled/-1525370 (var3951) String)
(declare-fun var3448_base64/166620900 () var3448)
(declare-fun getBytes/-163691139 (String var2468) (Array Int Int))
(declare-fun encode/-1422064992 (var3448 (Array Int Int)) String)
(declare-fun var3951-init () var3951)
(declare-fun path/-1525370 (var3951) var1162)
(declare-fun original/-1525370 (var3951) String)
(declare-fun <init>/473561733 (var3951 var1162 String String String) void)
(declare-const null-var3951 var3951)
(declare-const var3287-UTF_8 var2468)
(declare-const var1193 var3951) ; Statement: r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult 
(assert (not (= var1193 null-var3951)))
(define-const var3012 String (sourceMap/-1525370 var1193)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap> 
(assert true)
(define-const var400 Bool (isEmpty/-1285796103 var3012)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled> 
(assert (= (ite var400 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2762 String (transpiled/-1525370 var1193)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled> 
(define-const var3683 var3448 var3448_base64/166620900) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding base64()>() 
(define-const var762 String (sourceMap/-1525370 var1193)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap> 
(define-const var1174 var2468 var3287-UTF_8) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var1489 (Array Int Int) (getBytes/-163691139 var762 var1174)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(assert true)
(define-const var1638 String (encode/-1422064992 var3683 var1489)) ; Statement: $r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: java.lang.String encode(byte[])>($r5) 
(define-const var2145 String (str.++ "\u0001\n//# sourceMappingURL=data:application/json;base64,\u0001\n" var2762 var1638)) ; Statement: r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r2, $r7) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\n//# sourceMappingURL=data:application/json;base64,\u0001\n") 
(define-const var899 var3951 var3951-init) ; Statement: $r9 = new com.google.javascript.jscomp.transpile.TranspileResult 
(define-const var2610 var1162 (path/-1525370 var1193)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.net.URI path> 
(define-const var1552 String (original/-1525370 var1193)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String original> 
(assert true)
;(assert (<init>/473561733 var899 var2610 var1552 var2145 "")) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.transpile.TranspileResult: void <init>(java.net.URI,java.lang.String,java.lang.String,java.lang.String)>($r11, $r10, r8, "") 

(declare-const var899!1 var3951)
(declare-const var2610!1 var1162)
(declare-const var1552!1 String)
(declare-const var2145!1 String)
(declare-const var3960 String)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceMap/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), transpiled/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), var3448_base64/166620900=([], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), encode/-1422064992=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, byte[]], java.lang.String), var3951-init=([], com.google.javascript.jscomp.transpile.TranspileResult), path/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.net.URI), original/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), <init>/473561733=([com.google.javascript.jscomp.transpile.TranspileResult, java.net.URI, java.lang.String, java.lang.String, java.lang.String], void)}
; {var3951=com.google.javascript.jscomp.transpile.TranspileResult, var1193=r0, var3012=$r1, var400=$z0, var2762=$r2, var3448=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, var3683=$r6, var762=$r4, var2468=java.nio.charset.Charset, var3287=java.nio.charset.StandardCharsets, var1174=$r3, var1489=$r5, var1638=$r7, var2145=r8, var899=$r9, var1162=java.net.URI, var2610=$r11, var1552=$r10, var3960=""}
; {com.google.javascript.jscomp.transpile.TranspileResult=var3951, r0=var1193, $r1=var3012, $z0=var400, $r2=var2762, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding=var3448, $r6=var3683, $r4=var762, java.nio.charset.Charset=var2468, java.nio.charset.StandardCharsets=var3287, $r3=var1174, $r5=var1489, $r7=var1638, r8=var2145, $r9=var899, java.net.URI=var1162, $r11=var2610, $r10=var1552, ""=var3960}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult;	$r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled>;	$r2 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled>;	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding base64()>();	$r4 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: java.lang.String encode(byte[])>($r5);	r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r2, $r7) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\n//# sourceMappingURL=data:application/json;base64,\u0001\n");	$r9 = new com.google.javascript.jscomp.transpile.TranspileResult;	$r11 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.net.URI path>;	$r10 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String original>;	specialinvoke $r9.<com.google.javascript.jscomp.transpile.TranspileResult: void <init>(java.net.URI,java.lang.String,java.lang.String,java.lang.String)>($r11, $r10, r8, "");	return $r9
;block_num 2
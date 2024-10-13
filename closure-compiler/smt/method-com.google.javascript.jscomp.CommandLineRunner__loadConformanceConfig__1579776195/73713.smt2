(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1743 0)
(declare-sort var1092 0)
(declare-sort var2735 0)
(declare-sort var3647 0)
(declare-sort var3368 0)
(declare-sort var2234 0)
(declare-sort var2830 0)
(declare-sort var3196 0)
(declare-sort var2841 0)
(declare-sort var3950 0)
(declare-sort var3173 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1092-init () var1092)
(declare-fun <init>/-1681595970 (var1092 String) void)
(declare-fun var2234_asCharSource/-903104840 (var1092 var2735) var3368)
(declare-fun read/-633387709 (var3368) String)
(declare-fun var3196_newBuilder/1047370735 () var2830)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3950-init () var3950)
(declare-fun <init>/-1645845558 (var3950 var3173) void)
(declare-fun cast-from-var2841-to-var3173 (var2841) var3173)
(declare-const null-String String)
(declare-const var3647-UTF_8 var2735)
(declare-const null-var2841 var2841)
(declare-const var2770 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2770 null-String)))
(define-const var3830 var1092 var1092-init) ; Statement: $r9 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var3830 var2770)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var3830!1 var1092)
(declare-const var2770!1 String)
(define-const var2004 var2735 var3647-UTF_8) ; Statement: $r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(define-const var1835 var3368 (var2234_asCharSource/-903104840 var3830!1 var2004)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.Files: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource asCharSource(java.io.File,java.nio.charset.Charset)>($r9, $r2) 
(assert true)
(define-const var2413 String (read/-633387709 var1835)) ; Statement: r8 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource: java.lang.String read()>() 
(define-const var3201 var2830 var3196_newBuilder/1047370735) ; Statement: r4 = staticinvoke <com.google.javascript.jscomp.ConformanceConfig: com.google.javascript.jscomp.ConformanceConfig$Builder newBuilder()>() 
(assert true)
(define-const var837 Bool (isEmpty/-1285796103 var2413)) ; Statement: $z0 = virtualinvoke r8.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat: void merge(java.lang.CharSequence,com.google.javascript.jscomp.jarjar.com.google.protobuf.Message$Builder)>(r8, r4) 
(assert (not (not (= (ite var837 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var3866 var2841) ; Statement: $r6 := @caughtexception 
(assert (not (= var3866 null-var2841)))
(define-const var3956 var3950 var3950-init) ; Statement: $r10 = new java.lang.RuntimeException 
(assert true)
;(assert (<init>/-1645845558 var3956 (cast-from-var2841-to-var3173 var3866))) ; Statement: specialinvoke $r10.<java.lang.RuntimeException: void <init>(java.lang.Throwable)>($r6) 

(declare-const var3956!1 var3950)
(declare-const var3866!1 var2841)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1092-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), var2234_asCharSource/-903104840=([java.io.File, java.nio.charset.Charset], com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource), read/-633387709=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource], java.lang.String), var3196_newBuilder/1047370735=([], com.google.javascript.jscomp.ConformanceConfig$Builder), isEmpty/-1285796103=([java.lang.String], boolean), var3950-init=([], java.lang.RuntimeException), <init>/-1645845558=([java.lang.RuntimeException, java.lang.Throwable], void), cast-from-var2841-to-var3173=([java.lang.Exception], java.lang.Throwable)}
; {var2770=r1, var1743=null_type, var1092=java.io.File, var3830=$r9, var2735=java.nio.charset.Charset, var3647=java.nio.charset.StandardCharsets, var2004=$r2, var3368=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource, var2234=com.google.javascript.jscomp.jarjar.com.google.common.io.Files, var1835=$r3, var2413=r8, var2830=com.google.javascript.jscomp.ConformanceConfig$Builder, var3196=com.google.javascript.jscomp.ConformanceConfig, var3201=r4, var837=$z0, var2841=java.lang.Exception, var3866=$r6, var3950=java.lang.RuntimeException, var3956=$r10, var3173=java.lang.Throwable}
; {r1=var2770, null_type=var1743, java.io.File=var1092, $r9=var3830, java.nio.charset.Charset=var2735, java.nio.charset.StandardCharsets=var3647, $r2=var2004, com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource=var3368, com.google.javascript.jscomp.jarjar.com.google.common.io.Files=var2234, $r3=var1835, r8=var2413, com.google.javascript.jscomp.ConformanceConfig$Builder=var2830, com.google.javascript.jscomp.ConformanceConfig=var3196, r4=var3201, $z0=var837, java.lang.Exception=var2841, $r6=var3866, java.lang.RuntimeException=var3950, $r10=var3956, java.lang.Throwable=var3173}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r9 = new java.io.File;	specialinvoke $r9.<java.io.File: void <init>(java.lang.String)>(r1);	$r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.Files: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource asCharSource(java.io.File,java.nio.charset.Charset)>($r9, $r2);	r8 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource: java.lang.String read()>();	r4 = staticinvoke <com.google.javascript.jscomp.ConformanceConfig: com.google.javascript.jscomp.ConformanceConfig$Builder newBuilder()>();	$z0 = virtualinvoke r8.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat: void merge(java.lang.CharSequence,com.google.javascript.jscomp.jarjar.com.google.protobuf.Message$Builder)>(r8, r4);	$r6 := @caughtexception;	$r10 = new java.lang.RuntimeException;	specialinvoke $r10.<java.lang.RuntimeException: void <init>(java.lang.Throwable)>($r6);	throw $r10
;block_num 2
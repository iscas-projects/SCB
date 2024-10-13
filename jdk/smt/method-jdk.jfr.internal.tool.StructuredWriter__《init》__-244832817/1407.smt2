(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1813 0)
(declare-sort var2077 0)
(declare-sort var1921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1921) void)
(declare-fun cast-from-var1813-to-var1921 (var1813) var1921)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun builder/-917033666 (var1813) String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun indentionArray/-917033666 (var1813) (Array Int Int))
(declare-fun indent/-917033666 (var1813) Int)
(declare-fun first/-917033666 (var1813) Bool)
(declare-fun out/-917033666 (var1813) var2077)
(declare-const null-var1813 var1813)
(declare-const null-var2077 var2077)
(declare-const var2245 var1813) ; Statement: r0 := @this: jdk.jfr.internal.tool.StructuredWriter 
(assert (not (= var2245 null-var1813)))
(declare-const var629 var2077) ; Statement: r3 := @parameter0: java.io.PrintWriter 
(assert (not (= var629 null-var2077)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1813-to-var1921 var2245))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2245!1 var1813)
(define-const var2185 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2185 4000)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(4000) 

(declare-const var2185!1 String)
(declare-const var2548 Int)
(declare-const var2245!2 var1813)
(assert (not (= var2245!2 null-var1813)))
(assert (= (builder/-917033666 var2245!2) var2185!1)) ; Statement: r0.<jdk.jfr.internal.tool.StructuredWriter: java.lang.StringBuilder builder> = $r1 
(define-const var3245 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (char)[0] 
(declare-const var2245!3 var1813)
(assert (not (= var2245!3 null-var1813)))
(assert (= (indentionArray/-917033666 var2245!3) var3245)) ; Statement: r0.<jdk.jfr.internal.tool.StructuredWriter: char[] indentionArray> = $r2 
(declare-const var2245!4 var1813)
(assert (not (= var2245!4 null-var1813)))
(assert (= (indent/-917033666 var2245!4) 0)) ; Statement: r0.<jdk.jfr.internal.tool.StructuredWriter: int indent> = 0 
(declare-const var2245!5 var1813)
(assert (not (= var2245!5 null-var1813)))
(assert (= (first/-917033666 var2245!5) (ite (= 1 1) true false))) ; Statement: r0.<jdk.jfr.internal.tool.StructuredWriter: boolean first> = 1 
(declare-const var2245!6 var1813)
(assert (not (= var2245!6 null-var1813)))
(assert (= (out/-917033666 var2245!6) var629)) ; Statement: r0.<jdk.jfr.internal.tool.StructuredWriter: java.io.PrintWriter out> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1813-to-var1921=([jdk.jfr.internal.tool.StructuredWriter], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), builder/-917033666=([jdk.jfr.internal.tool.StructuredWriter], java.lang.StringBuilder), arr-Int-init=([], char[]), indentionArray/-917033666=([jdk.jfr.internal.tool.StructuredWriter], char[]), indent/-917033666=([jdk.jfr.internal.tool.StructuredWriter], int), first/-917033666=([jdk.jfr.internal.tool.StructuredWriter], boolean), out/-917033666=([jdk.jfr.internal.tool.StructuredWriter], java.io.PrintWriter)}
; {var1813=jdk.jfr.internal.tool.StructuredWriter, var2245=r0, var2077=java.io.PrintWriter, var629=r3, var1921=java.lang.Object, var2185=$r1, var2548=4000, var3245=$r2}
; {jdk.jfr.internal.tool.StructuredWriter=var1813, r0=var2245, java.io.PrintWriter=var2077, r3=var629, java.lang.Object=var1921, $r1=var2185, 4000=var2548, $r2=var3245}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: jdk.jfr.internal.tool.StructuredWriter;	r3 := @parameter0: java.io.PrintWriter;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(4000);	r0.<jdk.jfr.internal.tool.StructuredWriter: java.lang.StringBuilder builder> = $r1;	$r2 = newarray (char)[0];	r0.<jdk.jfr.internal.tool.StructuredWriter: char[] indentionArray> = $r2;	r0.<jdk.jfr.internal.tool.StructuredWriter: int indent> = 0;	r0.<jdk.jfr.internal.tool.StructuredWriter: boolean first> = 1;	r0.<jdk.jfr.internal.tool.StructuredWriter: java.io.PrintWriter out> = r3;	return
;block_num 1
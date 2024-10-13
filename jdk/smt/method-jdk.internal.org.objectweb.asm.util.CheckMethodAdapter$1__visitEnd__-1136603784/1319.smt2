(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1822 0)
(declare-sort var2188 0)
(declare-sort var296 0)
(declare-sort var2890 0)
(declare-sort var1158 0)
(declare-sort var3849 0)
(declare-sort var603 0)
(declare-sort var3776 0)
(declare-sort var762 0)
(declare-sort var420 0)
(declare-sort var2088 0)
(declare-sort var2102 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2188-init () var2188)
(declare-fun var296-init () var296)
(declare-fun <init>/1309654201 (var296) void)
(declare-fun <init>/-623231959 (var2188 var2890) void)
(declare-fun cast-from-var296-to-var2890 (var296) var2890)
(declare-fun printStackTrace/885456489 (var3849) void)
(declare-fun cast-from-var1158-to-var3849 (var1158) var3849)
(declare-fun var603-init () var603)
(declare-fun <init>/358169345 (var603) void)
(declare-fun var3776-init () var3776)
(declare-fun <init>/980347192 (var3776 var762 Bool) void)
(declare-fun cast-from-var603-to-var762 (var603) var762)
(declare-fun var420_printAnalyzerResult/808479833 (var2088 var2188 var3776) void)
(declare-fun cast-from-var1822-to-var2088 (var1822) var2088)
(declare-fun close/2116439267 (var3776) void)
(declare-fun var2102-init () var2102)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/849299655 (var3849) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun toString/138175384 (var603) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2102 String) void)
(declare-const null-var1822 var1822)
(declare-const null-var1158 var1158)
(declare-const var1350 var1822) ; Statement: r2 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter$1 
(assert (not (= var1350 null-var1822)))
(define-const var3568 var2188 var2188-init) ; Statement: $r0 = new jdk.internal.org.objectweb.asm.tree.analysis.Analyzer 
(define-const var3158 var296 var296-init) ; Statement: $r1 = new jdk.internal.org.objectweb.asm.tree.analysis.BasicVerifier 
(assert true)
;(assert (<init>/1309654201 var3158)) ; Statement: specialinvoke $r1.<jdk.internal.org.objectweb.asm.tree.analysis.BasicVerifier: void <init>()>() 

(declare-const var3158!1 var296)
(assert true)
;(assert (<init>/-623231959 var3568 (cast-from-var296-to-var2890 var3158!1))) ; Statement: specialinvoke $r0.<jdk.internal.org.objectweb.asm.tree.analysis.Analyzer: void <init>(jdk.internal.org.objectweb.asm.tree.analysis.Interpreter)>($r1) 

(declare-const var3568!1 var2188)
(declare-const var3158!2 var296)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var487 var1158) ; Statement: $r4 := @caughtexception 
(assert (not (= var487 null-var1158)))
(define-const var501 Bool false) ; Statement: $z0 = $r4 instanceof java.lang.IndexOutOfBoundsException 
 ; Statement: if $z0 == 0 goto virtualinvoke $r4.<java.lang.Exception: void printStackTrace()>() 
(assert (= (ite var501 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (printStackTrace/885456489 (cast-from-var1158-to-var3849 var487))) ; Statement: virtualinvoke $r4.<java.lang.Exception: void printStackTrace()>() 

(declare-const var487!1 var1158)
(define-const var3284 var603 var603-init) ; Statement: $r6 = new java.io.StringWriter 
(assert true)
;(assert (<init>/358169345 var3284)) ; Statement: specialinvoke $r6.<java.io.StringWriter: void <init>()>() 

(declare-const var3284!1 var603)
(define-const var3138 var3776 var3776-init) ; Statement: $r7 = new java.io.PrintWriter 
(assert true)
;(assert (<init>/980347192 var3138 (cast-from-var603-to-var762 var3284!1) (ite (= 1 1) true false))) ; Statement: specialinvoke $r7.<java.io.PrintWriter: void <init>(java.io.Writer,boolean)>($r6, 1) 

(declare-const var3138!1 var3776)
(declare-const var3284!2 var603)
(declare-const var1559 Int)
;(assert (var420_printAnalyzerResult/808479833 (cast-from-var1822-to-var2088 var1350) var3568!1 var3138!1)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void printAnalyzerResult(jdk.internal.org.objectweb.asm.tree.MethodNode,jdk.internal.org.objectweb.asm.tree.analysis.Analyzer,java.io.PrintWriter)>(r2, $r0, $r7) 

(declare-const var1350!1 var1822)
(declare-const var3568!2 var2188)
(declare-const var3138!2 var3776)
(assert true)
;(assert (close/2116439267 var3138!2)) ; Statement: virtualinvoke $r7.<java.io.PrintWriter: void close()>() 

(declare-const var3138!3 var3776)
(define-const var1174 var2102 var2102-init) ; Statement: $r8 = new java.lang.RuntimeException 
(define-const var2198 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2198)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2198!1 String)
(assert (= var2198!1 ""))
(assert true)
(define-const var1783 String (getMessage/849299655 (cast-from-var1158-to-var3849 var487!1))) ; Statement: $r10 = virtualinvoke $r4.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var2162 String (append/672562846 var2198!1 var1783)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2198!2 String)
(assert (= var2198!2 (str.++ var2198!1 var1783)))
(assert true)
(define-const var3425 String (append/-1166366385 var2162 32)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2162!1 String)
(assert (str.prefixof var2162 var2162!1))
(assert true)
(define-const var3879 String (toString/138175384 var3284!2)) ; Statement: $r13 = virtualinvoke $r6.<java.io.StringWriter: java.lang.String toString()>() 
(assert true)
(define-const var1617 String (append/672562846 var3425 var3879)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3425!1 String)
(assert (= var3425!1 (str.++ var3425 var3879)))
(assert true)
(define-const var1023 String (toString/-2075883882 var1617)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1174 var1023)) ; Statement: specialinvoke $r8.<java.lang.RuntimeException: void <init>(java.lang.String)>($r15) 

(declare-const var1174!1 var2102)
(declare-const var1023!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2188-init=([], jdk.internal.org.objectweb.asm.tree.analysis.Analyzer), var296-init=([], jdk.internal.org.objectweb.asm.tree.analysis.BasicVerifier), <init>/1309654201=([jdk.internal.org.objectweb.asm.tree.analysis.BasicVerifier], void), <init>/-623231959=([jdk.internal.org.objectweb.asm.tree.analysis.Analyzer, jdk.internal.org.objectweb.asm.tree.analysis.Interpreter], void), cast-from-var296-to-var2890=([jdk.internal.org.objectweb.asm.tree.analysis.BasicVerifier], jdk.internal.org.objectweb.asm.tree.analysis.Interpreter), printStackTrace/885456489=([java.lang.Throwable], void), cast-from-var1158-to-var3849=([java.lang.Exception], java.lang.Throwable), var603-init=([], java.io.StringWriter), <init>/358169345=([java.io.StringWriter], void), var3776-init=([], java.io.PrintWriter), <init>/980347192=([java.io.PrintWriter, java.io.Writer, boolean], void), cast-from-var603-to-var762=([java.io.StringWriter], java.io.Writer), var420_printAnalyzerResult/808479833=([jdk.internal.org.objectweb.asm.tree.MethodNode, jdk.internal.org.objectweb.asm.tree.analysis.Analyzer, java.io.PrintWriter], void), cast-from-var1822-to-var2088=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter$1], jdk.internal.org.objectweb.asm.tree.MethodNode), close/2116439267=([java.io.PrintWriter], void), var2102-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/849299655=([java.lang.Throwable], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/138175384=([java.io.StringWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1822=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter$1, var1350=r2, var2188=jdk.internal.org.objectweb.asm.tree.analysis.Analyzer, var3568=$r0, var296=jdk.internal.org.objectweb.asm.tree.analysis.BasicVerifier, var3158=$r1, var2890=jdk.internal.org.objectweb.asm.tree.analysis.Interpreter, var1158=java.lang.Exception, var487=$r4, var501=$z0, var3849=java.lang.Throwable, var603=java.io.StringWriter, var3284=$r6, var3776=java.io.PrintWriter, var3138=$r7, var762=java.io.Writer, var1559=1, var420=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var2088=jdk.internal.org.objectweb.asm.tree.MethodNode, var2102=java.lang.RuntimeException, var1174=$r8, var2198=$r9, var1783=$r10, var2162=$r11, var3425=$r12, var3879=$r13, var1617=$r14, var1023=$r15}
; {jdk.internal.org.objectweb.asm.util.CheckMethodAdapter$1=var1822, r2=var1350, jdk.internal.org.objectweb.asm.tree.analysis.Analyzer=var2188, $r0=var3568, jdk.internal.org.objectweb.asm.tree.analysis.BasicVerifier=var296, $r1=var3158, jdk.internal.org.objectweb.asm.tree.analysis.Interpreter=var2890, java.lang.Exception=var1158, $r4=var487, $z0=var501, java.lang.Throwable=var3849, java.io.StringWriter=var603, $r6=var3284, java.io.PrintWriter=var3776, $r7=var3138, java.io.Writer=var762, 1=var1559, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var420, jdk.internal.org.objectweb.asm.tree.MethodNode=var2088, java.lang.RuntimeException=var2102, $r8=var1174, $r9=var2198, $r10=var1783, $r11=var2162, $r12=var3425, $r13=var3879, $r14=var1617, $r15=var1023}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.io.StringWriter: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter$1;	$r0 = new jdk.internal.org.objectweb.asm.tree.analysis.Analyzer;	$r1 = new jdk.internal.org.objectweb.asm.tree.analysis.BasicVerifier;	specialinvoke $r1.<jdk.internal.org.objectweb.asm.tree.analysis.BasicVerifier: void <init>()>();	specialinvoke $r0.<jdk.internal.org.objectweb.asm.tree.analysis.Analyzer: void <init>(jdk.internal.org.objectweb.asm.tree.analysis.Interpreter)>($r1);	$r4 := @caughtexception;	$z0 = $r4 instanceof java.lang.IndexOutOfBoundsException;	if $z0 == 0 goto virtualinvoke $r4.<java.lang.Exception: void printStackTrace()>();	virtualinvoke $r4.<java.lang.Exception: void printStackTrace()>();	$r6 = new java.io.StringWriter;	specialinvoke $r6.<java.io.StringWriter: void <init>()>();	$r7 = new java.io.PrintWriter;	specialinvoke $r7.<java.io.PrintWriter: void <init>(java.io.Writer,boolean)>($r6, 1);	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void printAnalyzerResult(jdk.internal.org.objectweb.asm.tree.MethodNode,jdk.internal.org.objectweb.asm.tree.analysis.Analyzer,java.io.PrintWriter)>(r2, $r0, $r7);	virtualinvoke $r7.<java.io.PrintWriter: void close()>();	$r8 = new java.lang.RuntimeException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r4.<java.lang.Exception: java.lang.String getMessage()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r13 = virtualinvoke $r6.<java.io.StringWriter: java.lang.String toString()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.RuntimeException: void <init>(java.lang.String)>($r15);	throw $r8
;block_num 3
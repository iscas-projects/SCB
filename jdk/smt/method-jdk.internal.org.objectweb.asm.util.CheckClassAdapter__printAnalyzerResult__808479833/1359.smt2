(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1944 0)
(declare-sort var1986 0)
(declare-sort var1048 0)
(declare-sort var1977 0)
(declare-sort var74 0)
(declare-sort var51 0)
(declare-sort var2320 0)
(declare-sort var3756 0)
(declare-sort var3268 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFrames/-835343582 (var1986) (Array Int var1977))
(declare-fun var74-init () var74)
(declare-fun <init>/274221523 (var74) void)
(declare-fun var51-init () var51)
(declare-fun <init>/1357942263 (var51 var2320) void)
(declare-fun cast-from-var74-to-var2320 (var74) var2320)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/-2079073047 (var1944) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun desc/-2079073047 (var1944) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var1048 String) void)
(declare-fun instructions/-2079073047 (var1944) var3756)
(declare-fun size/-121186171 (var3756) Int)
(declare-fun tryCatchBlocks/-2079073047 (var1944) var3268)
(declare-fun var3268_size/-959786421 (var3268) Int)
(declare-fun println/348898060 (var1048) void)
(declare-const null-var1944 var1944)
(declare-const null-var1986 var1986)
(declare-const null-var1048 var1048)
(declare-const var3586 var1944) ; Statement: r6 := @parameter0: jdk.internal.org.objectweb.asm.tree.MethodNode 
(assert (not (= var3586 null-var1944)))
(declare-const var3521 var1986) ; Statement: r0 := @parameter1: jdk.internal.org.objectweb.asm.tree.analysis.Analyzer 
(assert (not (= var3521 null-var1986)))
(declare-const var3247 var1048) ; Statement: r4 := @parameter2: java.io.PrintWriter 
(assert (not (= var3247 null-var1048)))
(assert true)
(define-const var3919 (Array Int var1977) (getFrames/-835343582 var3521)) ; Statement: r1 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.tree.analysis.Analyzer: jdk.internal.org.objectweb.asm.tree.analysis.Frame[] getFrames()>() 
(define-const var2734 var74 var74-init) ; Statement: $r2 = new jdk.internal.org.objectweb.asm.util.Textifier 
(assert true)
;(assert (<init>/274221523 var2734)) ; Statement: specialinvoke $r2.<jdk.internal.org.objectweb.asm.util.Textifier: void <init>()>() 

(declare-const var2734!1 var74)
(define-const var2776 var51 var51-init) ; Statement: $r3 = new jdk.internal.org.objectweb.asm.util.TraceMethodVisitor 
(assert true)
;(assert (<init>/1357942263 var2776 (cast-from-var74-to-var2320 var2734!1))) ; Statement: specialinvoke $r3.<jdk.internal.org.objectweb.asm.util.TraceMethodVisitor: void <init>(jdk.internal.org.objectweb.asm.util.Printer)>($r2) 

(declare-const var2776!1 var51)
(declare-const var2734!2 var74)
(define-const var2209 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2209)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2209!1 String)
(assert (= var2209!1 ""))
(define-const var1537 String (name/-2079073047 var3586)) ; Statement: $r7 = r6.<jdk.internal.org.objectweb.asm.tree.MethodNode: java.lang.String name> 
(assert true)
(define-const var3654 String (append/672562846 var2209!1 var1537)) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2209!2 String)
(assert (= var2209!2 (str.++ var2209!1 var1537)))
(define-const var3643 String (desc/-2079073047 var3586)) ; Statement: $r8 = r6.<jdk.internal.org.objectweb.asm.tree.MethodNode: java.lang.String desc> 
(assert true)
(define-const var3221 String (append/672562846 var3654 var3643)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3654!1 String)
(assert (= var3654!1 (str.++ var3654 var3643)))
(assert true)
(define-const var1442 String (toString/-2075883882 var3221)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var3247 var1442)) ; Statement: virtualinvoke r4.<java.io.PrintWriter: void println(java.lang.String)>($r11) 

(declare-const var3247!1 var1048)
(declare-const var1442!1 String)
(define-const var215 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(define-const var3387 var3756 (instructions/-2079073047 var3586)) ; Statement: $r12 = r6.<jdk.internal.org.objectweb.asm.tree.MethodNode: jdk.internal.org.objectweb.asm.tree.InsnList instructions> 
(assert true)
(define-const var2866 Int (size/-121186171 var3387)) ; Statement: $i0 = virtualinvoke $r12.<jdk.internal.org.objectweb.asm.tree.InsnList: int size()>() 
 ; Statement: if i9 >= $i0 goto i17 = 0 
(assert (>= var215 var2866)) ; Cond: i9 >= $i0 
(define-const var2870 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3161 var3268 (tryCatchBlocks/-2079073047 var3586)) ; Statement: $r13 = r6.<jdk.internal.org.objectweb.asm.tree.MethodNode: java.util.List tryCatchBlocks> 
(define-const var939 Int (var3268_size/-959786421 var3161)) ; Statement: $i1 = interfaceinvoke $r13.<java.util.List: int size()>() 
 ; Statement: if i17 >= $i1 goto virtualinvoke r4.<java.io.PrintWriter: void println()>() 
(assert (>= var2870 var939)) ; Cond: i17 >= $i1 
(assert true)
;(assert (println/348898060 var3247!1)) ; Statement: virtualinvoke r4.<java.io.PrintWriter: void println()>() 

(declare-const var3247!2 var1048)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getFrames/-835343582=([jdk.internal.org.objectweb.asm.tree.analysis.Analyzer], jdk.internal.org.objectweb.asm.tree.analysis.Frame[]), var74-init=([], jdk.internal.org.objectweb.asm.util.Textifier), <init>/274221523=([jdk.internal.org.objectweb.asm.util.Textifier], void), var51-init=([], jdk.internal.org.objectweb.asm.util.TraceMethodVisitor), <init>/1357942263=([jdk.internal.org.objectweb.asm.util.TraceMethodVisitor, jdk.internal.org.objectweb.asm.util.Printer], void), cast-from-var74-to-var2320=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/-2079073047=([jdk.internal.org.objectweb.asm.tree.MethodNode], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), desc/-2079073047=([jdk.internal.org.objectweb.asm.tree.MethodNode], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), instructions/-2079073047=([jdk.internal.org.objectweb.asm.tree.MethodNode], jdk.internal.org.objectweb.asm.tree.InsnList), size/-121186171=([jdk.internal.org.objectweb.asm.tree.InsnList], int), tryCatchBlocks/-2079073047=([jdk.internal.org.objectweb.asm.tree.MethodNode], java.util.List), var3268_size/-959786421=([java.util.List], int), println/348898060=([java.io.PrintWriter], void)}
; {var1944=jdk.internal.org.objectweb.asm.tree.MethodNode, var3586=r6, var1986=jdk.internal.org.objectweb.asm.tree.analysis.Analyzer, var3521=r0, var1048=java.io.PrintWriter, var3247=r4, var1977=jdk.internal.org.objectweb.asm.tree.analysis.Frame, var3919=r1, var74=jdk.internal.org.objectweb.asm.util.Textifier, var2734=$r2, var51=jdk.internal.org.objectweb.asm.util.TraceMethodVisitor, var2776=$r3, var2320=jdk.internal.org.objectweb.asm.util.Printer, var2209=$r5, var1537=$r7, var3654=$r9, var3643=$r8, var3221=$r10, var1442=$r11, var215=i9, var3756=jdk.internal.org.objectweb.asm.tree.InsnList, var3387=$r12, var2866=$i0, var2870=i17, var3268=java.util.List, var3161=$r13, var939=$i1}
; {jdk.internal.org.objectweb.asm.tree.MethodNode=var1944, r6=var3586, jdk.internal.org.objectweb.asm.tree.analysis.Analyzer=var1986, r0=var3521, java.io.PrintWriter=var1048, r4=var3247, jdk.internal.org.objectweb.asm.tree.analysis.Frame=var1977, r1=var3919, jdk.internal.org.objectweb.asm.util.Textifier=var74, $r2=var2734, jdk.internal.org.objectweb.asm.util.TraceMethodVisitor=var51, $r3=var2776, jdk.internal.org.objectweb.asm.util.Printer=var2320, $r5=var2209, $r7=var1537, $r9=var3654, $r8=var3643, $r10=var3221, $r11=var1442, i9=var215, jdk.internal.org.objectweb.asm.tree.InsnList=var3756, $r12=var3387, $i0=var2866, i17=var2870, java.util.List=var3268, $r13=var3161, $i1=var939}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @parameter0: jdk.internal.org.objectweb.asm.tree.MethodNode;	r0 := @parameter1: jdk.internal.org.objectweb.asm.tree.analysis.Analyzer;	r4 := @parameter2: java.io.PrintWriter;	r1 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.tree.analysis.Analyzer: jdk.internal.org.objectweb.asm.tree.analysis.Frame[] getFrames()>();	$r2 = new jdk.internal.org.objectweb.asm.util.Textifier;	specialinvoke $r2.<jdk.internal.org.objectweb.asm.util.Textifier: void <init>()>();	$r3 = new jdk.internal.org.objectweb.asm.util.TraceMethodVisitor;	specialinvoke $r3.<jdk.internal.org.objectweb.asm.util.TraceMethodVisitor: void <init>(jdk.internal.org.objectweb.asm.util.Printer)>($r2);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = r6.<jdk.internal.org.objectweb.asm.tree.MethodNode: java.lang.String name>;	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r8 = r6.<jdk.internal.org.objectweb.asm.tree.MethodNode: java.lang.String desc>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<java.io.PrintWriter: void println(java.lang.String)>($r11);	i9 = 0;	$r12 = r6.<jdk.internal.org.objectweb.asm.tree.MethodNode: jdk.internal.org.objectweb.asm.tree.InsnList instructions>;	$i0 = virtualinvoke $r12.<jdk.internal.org.objectweb.asm.tree.InsnList: int size()>();	if i9 >= $i0 goto i17 = 0;	i17 = 0;	$r13 = r6.<jdk.internal.org.objectweb.asm.tree.MethodNode: java.util.List tryCatchBlocks>;	$i1 = interfaceinvoke $r13.<java.util.List: int size()>();	if i17 >= $i1 goto virtualinvoke r4.<java.io.PrintWriter: void println()>();	virtualinvoke r4.<java.io.PrintWriter: void println()>();	return
;block_num 5
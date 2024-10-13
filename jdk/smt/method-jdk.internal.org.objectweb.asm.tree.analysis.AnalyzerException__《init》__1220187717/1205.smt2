(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2707 0)
(declare-sort var3659 0)
(declare-sort var2864 0)
(declare-sort var146 0)
(declare-sort var3605 0)
(declare-sort var807 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun append/-1031950772 (String var146) String)
(declare-fun cast-from-var3605-to-var146 (var3605) var146)
(declare-fun <init>/-8765015 (var807 String) void)
(declare-fun cast-from-var2707-to-var807 (var2707) var807)
(declare-fun node/1991781853 (var2707) var3659)
(declare-const null-var2707 var2707)
(declare-const null-var3659 var3659)
(declare-const null-String String)
(declare-const null-var146 var146)
(declare-const null-var3605 var3605)
(declare-const var1030 var2707) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException 
(assert (not (= var1030 null-var2707)))
(declare-const var2963 var3659) ; Statement: r13 := @parameter0: jdk.internal.org.objectweb.asm.tree.AbstractInsnNode 
(assert (not (= var2963 null-var3659)))
(declare-const var518 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var518 null-String)))
(declare-const var844 var146) ; Statement: r6 := @parameter2: java.lang.Object 
(assert (not (= var844 null-var146)))
(declare-const var2212 var3605) ; Statement: r9 := @parameter3: jdk.internal.org.objectweb.asm.tree.analysis.Value 
(assert (not (= var2212 null-var3605)))
(define-const var3507 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3507)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3507!1 String)
(assert (= var3507!1 ""))
 ; Statement: if r2 != null goto $r3 = new java.lang.StringBuilder 
(assert (not (= var518 null-String))) ; Cond: r2 != null 
(define-const var1633 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1633)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1633!1 String)
(assert (= var1633!1 ""))
(assert true)
(define-const var3335 String (append/672562846 var1633!1 var518)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1633!2 String)
(assert (= var1633!2 (str.++ var1633!1 var518)))
(assert true)
(define-const var1071 String (append/672562846 var3335 ": expected ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": expected ") 
(declare-const var3335!1 String)
(assert (= var3335!1 (str.++ var3335 ": expected ")))
(assert true)
(define-const var2147 String (toString/-2075883882 var1071)) ; Statement: $r14 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2168 String (append/672562846 var3507!1 var2147)) ; Statement: $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3507!2 String)
(assert (= var3507!2 (str.++ var3507!1 var2147)))
(assert true)
(define-const var167 String (append/-1031950772 var2168 var844)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var2168!1 String)
(assert (str.prefixof var2168 var2168!1))
(assert true)
(define-const var3005 String (append/672562846 var167 ", but found ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but found ") 
(declare-const var167!1 String)
(assert (= var167!1 (str.++ var167 ", but found ")))
(assert true)
(define-const var1570 String (append/-1031950772 var3005 (cast-from-var3605-to-var146 var2212))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r9) 
(declare-const var3005!1 String)
(assert (str.prefixof var3005 var3005!1))
(assert true)
(define-const var1209 String (toString/-2075883882 var1570)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 (cast-from-var2707-to-var807 var1030) var1209)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r12) 

(declare-const var1030!1 var2707)
(declare-const var1209!1 String)
(declare-const var1030!2 var2707)
(assert (not (= var1030!2 null-var2707)))
(assert (= (node/1991781853 var1030!2) var2963)) ; Statement: r0.<jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException: jdk.internal.org.objectweb.asm.tree.AbstractInsnNode node> = r13 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3605-to-var146=([jdk.internal.org.objectweb.asm.tree.analysis.Value], java.lang.Object), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var2707-to-var807=([jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException], java.lang.Exception), node/1991781853=([jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException], jdk.internal.org.objectweb.asm.tree.AbstractInsnNode)}
; {var2707=jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException, var1030=r0, var3659=jdk.internal.org.objectweb.asm.tree.AbstractInsnNode, var2963=r13, var518=r2, var2864=null_type, var146=java.lang.Object, var844=r6, var3605=jdk.internal.org.objectweb.asm.tree.analysis.Value, var2212=r9, var3507=$r1, var1633=$r3, var3335=$r4, var1071=$r5, var2147=$r14, var2168=$r7, var167=$r8, var3005=$r10, var1570=$r11, var1209=$r12, var807=java.lang.Exception}
; {jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException=var2707, r0=var1030, jdk.internal.org.objectweb.asm.tree.AbstractInsnNode=var3659, r13=var2963, r2=var518, null_type=var2864, java.lang.Object=var146, r6=var844, jdk.internal.org.objectweb.asm.tree.analysis.Value=var3605, r9=var2212, $r1=var3507, $r3=var1633, $r4=var3335, $r5=var1071, $r14=var2147, $r7=var2168, $r8=var167, $r10=var3005, $r11=var1570, $r12=var1209, java.lang.Exception=var807}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException;	r13 := @parameter0: jdk.internal.org.objectweb.asm.tree.AbstractInsnNode;	r2 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.Object;	r9 := @parameter3: jdk.internal.org.objectweb.asm.tree.analysis.Value;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	if r2 != null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": expected ");	$r14 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but found ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r12);	r0.<jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException: jdk.internal.org.objectweb.asm.tree.AbstractInsnNode node> = r13;	return
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2210 0)
(declare-sort var3061 0)
(declare-sort var1558 0)
(declare-sort var1898 0)
(declare-sort var2836 0)
(declare-sort var1962 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1898) String)
(declare-fun cast-from-var2836-to-var1898 (var2836) var1898)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var1962 String) void)
(declare-fun cast-from-var2210-to-var1962 (var2210) var1962)
(declare-fun node/1991781853 (var2210) var3061)
(declare-const null-var2210 var2210)
(declare-const null-var3061 var3061)
(declare-const null-String String)
(declare-const null-var1898 var1898)
(declare-const null-var2836 var2836)
(declare-const var3852 var2210) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException 
(assert (not (= var3852 null-var2210)))
(declare-const var1810 var3061) ; Statement: r13 := @parameter0: jdk.internal.org.objectweb.asm.tree.AbstractInsnNode 
(assert (not (= var1810 null-var3061)))
(declare-const var783 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var783 null-String)))
(declare-const var3894 var1898) ; Statement: r6 := @parameter2: java.lang.Object 
(assert (not (= var3894 null-var1898)))
(declare-const var2519 var2836) ; Statement: r9 := @parameter3: jdk.internal.org.objectweb.asm.tree.analysis.Value 
(assert (not (= var2519 null-var2836)))
(define-const var916 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var916)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var916!1 String)
(assert (= var916!1 ""))
 ; Statement: if r2 != null goto $r3 = new java.lang.StringBuilder 
(assert (not (not (= var783 null-String)))) ; Negate: Cond: r2 != null  
(define-const var1726 String "Expected ") ; Statement: $r14 = "Expected " 
 ; Statement: goto [?= $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3956 String (append/672562846 var916!1 var1726)) ; Statement: $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var916!2 String)
(assert (= var916!2 (str.++ var916!1 var1726)))
(assert true)
(define-const var1284 String (append/-1031950772 var3956 var3894)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var3956!1 String)
(assert (str.prefixof var3956 var3956!1))
(assert true)
(define-const var2980 String (append/672562846 var1284 ", but found ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but found ") 
(declare-const var1284!1 String)
(assert (= var1284!1 (str.++ var1284 ", but found ")))
(assert true)
(define-const var212 String (append/-1031950772 var2980 (cast-from-var2836-to-var1898 var2519))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r9) 
(declare-const var2980!1 String)
(assert (str.prefixof var2980 var2980!1))
(assert true)
(define-const var1827 String (toString/-2075883882 var212)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 (cast-from-var2210-to-var1962 var3852) var1827)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r12) 

(declare-const var3852!1 var2210)
(declare-const var1827!1 String)
(declare-const var3852!2 var2210)
(assert (not (= var3852!2 null-var2210)))
(assert (= (node/1991781853 var3852!2) var1810)) ; Statement: r0.<jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException: jdk.internal.org.objectweb.asm.tree.AbstractInsnNode node> = r13 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2836-to-var1898=([jdk.internal.org.objectweb.asm.tree.analysis.Value], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var2210-to-var1962=([jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException], java.lang.Exception), node/1991781853=([jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException], jdk.internal.org.objectweb.asm.tree.AbstractInsnNode)}
; {var2210=jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException, var3852=r0, var3061=jdk.internal.org.objectweb.asm.tree.AbstractInsnNode, var1810=r13, var783=r2, var1558=null_type, var1898=java.lang.Object, var3894=r6, var2836=jdk.internal.org.objectweb.asm.tree.analysis.Value, var2519=r9, var916=$r1, var1726=$r14, var3956=$r7, var1284=$r8, var2980=$r10, var212=$r11, var1827=$r12, var1962=java.lang.Exception}
; {jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException=var2210, r0=var3852, jdk.internal.org.objectweb.asm.tree.AbstractInsnNode=var3061, r13=var1810, r2=var783, null_type=var1558, java.lang.Object=var1898, r6=var3894, jdk.internal.org.objectweb.asm.tree.analysis.Value=var2836, r9=var2519, $r1=var916, $r14=var1726, $r7=var3956, $r8=var1284, $r10=var2980, $r11=var212, $r12=var1827, java.lang.Exception=var1962}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException;	r13 := @parameter0: jdk.internal.org.objectweb.asm.tree.AbstractInsnNode;	r2 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.Object;	r9 := @parameter3: jdk.internal.org.objectweb.asm.tree.analysis.Value;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	if r2 != null goto $r3 = new java.lang.StringBuilder;	$r14 = "Expected ";	goto [?= $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)];	$r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but found ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r12);	r0.<jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException: jdk.internal.org.objectweb.asm.tree.AbstractInsnNode node> = r13;	return
;block_num 3
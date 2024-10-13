(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3767 0)
(declare-sort var164 0)
(declare-sort var99 0)
(declare-sort var3535 0)
(declare-sort var1309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sp/-379439865 (var3767) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3535-init () var3535)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var1309) String)
(declare-fun cast-from-var99-to-var1309 (var99) var1309)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var3767-to-var1309 (var3767) var1309)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3535 var1309) void)
(declare-fun cast-from-String-to-var1309 (String) var1309)
(declare-const null-var3767 var3767)
(declare-const null-var164 var164)
(declare-const null-var99 var99)
(declare-const var2940 var3767) ; Statement: r0 := @this: jdk.nashorn.internal.ir.LexicalContext 
(assert (not (= var2940 null-var3767)))
(declare-const var3030 var164) ; Statement: r11 := @parameter0: jdk.nashorn.internal.ir.SplitNode 
(assert (not (= var3030 null-var164)))
(declare-const var2902 var99) ; Statement: r3 := @parameter1: jdk.nashorn.internal.ir.BreakableNode 
(assert (not (= var2902 null-var99)))
(define-const var1825 Int (sp/-379439865 var2940)) ; Statement: i1 = r0.<jdk.nashorn.internal.ir.LexicalContext: int sp> 
(assert true) ; Non Conditional
(define-const var934 Int var1825) ; Statement: $i0 = i1 
(define-const var639 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
(define-const var1825!1 Int (+ var1825 var639)) ; Statement: i1 = i1 + $i3 
 ; Statement: if $i0 <= 0 goto $r19 = new java.lang.AssertionError 
(assert (<= var934 0)) ; Cond: $i0 <= 0 
(define-const var3871 var3535 var3535-init) ; Statement: $r19 = new java.lang.AssertionError 
(define-const var2593 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2593)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2593!1 String)
(assert (= var2593!1 ""))
(assert true)
(define-const var2378 String (append/-1031950772 var2593!1 (cast-from-var99-to-var1309 var2902))) ; Statement: $r4 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var2593!2 String)
(assert (str.prefixof var2593!1 var2593!2))
(assert true)
(define-const var3337 String (append/672562846 var2378 " was expected in lexical context ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was expected in lexical context ") 
(declare-const var2378!1 String)
(assert (= var2378!1 (str.++ var2378 " was expected in lexical context ")))
(assert true)
(define-const var2885 String (append/-1031950772 var3337 (cast-from-var3767-to-var1309 var2940))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3337!1 String)
(assert (str.prefixof var3337 var3337!1))
(assert true)
(define-const var1150 String (append/672562846 var2885 " but wasn\u0027t")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but wasn\'t") 
(declare-const var2885!1 String)
(assert (= var2885!1 (str.++ var2885 " but wasn\u0027t")))
(assert true)
(define-const var2256 String (toString/-2075883882 var1150)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var3871 (cast-from-String-to-var1309 var2256))) ; Statement: specialinvoke $r19.<java.lang.AssertionError: void <init>(java.lang.Object)>($r8) 

(declare-const var3871!1 var3535)
(declare-const var2256!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {sp/-379439865=([jdk.nashorn.internal.ir.LexicalContext], int), cast-from-Int-to-Int=([int], int), var3535-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var99-to-var1309=([jdk.nashorn.internal.ir.BreakableNode], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var3767-to-var1309=([jdk.nashorn.internal.ir.LexicalContext], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var1309=([java.lang.String], java.lang.Object)}
; {var3767=jdk.nashorn.internal.ir.LexicalContext, var2940=r0, var164=jdk.nashorn.internal.ir.SplitNode, var3030=r11, var99=jdk.nashorn.internal.ir.BreakableNode, var2902=r3, var1825=i1, var934=$i0, var639=$i3, var3535=java.lang.AssertionError, var3871=$r19, var2593=$r18, var1309=java.lang.Object, var2378=$r4, var3337=$r5, var2885=$r6, var1150=$r7, var2256=$r8}
; {jdk.nashorn.internal.ir.LexicalContext=var3767, r0=var2940, jdk.nashorn.internal.ir.SplitNode=var164, r11=var3030, jdk.nashorn.internal.ir.BreakableNode=var99, r3=var2902, i1=var1825, $i0=var934, $i3=var639, java.lang.AssertionError=var3535, $r19=var3871, $r18=var2593, java.lang.Object=var1309, $r4=var2378, $r5=var3337, $r6=var2885, $r7=var1150, $r8=var2256}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.LexicalContext;	r11 := @parameter0: jdk.nashorn.internal.ir.SplitNode;	r3 := @parameter1: jdk.nashorn.internal.ir.BreakableNode;	i1 = r0.<jdk.nashorn.internal.ir.LexicalContext: int sp>;	$i0 = i1;	$i3 = (int) -1;	i1 = i1 + $i3;	if $i0 <= 0 goto $r19 = new java.lang.AssertionError;	$r19 = new java.lang.AssertionError;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was expected in lexical context ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but wasn\'t");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.lang.AssertionError: void <init>(java.lang.Object)>($r8);	throw $r19
;block_num 3
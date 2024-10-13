(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2356 0)
(declare-sort var1438 0)
(declare-sort var2376 0)
(declare-sort var3903 0)
(declare-sort var2616 0)
(declare-sort var375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParent/-1802087535 (var1438) var1438)
(declare-fun generateCode/57662837 (var2356 var2376 var1438) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun isGetProp/-1072994147 (var1438) Bool)
(declare-fun replacements/-140415376 (var2356) var3903)
(declare-fun getSourceFileName/-822247991 (var1438) String)
(declare-fun getSourceOffset/-1307740703 (var1438) Int)
(declare-fun getLength/-257672695 (var1438) Int)
(declare-fun var2616_create/1717363382 (Int Int String) var2616)
(declare-fun put/2131430142 (var3903 var375 var375) var3903)
(declare-fun cast-from-String-to-var375 (String) var375)
(declare-fun cast-from-var2616-to-var375 (var2616) var375)
(declare-const null-var2356 var2356)
(declare-const null-var1438 var1438)
(declare-const null-var2376 var2376)
(declare-const var1929 var2356) ; Statement: r1 := @this: com.google.javascript.refactoring.SuggestedFix$Builder 
(assert (not (= var1929 null-var2356)))
(declare-const var515 var1438) ; Statement: r11 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var515 null-var1438)))
(declare-const var3277 var1438) ; Statement: r3 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3277 null-var1438)))
(declare-const var3851 var2376) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.AbstractCompiler 
(assert (not (= var3851 null-var2376)))
(assert true)
(define-const var690 var1438 (getParent/-1802087535 var515)) ; Statement: r0 = virtualinvoke r11.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
 ; Statement: if r0 == null goto $r12 = virtualinvoke r1.<com.google.javascript.refactoring.SuggestedFix$Builder: java.lang.String generateCode(com.google.javascript.jscomp.AbstractCompiler,com.google.javascript.rhino.Node)>(r2, r3) 
(assert (= var690 null-var1438)) ; Cond: r0 == null 
(assert true)
(define-const var3072 String (generateCode/57662837 var1929 var3851 var3277)) ; Statement: $r12 = virtualinvoke r1.<com.google.javascript.refactoring.SuggestedFix$Builder: java.lang.String generateCode(com.google.javascript.jscomp.AbstractCompiler,com.google.javascript.rhino.Node)>(r2, r3) 
(define-const var580 String var3072) ; Statement: r13 = $r12 
(assert true)
(define-const var3236 Bool (endsWith/985337093 var3072 "\n")) ; Statement: $z11 = virtualinvoke $r12.<java.lang.String: boolean endsWith(java.lang.String)>("\n") 
 ; Statement: if $z11 == 0 goto (branch) 
(assert (= (ite var3236 1 0) 0)) ; Cond: $z11 == 0 
 ; Statement: if r0 == null goto $z12 = 0 
(assert (= var690 null-var1438)) ; Cond: r0 == null 
(define-const var3867 Bool (ite (= 1 0) true false)) ; Statement: $z12 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3604 Bool (endsWith/985337093 var580 ";")) ; Statement: $z13 = virtualinvoke r13.<java.lang.String: boolean endsWith(java.lang.String)>(";") 
 ; Statement: if $z13 == 0 goto (branch) 
(assert (= (ite var3604 1 0) 0)) ; Cond: $z13 == 0 
 ; Statement: if r0 == null goto r15 = r11 
(assert (= var690 null-var1438)) ; Cond: r0 == null 
(define-const var2869 var1438 var515) ; Statement: r15 = r11 
(assert true)
(define-const var1198 Bool (isGetProp/-1072994147 var515)) ; Statement: $z15 = virtualinvoke r11.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
 ; Statement: if $z15 == 0 goto $r4 = r1.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap$Builder replacements> 
(assert (= (ite var1198 1 0) 0)) ; Cond: $z15 == 0 
(define-const var1277 var3903 (replacements/-140415376 var1929)) ; Statement: $r4 = r1.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap$Builder replacements> 
(assert true)
(define-const var2739 String (getSourceFileName/-822247991 var2869)) ; Statement: $r6 = virtualinvoke r15.<com.google.javascript.rhino.Node: java.lang.String getSourceFileName()>() 
(assert true)
(define-const var1831 Int (getSourceOffset/-1307740703 var2869)) ; Statement: $i1 = virtualinvoke r15.<com.google.javascript.rhino.Node: int getSourceOffset()>() 
(assert true)
(define-const var3435 Int (getLength/-257672695 var2869)) ; Statement: $i0 = virtualinvoke r15.<com.google.javascript.rhino.Node: int getLength()>() 
(define-const var3476 var2616 (var2616_create/1717363382 var1831 var3435 var580)) ; Statement: $r5 = staticinvoke <com.google.javascript.refactoring.CodeReplacement: com.google.javascript.refactoring.CodeReplacement create(int,int,java.lang.String)>($i1, $i0, r13) 
(assert true)
;(assert (put/2131430142 var1277 (cast-from-String-to-var375 var2739) (cast-from-var2616-to-var375 var3476))) ; Statement: virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap$Builder put(java.lang.Object,java.lang.Object)>($r6, $r5) 

(declare-const var1277!1 var3903)
(declare-const var2739!1 String)
(declare-const var3476!1 var2616)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getParent/-1802087535=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), generateCode/57662837=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.jscomp.AbstractCompiler, com.google.javascript.rhino.Node], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), isGetProp/-1072994147=([com.google.javascript.rhino.Node], boolean), replacements/-140415376=([com.google.javascript.refactoring.SuggestedFix$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap$Builder), getSourceFileName/-822247991=([com.google.javascript.rhino.Node], java.lang.String), getSourceOffset/-1307740703=([com.google.javascript.rhino.Node], int), getLength/-257672695=([com.google.javascript.rhino.Node], int), var2616_create/1717363382=([int, int, java.lang.String], com.google.javascript.refactoring.CodeReplacement), put/2131430142=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap$Builder, java.lang.Object, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap$Builder), cast-from-String-to-var375=([java.lang.String], java.lang.Object), cast-from-var2616-to-var375=([com.google.javascript.refactoring.CodeReplacement], java.lang.Object)}
; {var2356=com.google.javascript.refactoring.SuggestedFix$Builder, var1929=r1, var1438=com.google.javascript.rhino.Node, var515=r11, var3277=r3, var2376=com.google.javascript.jscomp.AbstractCompiler, var3851=r2, var690=r0, var3072=$r12, var580=r13, var3236=$z11, var3867=$z12, var3604=$z13, var2869=r15, var1198=$z15, var3903=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap$Builder, var1277=$r4, var2739=$r6, var1831=$i1, var3435=$i0, var2616=com.google.javascript.refactoring.CodeReplacement, var3476=$r5, var375=java.lang.Object}
; {com.google.javascript.refactoring.SuggestedFix$Builder=var2356, r1=var1929, com.google.javascript.rhino.Node=var1438, r11=var515, r3=var3277, com.google.javascript.jscomp.AbstractCompiler=var2376, r2=var3851, r0=var690, $r12=var3072, r13=var580, $z11=var3236, $z12=var3867, $z13=var3604, r15=var2869, $z15=var1198, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap$Builder=var3903, $r4=var1277, $r6=var2739, $i1=var1831, $i0=var3435, com.google.javascript.refactoring.CodeReplacement=var2616, $r5=var3476, java.lang.Object=var375}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 2}
;stmts r1 := @this: com.google.javascript.refactoring.SuggestedFix$Builder;	r11 := @parameter0: com.google.javascript.rhino.Node;	r3 := @parameter1: com.google.javascript.rhino.Node;	r2 := @parameter2: com.google.javascript.jscomp.AbstractCompiler;	r0 = virtualinvoke r11.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	if r0 == null goto $r12 = virtualinvoke r1.<com.google.javascript.refactoring.SuggestedFix$Builder: java.lang.String generateCode(com.google.javascript.jscomp.AbstractCompiler,com.google.javascript.rhino.Node)>(r2, r3);	$r12 = virtualinvoke r1.<com.google.javascript.refactoring.SuggestedFix$Builder: java.lang.String generateCode(com.google.javascript.jscomp.AbstractCompiler,com.google.javascript.rhino.Node)>(r2, r3);	r13 = $r12;	$z11 = virtualinvoke $r12.<java.lang.String: boolean endsWith(java.lang.String)>("\n");	if $z11 == 0 goto (branch);	if r0 == null goto $z12 = 0;	$z12 = 0;	$z13 = virtualinvoke r13.<java.lang.String: boolean endsWith(java.lang.String)>(";");	if $z13 == 0 goto (branch);	if r0 == null goto r15 = r11;	r15 = r11;	$z15 = virtualinvoke r11.<com.google.javascript.rhino.Node: boolean isGetProp()>();	if $z15 == 0 goto $r4 = r1.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap$Builder replacements>;	$r4 = r1.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap$Builder replacements>;	$r6 = virtualinvoke r15.<com.google.javascript.rhino.Node: java.lang.String getSourceFileName()>();	$i1 = virtualinvoke r15.<com.google.javascript.rhino.Node: int getSourceOffset()>();	$i0 = virtualinvoke r15.<com.google.javascript.rhino.Node: int getLength()>();	$r5 = staticinvoke <com.google.javascript.refactoring.CodeReplacement: com.google.javascript.refactoring.CodeReplacement create(int,int,java.lang.String)>($i1, $i0, r13);	virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap$Builder put(java.lang.Object,java.lang.Object)>($r6, $r5);	return r1
;block_num 8
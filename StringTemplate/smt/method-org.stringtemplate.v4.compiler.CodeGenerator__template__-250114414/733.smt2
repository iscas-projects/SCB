(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2530 0)
(declare-sort var2908 0)
(declare-sort var1232 0)
(declare-sort var1345 0)
(declare-sort var3805 0)
(declare-sort var1588 0)
(declare-sort var59 0)
(declare-sort var620 0)
(declare-sort var1454 0)
(declare-sort var1598 0)
(declare-sort var2408 0)
(declare-sort var420 0)
(declare-sort var1036 0)
(declare-sort var1110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun template_stack/-426919730 (var2530) var1345)
(declare-fun var3805-init () var3805)
(declare-fun <init>/1975445998 (var3805) void)
(declare-fun push/1515821691 (var1345 var1588) var1588)
(declare-fun cast-from-var3805-to-var1588 (var3805) var1588)
(declare-fun peek/1027344839 (var1345) var1588)
(declare-fun cast-from-var1588-to-var3805 (var1588) var3805)
(declare-fun var59-init () var59)
(declare-fun errMgr/-426919730 (var2530) var620)
(declare-fun input/-639803156 (var1598) var1454)
(declare-fun cast-from-var2530-to-var1598 (var2530) var1598)
(declare-fun var1454_getTokenStream/1333908185 (var1454) var2408)
(declare-fun <init>/290496124 (var59 var620 String var2408) void)
(declare-fun state/1053846757 (var3805) var59)
(declare-fun impl/-2000007642 (var59) var420)
(declare-fun size/-1825798970 (var1036) Int)
(declare-fun cast-from-var1345-to-var1036 (var1345) var1036)
(declare-fun defineFormalArgs/715968572 (var420 var1232) void)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun template/-426919730 (var2530) String)
(declare-fun template/1377009226 (var420) String)
(declare-fun pop/1012470055 (var1345) var1588)
(declare-const null-var2530 var2530)
(declare-const null-String String)
(declare-const null-var1232 var1232)
(declare-const null-var3805 var3805)
(declare-const null-var420 var420)
(declare-const null-var1110 var1110)
(declare-const var3344 var2530) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.CodeGenerator 
(assert (not (= var3344 null-var2530)))
(declare-const var2291 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2291 null-String)))
(declare-const var145 var1232) ; Statement: r16 := @parameter1: java.util.List 
(assert (not (= var145 null-var1232)))
(define-const var583 var1345 (template_stack/-426919730 var3344)) ; Statement: $r2 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(define-const var3837 var3805 var3805-init) ; Statement: $r44 = new org.stringtemplate.v4.compiler.CodeGenerator$template_scope 
(assert true)
;(assert (<init>/1975445998 var3837)) ; Statement: specialinvoke $r44.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: void <init>()>() 

(declare-const var3837!1 var3805)
(assert true)
;(assert (push/1515821691 var583 (cast-from-var3805-to-var1588 var3837!1))) ; Statement: virtualinvoke $r2.<java.util.Stack: java.lang.Object push(java.lang.Object)>($r44) 

(declare-const var583!1 var1345)
(declare-const var3837!2 var3805)
(define-const var971 var1345 (template_stack/-426919730 var3344)) ; Statement: $r3 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(assert true)
(define-const var714 var1588 (peek/1027344839 var971)) ; Statement: $r4 = virtualinvoke $r3.<java.util.Stack: java.lang.Object peek()>() 
(define-const var1283 var3805 (cast-from-var1588-to-var3805 var714)) ; Statement: $r10 = (org.stringtemplate.v4.compiler.CodeGenerator$template_scope) $r4 
(define-const var2731 var59 var59-init) ; Statement: $r45 = new org.stringtemplate.v4.compiler.CompilationState 
(define-const var204 var620 (errMgr/-426919730 var3344)) ; Statement: $r8 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var218 var1454 (input/-639803156 (cast-from-var2530-to-var1598 var3344))) ; Statement: $r7 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: org.antlr.runtime.tree.TreeNodeStream input> 
(define-const var1147 var2408 (var1454_getTokenStream/1333908185 var218)) ; Statement: $r9 = interfaceinvoke $r7.<org.antlr.runtime.tree.TreeNodeStream: org.antlr.runtime.TokenStream getTokenStream()>() 
(assert true)
;(assert (<init>/290496124 var2731 var204 var2291 var1147)) ; Statement: specialinvoke $r45.<org.stringtemplate.v4.compiler.CompilationState: void <init>(org.stringtemplate.v4.misc.ErrorManager,java.lang.String,org.antlr.runtime.TokenStream)>($r8, r6, $r9) 

(declare-const var2731!1 var59)
(declare-const var204!1 var620)
(declare-const var2291!1 String)
(declare-const var1147!1 var2408)
(declare-const var1283!1 var3805)
(assert (not (= var1283!1 null-var3805)))
(assert (= (state/1053846757 var1283!1) var2731!1)) ; Statement: $r10.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: org.stringtemplate.v4.compiler.CompilationState state> = $r45 
(define-const var3726 var1345 (template_stack/-426919730 var3344)) ; Statement: $r11 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(assert true)
(define-const var1486 var1588 (peek/1027344839 var3726)) ; Statement: $r12 = virtualinvoke $r11.<java.util.Stack: java.lang.Object peek()>() 
(define-const var2309 var3805 (cast-from-var1588-to-var3805 var1486)) ; Statement: $r13 = (org.stringtemplate.v4.compiler.CodeGenerator$template_scope) $r12 
(define-const var713 var59 (state/1053846757 var2309)) ; Statement: $r14 = $r13.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: org.stringtemplate.v4.compiler.CompilationState state> 
(define-const var692 var420 (impl/-2000007642 var713)) ; Statement: r35 = $r14.<org.stringtemplate.v4.compiler.CompilationState: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var800 var1345 (template_stack/-426919730 var3344)) ; Statement: $r15 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(assert true)
(define-const var3012 Int (size/-1825798970 (cast-from-var1345-to-var1036 var800))) ; Statement: $i0 = virtualinvoke $r15.<java.util.Stack: int size()>() 
 ; Statement: if $i0 != 1 goto virtualinvoke r35.<org.stringtemplate.v4.compiler.CompiledST: void defineFormalArgs(java.util.List)>(r16) 
(assert (not (= var3012 1))) ; Cond: $i0 != 1 
(assert true)
;(assert (defineFormalArgs/715968572 var692 var145)) ; Statement: virtualinvoke r35.<org.stringtemplate.v4.compiler.CompiledST: void defineFormalArgs(java.util.List)>(r16) 

(declare-const var692!1 var420)
(declare-const var145!1 var1232)
 ; Statement: if r6 == null goto $r36 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String template> 
(assert (not (= var2291!1 null-String))) ; Negate: Cond: r6 == null  
(assert true)
(define-const var2001 Bool (startsWith/-1785782452 var2291!1 "_sub")) ; Statement: $z0 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("_sub") 
 ; Statement: if $z0 == 0 goto $r36 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String template> 
(assert (= (ite var2001 1 0) 0)) ; Cond: $z0 == 0 
(define-const var160 String (template/-426919730 var3344)) ; Statement: $r36 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String template> 
(declare-const var692!2 var420)
(assert (not (= var692!2 null-var420)))
(assert (= (template/1377009226 var692!2) var160)) ; Statement: r35.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String template> = $r36 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1299 var1110) ; Statement: $r30 := @caughtexception 
(assert (not (= var1299 null-var1110)))
(assert true) ; Non Conditional
(define-const var3101 var1345 (template_stack/-426919730 var3344)) ; Statement: $r31 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(assert true)
;(assert (pop/1012470055 var3101)) ; Statement: virtualinvoke $r31.<java.util.Stack: java.lang.Object pop()>() 

(declare-const var3101!1 var1345)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {template_stack/-426919730=([org.stringtemplate.v4.compiler.CodeGenerator], java.util.Stack), var3805-init=([], org.stringtemplate.v4.compiler.CodeGenerator$template_scope), <init>/1975445998=([org.stringtemplate.v4.compiler.CodeGenerator$template_scope], void), push/1515821691=([java.util.Stack, java.lang.Object], java.lang.Object), cast-from-var3805-to-var1588=([org.stringtemplate.v4.compiler.CodeGenerator$template_scope], java.lang.Object), peek/1027344839=([java.util.Stack], java.lang.Object), cast-from-var1588-to-var3805=([java.lang.Object], org.stringtemplate.v4.compiler.CodeGenerator$template_scope), var59-init=([], org.stringtemplate.v4.compiler.CompilationState), errMgr/-426919730=([org.stringtemplate.v4.compiler.CodeGenerator], org.stringtemplate.v4.misc.ErrorManager), input/-639803156=([org.antlr.runtime.tree.TreeParser], org.antlr.runtime.tree.TreeNodeStream), cast-from-var2530-to-var1598=([org.stringtemplate.v4.compiler.CodeGenerator], org.antlr.runtime.tree.TreeParser), var1454_getTokenStream/1333908185=([org.antlr.runtime.tree.TreeNodeStream], org.antlr.runtime.TokenStream), <init>/290496124=([org.stringtemplate.v4.compiler.CompilationState, org.stringtemplate.v4.misc.ErrorManager, java.lang.String, org.antlr.runtime.TokenStream], void), state/1053846757=([org.stringtemplate.v4.compiler.CodeGenerator$template_scope], org.stringtemplate.v4.compiler.CompilationState), impl/-2000007642=([org.stringtemplate.v4.compiler.CompilationState], org.stringtemplate.v4.compiler.CompiledST), size/-1825798970=([java.util.Vector], int), cast-from-var1345-to-var1036=([java.util.Stack], java.util.Vector), defineFormalArgs/715968572=([org.stringtemplate.v4.compiler.CompiledST, java.util.List], void), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), template/-426919730=([org.stringtemplate.v4.compiler.CodeGenerator], java.lang.String), template/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String), pop/1012470055=([java.util.Stack], java.lang.Object)}
; {var2530=org.stringtemplate.v4.compiler.CodeGenerator, var3344=r0, var2291=r6, var2908=null_type, var1232=java.util.List, var145=r16, var1345=java.util.Stack, var583=$r2, var3805=org.stringtemplate.v4.compiler.CodeGenerator$template_scope, var3837=$r44, var1588=java.lang.Object, var971=$r3, var714=$r4, var1283=$r10, var59=org.stringtemplate.v4.compiler.CompilationState, var2731=$r45, var620=org.stringtemplate.v4.misc.ErrorManager, var204=$r8, var1454=org.antlr.runtime.tree.TreeNodeStream, var1598=org.antlr.runtime.tree.TreeParser, var218=$r7, var2408=org.antlr.runtime.TokenStream, var1147=$r9, var3726=$r11, var1486=$r12, var2309=$r13, var713=$r14, var420=org.stringtemplate.v4.compiler.CompiledST, var692=r35, var800=$r15, var1036=java.util.Vector, var3012=$i0, var2001=$z0, var160=$r36, var1110=java.lang.Throwable, var1299=$r30, var3101=$r31}
; {org.stringtemplate.v4.compiler.CodeGenerator=var2530, r0=var3344, r6=var2291, null_type=var2908, java.util.List=var1232, r16=var145, java.util.Stack=var1345, $r2=var583, org.stringtemplate.v4.compiler.CodeGenerator$template_scope=var3805, $r44=var3837, java.lang.Object=var1588, $r3=var971, $r4=var714, $r10=var1283, org.stringtemplate.v4.compiler.CompilationState=var59, $r45=var2731, org.stringtemplate.v4.misc.ErrorManager=var620, $r8=var204, org.antlr.runtime.tree.TreeNodeStream=var1454, org.antlr.runtime.tree.TreeParser=var1598, $r7=var218, org.antlr.runtime.TokenStream=var2408, $r9=var1147, $r11=var3726, $r12=var1486, $r13=var2309, $r14=var713, org.stringtemplate.v4.compiler.CompiledST=var420, r35=var692, $r15=var800, java.util.Vector=var1036, $i0=var3012, $z0=var2001, $r36=var160, java.lang.Throwable=var1110, $r30=var1299, $r31=var3101}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.CodeGenerator;	r6 := @parameter0: java.lang.String;	r16 := @parameter1: java.util.List;	$r2 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	$r44 = new org.stringtemplate.v4.compiler.CodeGenerator$template_scope;	specialinvoke $r44.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: void <init>()>();	virtualinvoke $r2.<java.util.Stack: java.lang.Object push(java.lang.Object)>($r44);	$r3 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	$r4 = virtualinvoke $r3.<java.util.Stack: java.lang.Object peek()>();	$r10 = (org.stringtemplate.v4.compiler.CodeGenerator$template_scope) $r4;	$r45 = new org.stringtemplate.v4.compiler.CompilationState;	$r8 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r7 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: org.antlr.runtime.tree.TreeNodeStream input>;	$r9 = interfaceinvoke $r7.<org.antlr.runtime.tree.TreeNodeStream: org.antlr.runtime.TokenStream getTokenStream()>();	specialinvoke $r45.<org.stringtemplate.v4.compiler.CompilationState: void <init>(org.stringtemplate.v4.misc.ErrorManager,java.lang.String,org.antlr.runtime.TokenStream)>($r8, r6, $r9);	$r10.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: org.stringtemplate.v4.compiler.CompilationState state> = $r45;	$r11 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	$r12 = virtualinvoke $r11.<java.util.Stack: java.lang.Object peek()>();	$r13 = (org.stringtemplate.v4.compiler.CodeGenerator$template_scope) $r12;	$r14 = $r13.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: org.stringtemplate.v4.compiler.CompilationState state>;	r35 = $r14.<org.stringtemplate.v4.compiler.CompilationState: org.stringtemplate.v4.compiler.CompiledST impl>;	$r15 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	$i0 = virtualinvoke $r15.<java.util.Stack: int size()>();	if $i0 != 1 goto virtualinvoke r35.<org.stringtemplate.v4.compiler.CompiledST: void defineFormalArgs(java.util.List)>(r16);	virtualinvoke r35.<org.stringtemplate.v4.compiler.CompiledST: void defineFormalArgs(java.util.List)>(r16);	if r6 == null goto $r36 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String template>;	$z0 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("_sub");	if $z0 == 0 goto $r36 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String template>;	$r36 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String template>;	r35.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String template> = $r36;	$r30 := @caughtexception;	$r31 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	virtualinvoke $r31.<java.util.Stack: java.lang.Object pop()>();	throw $r30
;block_num 6
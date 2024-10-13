(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3110 0)
(declare-sort var3594 0)
(declare-sort var1941 0)
(declare-sort var2716 0)
(declare-sort var3820 0)
(declare-sort var3559 0)
(declare-sort var3565 0)
(declare-sort var3796 0)
(declare-sort var1439 0)
(declare-sort var2068 0)
(declare-sort var641 0)
(declare-sort var1993 0)
(declare-sort var1383 0)
(declare-sort var1277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun template_stack/-426919730 (var3110) var2716)
(declare-fun var3820-init () var3820)
(declare-fun <init>/1975445998 (var3820) void)
(declare-fun push/1515821691 (var2716 var3559) var3559)
(declare-fun cast-from-var3820-to-var3559 (var3820) var3559)
(declare-fun peek/1027344839 (var2716) var3559)
(declare-fun cast-from-var3559-to-var3820 (var3559) var3820)
(declare-fun var3565-init () var3565)
(declare-fun errMgr/-426919730 (var3110) var3796)
(declare-fun input/-639803156 (var2068) var1439)
(declare-fun cast-from-var3110-to-var2068 (var3110) var2068)
(declare-fun var1439_getTokenStream/1333908185 (var1439) var641)
(declare-fun <init>/290496124 (var3565 var3796 String var641) void)
(declare-fun state/1053846757 (var3820) var3565)
(declare-fun impl/-2000007642 (var3565) var1993)
(declare-fun size/-1825798970 (var1383) Int)
(declare-fun cast-from-var2716-to-var1383 (var2716) var1383)
(declare-fun defineFormalArgs/715968572 (var1993 var1941) void)
(declare-fun template/-426919730 (var3110) String)
(declare-fun template/1377009226 (var1993) String)
(declare-fun pop/1012470055 (var2716) var3559)
(declare-const null-var3110 var3110)
(declare-const null-String String)
(declare-const null-var1941 var1941)
(declare-const null-var3820 var3820)
(declare-const null-var1993 var1993)
(declare-const null-var1277 var1277)
(declare-const var894 var3110) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.CodeGenerator 
(assert (not (= var894 null-var3110)))
(declare-const var2079 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2079 null-String)))
(declare-const var2935 var1941) ; Statement: r16 := @parameter1: java.util.List 
(assert (not (= var2935 null-var1941)))
(define-const var3676 var2716 (template_stack/-426919730 var894)) ; Statement: $r2 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(define-const var3573 var3820 var3820-init) ; Statement: $r44 = new org.stringtemplate.v4.compiler.CodeGenerator$template_scope 
(assert true)
;(assert (<init>/1975445998 var3573)) ; Statement: specialinvoke $r44.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: void <init>()>() 

(declare-const var3573!1 var3820)
(assert true)
;(assert (push/1515821691 var3676 (cast-from-var3820-to-var3559 var3573!1))) ; Statement: virtualinvoke $r2.<java.util.Stack: java.lang.Object push(java.lang.Object)>($r44) 

(declare-const var3676!1 var2716)
(declare-const var3573!2 var3820)
(define-const var1024 var2716 (template_stack/-426919730 var894)) ; Statement: $r3 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(assert true)
(define-const var3640 var3559 (peek/1027344839 var1024)) ; Statement: $r4 = virtualinvoke $r3.<java.util.Stack: java.lang.Object peek()>() 
(define-const var2613 var3820 (cast-from-var3559-to-var3820 var3640)) ; Statement: $r10 = (org.stringtemplate.v4.compiler.CodeGenerator$template_scope) $r4 
(define-const var175 var3565 var3565-init) ; Statement: $r45 = new org.stringtemplate.v4.compiler.CompilationState 
(define-const var2369 var3796 (errMgr/-426919730 var894)) ; Statement: $r8 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var3590 var1439 (input/-639803156 (cast-from-var3110-to-var2068 var894))) ; Statement: $r7 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: org.antlr.runtime.tree.TreeNodeStream input> 
(define-const var1025 var641 (var1439_getTokenStream/1333908185 var3590)) ; Statement: $r9 = interfaceinvoke $r7.<org.antlr.runtime.tree.TreeNodeStream: org.antlr.runtime.TokenStream getTokenStream()>() 
(assert true)
;(assert (<init>/290496124 var175 var2369 var2079 var1025)) ; Statement: specialinvoke $r45.<org.stringtemplate.v4.compiler.CompilationState: void <init>(org.stringtemplate.v4.misc.ErrorManager,java.lang.String,org.antlr.runtime.TokenStream)>($r8, r6, $r9) 

(declare-const var175!1 var3565)
(declare-const var2369!1 var3796)
(declare-const var2079!1 String)
(declare-const var1025!1 var641)
(declare-const var2613!1 var3820)
(assert (not (= var2613!1 null-var3820)))
(assert (= (state/1053846757 var2613!1) var175!1)) ; Statement: $r10.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: org.stringtemplate.v4.compiler.CompilationState state> = $r45 
(define-const var119 var2716 (template_stack/-426919730 var894)) ; Statement: $r11 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(assert true)
(define-const var589 var3559 (peek/1027344839 var119)) ; Statement: $r12 = virtualinvoke $r11.<java.util.Stack: java.lang.Object peek()>() 
(define-const var1910 var3820 (cast-from-var3559-to-var3820 var589)) ; Statement: $r13 = (org.stringtemplate.v4.compiler.CodeGenerator$template_scope) $r12 
(define-const var2031 var3565 (state/1053846757 var1910)) ; Statement: $r14 = $r13.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: org.stringtemplate.v4.compiler.CompilationState state> 
(define-const var2321 var1993 (impl/-2000007642 var2031)) ; Statement: r35 = $r14.<org.stringtemplate.v4.compiler.CompilationState: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var130 var2716 (template_stack/-426919730 var894)) ; Statement: $r15 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(assert true)
(define-const var1527 Int (size/-1825798970 (cast-from-var2716-to-var1383 var130))) ; Statement: $i0 = virtualinvoke $r15.<java.util.Stack: int size()>() 
 ; Statement: if $i0 != 1 goto virtualinvoke r35.<org.stringtemplate.v4.compiler.CompiledST: void defineFormalArgs(java.util.List)>(r16) 
(assert (not (= var1527 1))) ; Cond: $i0 != 1 
(assert true)
;(assert (defineFormalArgs/715968572 var2321 var2935)) ; Statement: virtualinvoke r35.<org.stringtemplate.v4.compiler.CompiledST: void defineFormalArgs(java.util.List)>(r16) 

(declare-const var2321!1 var1993)
(declare-const var2935!1 var1941)
 ; Statement: if r6 == null goto $r36 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String template> 
(assert (= var2079!1 null-String)) ; Cond: r6 == null 
(define-const var3498 String (template/-426919730 var894)) ; Statement: $r36 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String template> 
(declare-const var2321!2 var1993)
(assert (not (= var2321!2 null-var1993)))
(assert (= (template/1377009226 var2321!2) var3498)) ; Statement: r35.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String template> = $r36 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2120 var1277) ; Statement: $r30 := @caughtexception 
(assert (not (= var2120 null-var1277)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2120!1 var1277) ; Statement: $r30 := @caughtexception 
(assert (not (= var2120!1 null-var1277)))
(assert true) ; Non Conditional
(define-const var3774 var2716 (template_stack/-426919730 var894)) ; Statement: $r31 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(assert true)
;(assert (pop/1012470055 var3774)) ; Statement: virtualinvoke $r31.<java.util.Stack: java.lang.Object pop()>() 

(declare-const var3774!1 var2716)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {template_stack/-426919730=([org.stringtemplate.v4.compiler.CodeGenerator], java.util.Stack), var3820-init=([], org.stringtemplate.v4.compiler.CodeGenerator$template_scope), <init>/1975445998=([org.stringtemplate.v4.compiler.CodeGenerator$template_scope], void), push/1515821691=([java.util.Stack, java.lang.Object], java.lang.Object), cast-from-var3820-to-var3559=([org.stringtemplate.v4.compiler.CodeGenerator$template_scope], java.lang.Object), peek/1027344839=([java.util.Stack], java.lang.Object), cast-from-var3559-to-var3820=([java.lang.Object], org.stringtemplate.v4.compiler.CodeGenerator$template_scope), var3565-init=([], org.stringtemplate.v4.compiler.CompilationState), errMgr/-426919730=([org.stringtemplate.v4.compiler.CodeGenerator], org.stringtemplate.v4.misc.ErrorManager), input/-639803156=([org.antlr.runtime.tree.TreeParser], org.antlr.runtime.tree.TreeNodeStream), cast-from-var3110-to-var2068=([org.stringtemplate.v4.compiler.CodeGenerator], org.antlr.runtime.tree.TreeParser), var1439_getTokenStream/1333908185=([org.antlr.runtime.tree.TreeNodeStream], org.antlr.runtime.TokenStream), <init>/290496124=([org.stringtemplate.v4.compiler.CompilationState, org.stringtemplate.v4.misc.ErrorManager, java.lang.String, org.antlr.runtime.TokenStream], void), state/1053846757=([org.stringtemplate.v4.compiler.CodeGenerator$template_scope], org.stringtemplate.v4.compiler.CompilationState), impl/-2000007642=([org.stringtemplate.v4.compiler.CompilationState], org.stringtemplate.v4.compiler.CompiledST), size/-1825798970=([java.util.Vector], int), cast-from-var2716-to-var1383=([java.util.Stack], java.util.Vector), defineFormalArgs/715968572=([org.stringtemplate.v4.compiler.CompiledST, java.util.List], void), template/-426919730=([org.stringtemplate.v4.compiler.CodeGenerator], java.lang.String), template/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String), pop/1012470055=([java.util.Stack], java.lang.Object)}
; {var3110=org.stringtemplate.v4.compiler.CodeGenerator, var894=r0, var2079=r6, var3594=null_type, var1941=java.util.List, var2935=r16, var2716=java.util.Stack, var3676=$r2, var3820=org.stringtemplate.v4.compiler.CodeGenerator$template_scope, var3573=$r44, var3559=java.lang.Object, var1024=$r3, var3640=$r4, var2613=$r10, var3565=org.stringtemplate.v4.compiler.CompilationState, var175=$r45, var3796=org.stringtemplate.v4.misc.ErrorManager, var2369=$r8, var1439=org.antlr.runtime.tree.TreeNodeStream, var2068=org.antlr.runtime.tree.TreeParser, var3590=$r7, var641=org.antlr.runtime.TokenStream, var1025=$r9, var119=$r11, var589=$r12, var1910=$r13, var2031=$r14, var1993=org.stringtemplate.v4.compiler.CompiledST, var2321=r35, var130=$r15, var1383=java.util.Vector, var1527=$i0, var3498=$r36, var1277=java.lang.Throwable, var2120=$r30, var3774=$r31}
; {org.stringtemplate.v4.compiler.CodeGenerator=var3110, r0=var894, r6=var2079, null_type=var3594, java.util.List=var1941, r16=var2935, java.util.Stack=var2716, $r2=var3676, org.stringtemplate.v4.compiler.CodeGenerator$template_scope=var3820, $r44=var3573, java.lang.Object=var3559, $r3=var1024, $r4=var3640, $r10=var2613, org.stringtemplate.v4.compiler.CompilationState=var3565, $r45=var175, org.stringtemplate.v4.misc.ErrorManager=var3796, $r8=var2369, org.antlr.runtime.tree.TreeNodeStream=var1439, org.antlr.runtime.tree.TreeParser=var2068, $r7=var3590, org.antlr.runtime.TokenStream=var641, $r9=var1025, $r11=var119, $r12=var589, $r13=var1910, $r14=var2031, org.stringtemplate.v4.compiler.CompiledST=var1993, r35=var2321, $r15=var130, java.util.Vector=var1383, $i0=var1527, $r36=var3498, java.lang.Throwable=var1277, $r30=var2120, $r31=var3774}
;seq 
;cnt {}
;stmts r0 := @this: org.stringtemplate.v4.compiler.CodeGenerator;	r6 := @parameter0: java.lang.String;	r16 := @parameter1: java.util.List;	$r2 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	$r44 = new org.stringtemplate.v4.compiler.CodeGenerator$template_scope;	specialinvoke $r44.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: void <init>()>();	virtualinvoke $r2.<java.util.Stack: java.lang.Object push(java.lang.Object)>($r44);	$r3 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	$r4 = virtualinvoke $r3.<java.util.Stack: java.lang.Object peek()>();	$r10 = (org.stringtemplate.v4.compiler.CodeGenerator$template_scope) $r4;	$r45 = new org.stringtemplate.v4.compiler.CompilationState;	$r8 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r7 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: org.antlr.runtime.tree.TreeNodeStream input>;	$r9 = interfaceinvoke $r7.<org.antlr.runtime.tree.TreeNodeStream: org.antlr.runtime.TokenStream getTokenStream()>();	specialinvoke $r45.<org.stringtemplate.v4.compiler.CompilationState: void <init>(org.stringtemplate.v4.misc.ErrorManager,java.lang.String,org.antlr.runtime.TokenStream)>($r8, r6, $r9);	$r10.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: org.stringtemplate.v4.compiler.CompilationState state> = $r45;	$r11 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	$r12 = virtualinvoke $r11.<java.util.Stack: java.lang.Object peek()>();	$r13 = (org.stringtemplate.v4.compiler.CodeGenerator$template_scope) $r12;	$r14 = $r13.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: org.stringtemplate.v4.compiler.CompilationState state>;	r35 = $r14.<org.stringtemplate.v4.compiler.CompilationState: org.stringtemplate.v4.compiler.CompiledST impl>;	$r15 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	$i0 = virtualinvoke $r15.<java.util.Stack: int size()>();	if $i0 != 1 goto virtualinvoke r35.<org.stringtemplate.v4.compiler.CompiledST: void defineFormalArgs(java.util.List)>(r16);	virtualinvoke r35.<org.stringtemplate.v4.compiler.CompiledST: void defineFormalArgs(java.util.List)>(r16);	if r6 == null goto $r36 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String template>;	$r36 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String template>;	r35.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String template> = $r36;	$r30 := @caughtexception;	$r30 := @caughtexception;	$r31 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	virtualinvoke $r31.<java.util.Stack: java.lang.Object pop()>();	throw $r30
;block_num 6
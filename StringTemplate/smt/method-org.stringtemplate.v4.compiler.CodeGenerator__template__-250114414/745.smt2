(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1050 0)
(declare-sort var887 0)
(declare-sort var480 0)
(declare-sort var452 0)
(declare-sort var150 0)
(declare-sort var2215 0)
(declare-sort var1323 0)
(declare-sort var3670 0)
(declare-sort var2198 0)
(declare-sort var408 0)
(declare-sort var1601 0)
(declare-sort var2904 0)
(declare-sort var343 0)
(declare-sort var1765 0)
(declare-sort var3928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun template_stack/-426919730 (var1050) var452)
(declare-fun var150-init () var150)
(declare-fun <init>/1975445998 (var150) void)
(declare-fun push/1515821691 (var452 var2215) var2215)
(declare-fun cast-from-var150-to-var2215 (var150) var2215)
(declare-fun peek/1027344839 (var452) var2215)
(declare-fun cast-from-var2215-to-var150 (var2215) var150)
(declare-fun var1323-init () var1323)
(declare-fun errMgr/-426919730 (var1050) var3670)
(declare-fun input/-639803156 (var408) var2198)
(declare-fun cast-from-var1050-to-var408 (var1050) var408)
(declare-fun var2198_getTokenStream/1333908185 (var2198) var1601)
(declare-fun <init>/290496124 (var1323 var3670 String var1601) void)
(declare-fun state/1053846757 (var150) var1323)
(declare-fun impl/-2000007642 (var1323) var2904)
(declare-fun size/-1825798970 (var343) Int)
(declare-fun cast-from-var452-to-var343 (var452) var343)
(declare-fun defineFormalArgs/715968572 (var2904 var480) void)
(declare-fun template/-426919730 (var1050) String)
(declare-fun template/1377009226 (var2904) String)
(declare-fun pop/1012470055 (var452) var2215)
(declare-const null-var1050 var1050)
(declare-const null-String String)
(declare-const null-var480 var480)
(declare-const null-var150 var150)
(declare-const null-var2904 var2904)
(declare-const var1050-FOLLOW_chunk_in_template77 var1765)
(declare-const null-var3928 var3928)
(declare-const var3225 var1050) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.CodeGenerator 
(assert (not (= var3225 null-var1050)))
(declare-const var1955 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var1955 null-String)))
(declare-const var718 var480) ; Statement: r16 := @parameter1: java.util.List 
(assert (not (= var718 null-var480)))
(define-const var3664 var452 (template_stack/-426919730 var3225)) ; Statement: $r2 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(define-const var1434 var150 var150-init) ; Statement: $r44 = new org.stringtemplate.v4.compiler.CodeGenerator$template_scope 
(assert true)
;(assert (<init>/1975445998 var1434)) ; Statement: specialinvoke $r44.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: void <init>()>() 

(declare-const var1434!1 var150)
(assert true)
;(assert (push/1515821691 var3664 (cast-from-var150-to-var2215 var1434!1))) ; Statement: virtualinvoke $r2.<java.util.Stack: java.lang.Object push(java.lang.Object)>($r44) 

(declare-const var3664!1 var452)
(declare-const var1434!2 var150)
(define-const var2838 var452 (template_stack/-426919730 var3225)) ; Statement: $r3 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(assert true)
(define-const var1296 var2215 (peek/1027344839 var2838)) ; Statement: $r4 = virtualinvoke $r3.<java.util.Stack: java.lang.Object peek()>() 
(define-const var2143 var150 (cast-from-var2215-to-var150 var1296)) ; Statement: $r10 = (org.stringtemplate.v4.compiler.CodeGenerator$template_scope) $r4 
(define-const var987 var1323 var1323-init) ; Statement: $r45 = new org.stringtemplate.v4.compiler.CompilationState 
(define-const var1561 var3670 (errMgr/-426919730 var3225)) ; Statement: $r8 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var3958 var2198 (input/-639803156 (cast-from-var1050-to-var408 var3225))) ; Statement: $r7 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: org.antlr.runtime.tree.TreeNodeStream input> 
(define-const var1165 var1601 (var2198_getTokenStream/1333908185 var3958)) ; Statement: $r9 = interfaceinvoke $r7.<org.antlr.runtime.tree.TreeNodeStream: org.antlr.runtime.TokenStream getTokenStream()>() 
(assert true)
;(assert (<init>/290496124 var987 var1561 var1955 var1165)) ; Statement: specialinvoke $r45.<org.stringtemplate.v4.compiler.CompilationState: void <init>(org.stringtemplate.v4.misc.ErrorManager,java.lang.String,org.antlr.runtime.TokenStream)>($r8, r6, $r9) 

(declare-const var987!1 var1323)
(declare-const var1561!1 var3670)
(declare-const var1955!1 String)
(declare-const var1165!1 var1601)
(declare-const var2143!1 var150)
(assert (not (= var2143!1 null-var150)))
(assert (= (state/1053846757 var2143!1) var987!1)) ; Statement: $r10.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: org.stringtemplate.v4.compiler.CompilationState state> = $r45 
(define-const var3141 var452 (template_stack/-426919730 var3225)) ; Statement: $r11 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(assert true)
(define-const var1060 var2215 (peek/1027344839 var3141)) ; Statement: $r12 = virtualinvoke $r11.<java.util.Stack: java.lang.Object peek()>() 
(define-const var3984 var150 (cast-from-var2215-to-var150 var1060)) ; Statement: $r13 = (org.stringtemplate.v4.compiler.CodeGenerator$template_scope) $r12 
(define-const var2752 var1323 (state/1053846757 var3984)) ; Statement: $r14 = $r13.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: org.stringtemplate.v4.compiler.CompilationState state> 
(define-const var2140 var2904 (impl/-2000007642 var2752)) ; Statement: r35 = $r14.<org.stringtemplate.v4.compiler.CompilationState: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var70 var452 (template_stack/-426919730 var3225)) ; Statement: $r15 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(assert true)
(define-const var3519 Int (size/-1825798970 (cast-from-var452-to-var343 var70))) ; Statement: $i0 = virtualinvoke $r15.<java.util.Stack: int size()>() 
 ; Statement: if $i0 != 1 goto virtualinvoke r35.<org.stringtemplate.v4.compiler.CompiledST: void defineFormalArgs(java.util.List)>(r16) 
(assert (not (= var3519 1))) ; Cond: $i0 != 1 
(assert true)
;(assert (defineFormalArgs/715968572 var2140 var718)) ; Statement: virtualinvoke r35.<org.stringtemplate.v4.compiler.CompiledST: void defineFormalArgs(java.util.List)>(r16) 

(declare-const var2140!1 var2904)
(declare-const var718!1 var480)
 ; Statement: if r6 == null goto $r36 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String template> 
(assert (= var1955!1 null-String)) ; Cond: r6 == null 
(define-const var235 String (template/-426919730 var3225)) ; Statement: $r36 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String template> 
(declare-const var2140!2 var2904)
(assert (not (= var2140!2 null-var2904)))
(assert (= (template/1377009226 var2140!2) var235)) ; Statement: r35.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String template> = $r36 
(assert true) ; Non Conditional
(define-const var896 var1765 var1050-FOLLOW_chunk_in_template77) ; Statement: $r37 = <org.stringtemplate.v4.compiler.CodeGenerator: org.antlr.runtime.BitSet FOLLOW_chunk_in_template77> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3564 var3928) ; Statement: $r30 := @caughtexception 
(assert (not (= var3564 null-var3928)))
(assert true) ; Non Conditional
(define-const var808 var452 (template_stack/-426919730 var3225)) ; Statement: $r31 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack> 
(assert true)
;(assert (pop/1012470055 var808)) ; Statement: virtualinvoke $r31.<java.util.Stack: java.lang.Object pop()>() 

(declare-const var808!1 var452)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {template_stack/-426919730=([org.stringtemplate.v4.compiler.CodeGenerator], java.util.Stack), var150-init=([], org.stringtemplate.v4.compiler.CodeGenerator$template_scope), <init>/1975445998=([org.stringtemplate.v4.compiler.CodeGenerator$template_scope], void), push/1515821691=([java.util.Stack, java.lang.Object], java.lang.Object), cast-from-var150-to-var2215=([org.stringtemplate.v4.compiler.CodeGenerator$template_scope], java.lang.Object), peek/1027344839=([java.util.Stack], java.lang.Object), cast-from-var2215-to-var150=([java.lang.Object], org.stringtemplate.v4.compiler.CodeGenerator$template_scope), var1323-init=([], org.stringtemplate.v4.compiler.CompilationState), errMgr/-426919730=([org.stringtemplate.v4.compiler.CodeGenerator], org.stringtemplate.v4.misc.ErrorManager), input/-639803156=([org.antlr.runtime.tree.TreeParser], org.antlr.runtime.tree.TreeNodeStream), cast-from-var1050-to-var408=([org.stringtemplate.v4.compiler.CodeGenerator], org.antlr.runtime.tree.TreeParser), var2198_getTokenStream/1333908185=([org.antlr.runtime.tree.TreeNodeStream], org.antlr.runtime.TokenStream), <init>/290496124=([org.stringtemplate.v4.compiler.CompilationState, org.stringtemplate.v4.misc.ErrorManager, java.lang.String, org.antlr.runtime.TokenStream], void), state/1053846757=([org.stringtemplate.v4.compiler.CodeGenerator$template_scope], org.stringtemplate.v4.compiler.CompilationState), impl/-2000007642=([org.stringtemplate.v4.compiler.CompilationState], org.stringtemplate.v4.compiler.CompiledST), size/-1825798970=([java.util.Vector], int), cast-from-var452-to-var343=([java.util.Stack], java.util.Vector), defineFormalArgs/715968572=([org.stringtemplate.v4.compiler.CompiledST, java.util.List], void), template/-426919730=([org.stringtemplate.v4.compiler.CodeGenerator], java.lang.String), template/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String), pop/1012470055=([java.util.Stack], java.lang.Object)}
; {var1050=org.stringtemplate.v4.compiler.CodeGenerator, var3225=r0, var1955=r6, var887=null_type, var480=java.util.List, var718=r16, var452=java.util.Stack, var3664=$r2, var150=org.stringtemplate.v4.compiler.CodeGenerator$template_scope, var1434=$r44, var2215=java.lang.Object, var2838=$r3, var1296=$r4, var2143=$r10, var1323=org.stringtemplate.v4.compiler.CompilationState, var987=$r45, var3670=org.stringtemplate.v4.misc.ErrorManager, var1561=$r8, var2198=org.antlr.runtime.tree.TreeNodeStream, var408=org.antlr.runtime.tree.TreeParser, var3958=$r7, var1601=org.antlr.runtime.TokenStream, var1165=$r9, var3141=$r11, var1060=$r12, var3984=$r13, var2752=$r14, var2904=org.stringtemplate.v4.compiler.CompiledST, var2140=r35, var70=$r15, var343=java.util.Vector, var3519=$i0, var235=$r36, var1765=org.antlr.runtime.BitSet, var896=$r37, var3928=java.lang.Throwable, var3564=$r30, var808=$r31}
; {org.stringtemplate.v4.compiler.CodeGenerator=var1050, r0=var3225, r6=var1955, null_type=var887, java.util.List=var480, r16=var718, java.util.Stack=var452, $r2=var3664, org.stringtemplate.v4.compiler.CodeGenerator$template_scope=var150, $r44=var1434, java.lang.Object=var2215, $r3=var2838, $r4=var1296, $r10=var2143, org.stringtemplate.v4.compiler.CompilationState=var1323, $r45=var987, org.stringtemplate.v4.misc.ErrorManager=var3670, $r8=var1561, org.antlr.runtime.tree.TreeNodeStream=var2198, org.antlr.runtime.tree.TreeParser=var408, $r7=var3958, org.antlr.runtime.TokenStream=var1601, $r9=var1165, $r11=var3141, $r12=var1060, $r13=var3984, $r14=var2752, org.stringtemplate.v4.compiler.CompiledST=var2904, r35=var2140, $r15=var70, java.util.Vector=var343, $i0=var3519, $r36=var235, org.antlr.runtime.BitSet=var1765, $r37=var896, java.lang.Throwable=var3928, $r30=var3564, $r31=var808}
;seq 
;cnt {}
;stmts r0 := @this: org.stringtemplate.v4.compiler.CodeGenerator;	r6 := @parameter0: java.lang.String;	r16 := @parameter1: java.util.List;	$r2 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	$r44 = new org.stringtemplate.v4.compiler.CodeGenerator$template_scope;	specialinvoke $r44.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: void <init>()>();	virtualinvoke $r2.<java.util.Stack: java.lang.Object push(java.lang.Object)>($r44);	$r3 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	$r4 = virtualinvoke $r3.<java.util.Stack: java.lang.Object peek()>();	$r10 = (org.stringtemplate.v4.compiler.CodeGenerator$template_scope) $r4;	$r45 = new org.stringtemplate.v4.compiler.CompilationState;	$r8 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r7 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: org.antlr.runtime.tree.TreeNodeStream input>;	$r9 = interfaceinvoke $r7.<org.antlr.runtime.tree.TreeNodeStream: org.antlr.runtime.TokenStream getTokenStream()>();	specialinvoke $r45.<org.stringtemplate.v4.compiler.CompilationState: void <init>(org.stringtemplate.v4.misc.ErrorManager,java.lang.String,org.antlr.runtime.TokenStream)>($r8, r6, $r9);	$r10.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: org.stringtemplate.v4.compiler.CompilationState state> = $r45;	$r11 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	$r12 = virtualinvoke $r11.<java.util.Stack: java.lang.Object peek()>();	$r13 = (org.stringtemplate.v4.compiler.CodeGenerator$template_scope) $r12;	$r14 = $r13.<org.stringtemplate.v4.compiler.CodeGenerator$template_scope: org.stringtemplate.v4.compiler.CompilationState state>;	r35 = $r14.<org.stringtemplate.v4.compiler.CompilationState: org.stringtemplate.v4.compiler.CompiledST impl>;	$r15 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	$i0 = virtualinvoke $r15.<java.util.Stack: int size()>();	if $i0 != 1 goto virtualinvoke r35.<org.stringtemplate.v4.compiler.CompiledST: void defineFormalArgs(java.util.List)>(r16);	virtualinvoke r35.<org.stringtemplate.v4.compiler.CompiledST: void defineFormalArgs(java.util.List)>(r16);	if r6 == null goto $r36 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String template>;	$r36 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String template>;	r35.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String template> = $r36;	$r37 = <org.stringtemplate.v4.compiler.CodeGenerator: org.antlr.runtime.BitSet FOLLOW_chunk_in_template77>;	$r30 := @caughtexception;	$r31 = r0.<org.stringtemplate.v4.compiler.CodeGenerator: java.util.Stack template_stack>;	virtualinvoke $r31.<java.util.Stack: java.lang.Object pop()>();	throw $r30
;block_num 6
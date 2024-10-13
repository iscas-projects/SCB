(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2548 0)
(declare-sort var1215 0)
(declare-sort var1305 0)
(declare-sort var140 0)
(declare-sort var1879 0)
(declare-sort var1318 0)
(declare-sort var1 0)
(declare-sort var645 0)
(declare-sort var2743 0)
(declare-sort var1797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun compiler/1086203445 (var2548) var140)
(declare-fun var1215_toString/1790204457 (var1215) String)
(declare-fun var1879_fromCode/1700335642 (String String) var1879)
(declare-fun options/1361376664 (var2548) var1318)
(declare-fun compile/-440740536 (var140 var1879 var1879 var1318) var1)
(declare-fun toSource/903867026 (var140) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun sourceMap/1298950650 (var1) var645)
(declare-fun transformed/796843029 (var2548 var1) Bool)
(declare-fun var2743-init () var2743)
(declare-fun errors/1298950650 (var1) var1797)
(declare-fun <init>/1154368181 (var2743 String var1797 Bool String) void)
(declare-const null-var2548 var2548)
(declare-const null-var1215 var1215)
(declare-const null-String String)
(declare-const var2548-EXTERNS var1879)
(declare-const null-var645 var645)
(declare-const var2593 var2548) ; Statement: r0 := @this: com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier 
(assert (not (= var2593 null-var2548)))
(declare-const var3027 var1215) ; Statement: r2 := @parameter0: java.nio.file.Path 
(assert (not (= var3027 null-var1215)))
(declare-const var1010 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1010 null-String)))
(assert true)
(define-const var3600 var140 (compiler/1086203445 var2593)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: com.google.javascript.jscomp.Compiler compiler()>() 
(define-const var2033 var1879 var2548-EXTERNS) ; Statement: $r3 = <com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: com.google.javascript.jscomp.SourceFile EXTERNS> 
(define-const var2507 String (var1215_toString/1790204457 var3027)) ; Statement: $r5 = interfaceinvoke r2.<java.nio.file.Path: java.lang.String toString()>() 
(define-const var1821 var1879 (var1879_fromCode/1700335642 var2507 var1010)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.SourceFile: com.google.javascript.jscomp.SourceFile fromCode(java.lang.String,java.lang.String)>($r5, r4) 
(assert true)
(define-const var788 var1318 (options/1361376664 var2593)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: com.google.javascript.jscomp.CompilerOptions options()>() 
(assert true)
(define-const var791 var1 (compile/-440740536 var3600 var2033 var1821 var788)) ; Statement: r8 = virtualinvoke r1.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.Result compile(com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.CompilerOptions)>($r3, $r7, $r6) 
(assert true)
(define-const var1272 String (toSource/903867026 var3600)) ; Statement: r9 = virtualinvoke r1.<com.google.javascript.jscomp.Compiler: java.lang.String toSource()>() 
(define-const var3262 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3262)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3262!1 String)
(assert (= var3262!1 ""))
(define-const var1829 var645 (sourceMap/1298950650 var791)) ; Statement: $r11 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.SourceMap sourceMap> 
 ; Statement: if $r11 == null goto $z0 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: boolean transformed(com.google.javascript.jscomp.Result)>(r8) 
(assert (= var1829 null-var645)) ; Cond: $r11 == null 
(assert true)
(define-const var402 Bool (transformed/796843029 var2593 var791)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: boolean transformed(com.google.javascript.jscomp.Result)>(r8) 
(define-const var3060 var2743 var2743-init) ; Statement: $r12 = new com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult 
(define-const var1842 var1797 (errors/1298950650 var791)) ; Statement: $r13 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList errors> 
 ; Statement: if $z0 == 0 goto $r17 = "" 
(assert (= (ite var402 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3404 String "") ; Statement: $r17 = "" 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/1154368181 var3060 var1272 var1842 var402 var3404)) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,boolean,java.lang.String)>(r9, $r13, $z0, $r17) 

(declare-const var3060!1 var2743)
(declare-const var1272!1 String)
(declare-const var1842!1 var1797)
(declare-const var402!1 Bool)
(declare-const var3404!1 String)
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {compiler/1086203445=([com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier], com.google.javascript.jscomp.Compiler), var1215_toString/1790204457=([java.nio.file.Path], java.lang.String), var1879_fromCode/1700335642=([java.lang.String, java.lang.String], com.google.javascript.jscomp.SourceFile), options/1361376664=([com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier], com.google.javascript.jscomp.CompilerOptions), compile/-440740536=([com.google.javascript.jscomp.Compiler, com.google.javascript.jscomp.SourceFile, com.google.javascript.jscomp.SourceFile, com.google.javascript.jscomp.CompilerOptions], com.google.javascript.jscomp.Result), toSource/903867026=([com.google.javascript.jscomp.Compiler], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), sourceMap/1298950650=([com.google.javascript.jscomp.Result], com.google.javascript.jscomp.SourceMap), transformed/796843029=([com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier, com.google.javascript.jscomp.Result], boolean), var2743-init=([], com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult), errors/1298950650=([com.google.javascript.jscomp.Result], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), <init>/1154368181=([com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, boolean, java.lang.String], void)}
; {var2548=com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier, var2593=r0, var1215=java.nio.file.Path, var3027=r2, var1010=r4, var1305=null_type, var140=com.google.javascript.jscomp.Compiler, var3600=r1, var1879=com.google.javascript.jscomp.SourceFile, var2033=$r3, var2507=$r5, var1821=$r7, var1318=com.google.javascript.jscomp.CompilerOptions, var788=$r6, var1=com.google.javascript.jscomp.Result, var791=r8, var1272=r9, var3262=$r10, var645=com.google.javascript.jscomp.SourceMap, var1829=$r11, var402=$z0, var2743=com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult, var3060=$r12, var1797=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1842=$r13, var3404=$r17}
; {com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier=var2548, r0=var2593, java.nio.file.Path=var1215, r2=var3027, r4=var1010, null_type=var1305, com.google.javascript.jscomp.Compiler=var140, r1=var3600, com.google.javascript.jscomp.SourceFile=var1879, $r3=var2033, $r5=var2507, $r7=var1821, com.google.javascript.jscomp.CompilerOptions=var1318, $r6=var788, com.google.javascript.jscomp.Result=var1, r8=var791, r9=var1272, $r10=var3262, com.google.javascript.jscomp.SourceMap=var645, $r11=var1829, $z0=var402, com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult=var2743, $r12=var3060, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1797, $r13=var1842, $r17=var3404}
;seq <java.nio.file.Path: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier;	r2 := @parameter0: java.nio.file.Path;	r4 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: com.google.javascript.jscomp.Compiler compiler()>();	$r3 = <com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: com.google.javascript.jscomp.SourceFile EXTERNS>;	$r5 = interfaceinvoke r2.<java.nio.file.Path: java.lang.String toString()>();	$r7 = staticinvoke <com.google.javascript.jscomp.SourceFile: com.google.javascript.jscomp.SourceFile fromCode(java.lang.String,java.lang.String)>($r5, r4);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: com.google.javascript.jscomp.CompilerOptions options()>();	r8 = virtualinvoke r1.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.Result compile(com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.CompilerOptions)>($r3, $r7, $r6);	r9 = virtualinvoke r1.<com.google.javascript.jscomp.Compiler: java.lang.String toSource()>();	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.SourceMap sourceMap>;	if $r11 == null goto $z0 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: boolean transformed(com.google.javascript.jscomp.Result)>(r8);	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: boolean transformed(com.google.javascript.jscomp.Result)>(r8);	$r12 = new com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult;	$r13 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList errors>;	if $z0 == 0 goto $r17 = "";	$r17 = "";	specialinvoke $r12.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,boolean,java.lang.String)>(r9, $r13, $z0, $r17);	return $r12
;block_num 4
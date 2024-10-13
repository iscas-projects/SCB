(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2365 0)
(declare-sort var964 0)
(declare-sort var2001 0)
(declare-sort var1384 0)
(declare-sort var2900 0)
(declare-sort var3633 0)
(declare-sort var2369 0)
(declare-sort var3973 0)
(declare-sort var2278 0)
(declare-sort var1026 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun compiler/1086203445 (var2365) var1384)
(declare-fun var964_toString/1790204457 (var964) String)
(declare-fun var2900_fromCode/1700335642 (String String) var2900)
(declare-fun options/1361376664 (var2365) var3633)
(declare-fun compile/-440740536 (var1384 var2900 var2900 var3633) var2369)
(declare-fun toSource/903867026 (var1384) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun sourceMap/1298950650 (var2369) var3973)
(declare-fun transformed/796843029 (var2365 var2369) Bool)
(declare-fun var2278-init () var2278)
(declare-fun errors/1298950650 (var2369) var1026)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1154368181 (var2278 String var1026 Bool String) void)
(declare-const null-var2365 var2365)
(declare-const null-var964 var964)
(declare-const null-String String)
(declare-const var2365-EXTERNS var2900)
(declare-const null-var3973 var3973)
(declare-const var2836 var2365) ; Statement: r0 := @this: com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier 
(assert (not (= var2836 null-var2365)))
(declare-const var2187 var964) ; Statement: r2 := @parameter0: java.nio.file.Path 
(assert (not (= var2187 null-var964)))
(declare-const var2295 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2295 null-String)))
(assert true)
(define-const var2416 var1384 (compiler/1086203445 var2836)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: com.google.javascript.jscomp.Compiler compiler()>() 
(define-const var354 var2900 var2365-EXTERNS) ; Statement: $r3 = <com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: com.google.javascript.jscomp.SourceFile EXTERNS> 
(define-const var2959 String (var964_toString/1790204457 var2187)) ; Statement: $r5 = interfaceinvoke r2.<java.nio.file.Path: java.lang.String toString()>() 
(define-const var2668 var2900 (var2900_fromCode/1700335642 var2959 var2295)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.SourceFile: com.google.javascript.jscomp.SourceFile fromCode(java.lang.String,java.lang.String)>($r5, r4) 
(assert true)
(define-const var2582 var3633 (options/1361376664 var2836)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: com.google.javascript.jscomp.CompilerOptions options()>() 
(assert true)
(define-const var3915 var2369 (compile/-440740536 var2416 var354 var2668 var2582)) ; Statement: r8 = virtualinvoke r1.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.Result compile(com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.CompilerOptions)>($r3, $r7, $r6) 
(assert true)
(define-const var2970 String (toSource/903867026 var2416)) ; Statement: r9 = virtualinvoke r1.<com.google.javascript.jscomp.Compiler: java.lang.String toSource()>() 
(define-const var2514 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2514)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2514!1 String)
(assert (= var2514!1 ""))
(define-const var2586 var3973 (sourceMap/1298950650 var3915)) ; Statement: $r11 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.SourceMap sourceMap> 
 ; Statement: if $r11 == null goto $z0 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: boolean transformed(com.google.javascript.jscomp.Result)>(r8) 
(assert (= var2586 null-var3973)) ; Cond: $r11 == null 
(assert true)
(define-const var2835 Bool (transformed/796843029 var2836 var3915)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: boolean transformed(com.google.javascript.jscomp.Result)>(r8) 
(define-const var123 var2278 var2278-init) ; Statement: $r12 = new com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult 
(define-const var1458 var1026 (errors/1298950650 var3915)) ; Statement: $r13 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList errors> 
 ; Statement: if $z0 == 0 goto $r17 = "" 
(assert (not (= (ite var2835 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3050 String (toString/-2075883882 var2514!1)) ; Statement: $r17 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= specialinvoke $r12.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,boolean,java.lang.String)>(r9, $r13, $z0, $r17)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/1154368181 var123 var2970 var1458 var2835 var3050)) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,boolean,java.lang.String)>(r9, $r13, $z0, $r17) 

(declare-const var123!1 var2278)
(declare-const var2970!1 String)
(declare-const var1458!1 var1026)
(declare-const var2835!1 Bool)
(declare-const var3050!1 String)
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {compiler/1086203445=([com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier], com.google.javascript.jscomp.Compiler), var964_toString/1790204457=([java.nio.file.Path], java.lang.String), var2900_fromCode/1700335642=([java.lang.String, java.lang.String], com.google.javascript.jscomp.SourceFile), options/1361376664=([com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier], com.google.javascript.jscomp.CompilerOptions), compile/-440740536=([com.google.javascript.jscomp.Compiler, com.google.javascript.jscomp.SourceFile, com.google.javascript.jscomp.SourceFile, com.google.javascript.jscomp.CompilerOptions], com.google.javascript.jscomp.Result), toSource/903867026=([com.google.javascript.jscomp.Compiler], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), sourceMap/1298950650=([com.google.javascript.jscomp.Result], com.google.javascript.jscomp.SourceMap), transformed/796843029=([com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier, com.google.javascript.jscomp.Result], boolean), var2278-init=([], com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult), errors/1298950650=([com.google.javascript.jscomp.Result], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1154368181=([com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, boolean, java.lang.String], void)}
; {var2365=com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier, var2836=r0, var964=java.nio.file.Path, var2187=r2, var2295=r4, var2001=null_type, var1384=com.google.javascript.jscomp.Compiler, var2416=r1, var2900=com.google.javascript.jscomp.SourceFile, var354=$r3, var2959=$r5, var2668=$r7, var3633=com.google.javascript.jscomp.CompilerOptions, var2582=$r6, var2369=com.google.javascript.jscomp.Result, var3915=r8, var2970=r9, var2514=$r10, var3973=com.google.javascript.jscomp.SourceMap, var2586=$r11, var2835=$z0, var2278=com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult, var123=$r12, var1026=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1458=$r13, var3050=$r17}
; {com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier=var2365, r0=var2836, java.nio.file.Path=var964, r2=var2187, r4=var2295, null_type=var2001, com.google.javascript.jscomp.Compiler=var1384, r1=var2416, com.google.javascript.jscomp.SourceFile=var2900, $r3=var354, $r5=var2959, $r7=var2668, com.google.javascript.jscomp.CompilerOptions=var3633, $r6=var2582, com.google.javascript.jscomp.Result=var2369, r8=var3915, r9=var2970, $r10=var2514, com.google.javascript.jscomp.SourceMap=var3973, $r11=var2586, $z0=var2835, com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult=var2278, $r12=var123, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1026, $r13=var1458, $r17=var3050}
;seq <java.nio.file.Path: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier;	r2 := @parameter0: java.nio.file.Path;	r4 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: com.google.javascript.jscomp.Compiler compiler()>();	$r3 = <com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: com.google.javascript.jscomp.SourceFile EXTERNS>;	$r5 = interfaceinvoke r2.<java.nio.file.Path: java.lang.String toString()>();	$r7 = staticinvoke <com.google.javascript.jscomp.SourceFile: com.google.javascript.jscomp.SourceFile fromCode(java.lang.String,java.lang.String)>($r5, r4);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: com.google.javascript.jscomp.CompilerOptions options()>();	r8 = virtualinvoke r1.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.Result compile(com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.CompilerOptions)>($r3, $r7, $r6);	r9 = virtualinvoke r1.<com.google.javascript.jscomp.Compiler: java.lang.String toSource()>();	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.SourceMap sourceMap>;	if $r11 == null goto $z0 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: boolean transformed(com.google.javascript.jscomp.Result)>(r8);	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompilerSupplier: boolean transformed(com.google.javascript.jscomp.Result)>(r8);	$r12 = new com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult;	$r13 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList errors>;	if $z0 == 0 goto $r17 = "";	$r17 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= specialinvoke $r12.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,boolean,java.lang.String)>(r9, $r13, $z0, $r17)];	specialinvoke $r12.<com.google.javascript.jscomp.bundle.CompilerBasedTransformer$CompileResult: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,boolean,java.lang.String)>(r9, $r13, $z0, $r17);	return $r12
;block_num 4
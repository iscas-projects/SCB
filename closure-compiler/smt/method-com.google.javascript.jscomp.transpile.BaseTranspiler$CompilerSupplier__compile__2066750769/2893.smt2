(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1469 0)
(declare-sort var1057 0)
(declare-sort var1698 0)
(declare-sort var1327 0)
(declare-sort var3724 0)
(declare-sort var1160 0)
(declare-sort var1596 0)
(declare-sort var3660 0)
(declare-sort var3879 0)
(declare-sort var2618 0)
(declare-sort var3422 0)
(declare-sort var464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun compiler/-1525177885 (var1469) var1327)
(declare-fun createTrivialExterns/-304700076 (var1469) var3724)
(declare-fun toString/1403215111 (var1057) String)
(declare-fun var3724_fromCode/1700335642 (String String) var3724)
(declare-fun options/-508397882 (var1469) var1160)
(declare-fun compile/-440740536 (var1327 var3724 var3724 var1160) var1596)
(declare-fun toSource/903867026 (var1327) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun sourceMap/1298950650 (var1596) var3660)
(declare-fun transpiledFiles/1298950650 (var1596) Bool)
(declare-fun errors/1298950650 (var1596) var3879)
(declare-fun isEmpty/-367311564 (var2618) Bool)
(declare-fun cast-from-var3879-to-var2618 (var3879) var2618)
(declare-fun var3422-init () var3422)
(declare-fun warnings/1298950650 (var1596) var3879)
(declare-fun <init>/1472009271 (var3422 var464 var3879 var3879) void)
(declare-fun cast-from-var1327-to-var464 (var1327) var464)
(declare-const null-var1469 var1469)
(declare-const null-var1057 var1057)
(declare-const null-String String)
(declare-const null-var3660 var3660)
(declare-const var1157 var1469) ; Statement: r0 := @this: com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier 
(assert (not (= var1157 null-var1469)))
(declare-const var394 var1057) ; Statement: r2 := @parameter0: java.net.URI 
(assert (not (= var394 null-var1057)))
(declare-const var1989 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1989 null-String)))
(assert true)
(define-const var1555 var1327 (compiler/-1525177885 var1157)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier: com.google.javascript.jscomp.Compiler compiler()>() 
(assert true)
(define-const var2398 var3724 (createTrivialExterns/-304700076 var1157)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier: com.google.javascript.jscomp.SourceFile createTrivialExterns()>() 
(assert true)
(define-const var1079 String (toString/1403215111 var394)) ; Statement: $r4 = virtualinvoke r2.<java.net.URI: java.lang.String toString()>() 
(define-const var2514 var3724 (var3724_fromCode/1700335642 var1079 var1989)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.SourceFile: com.google.javascript.jscomp.SourceFile fromCode(java.lang.String,java.lang.String)>($r4, r3) 
(assert true)
(define-const var1708 var1160 (options/-508397882 var1157)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier: com.google.javascript.jscomp.CompilerOptions options()>() 
(assert true)
(define-const var1224 var1596 (compile/-440740536 var1555 var2398 var2514 var1708)) ; Statement: r8 = virtualinvoke r1.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.Result compile(com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.CompilerOptions)>($r7, $r6, $r5) 
(assert true)
(define-const var2797 String (toSource/903867026 var1555)) ; Statement: r9 = virtualinvoke r1.<com.google.javascript.jscomp.Compiler: java.lang.String toSource()>() 
(define-const var982 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var982)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var982!1 String)
(assert (= var982!1 ""))
(define-const var1627 var3660 (sourceMap/1298950650 var1224)) ; Statement: $r11 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.SourceMap sourceMap> 
 ; Statement: if $r11 == null goto $z0 = r8.<com.google.javascript.jscomp.Result: boolean transpiledFiles> 
(assert (= var1627 null-var3660)) ; Cond: $r11 == null 
(define-const var2194 Bool (transpiledFiles/1298950650 var1224)) ; Statement: $z0 = r8.<com.google.javascript.jscomp.Result: boolean transpiledFiles> 
(define-const var1665 var3879 (errors/1298950650 var1224)) ; Statement: $r19 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList errors> 
(assert true)
(define-const var1433 Bool (isEmpty/-367311564 (cast-from-var3879-to-var2618 var1665))) ; Statement: $z1 = virtualinvoke $r19.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $r12 = new com.google.javascript.jscomp.transpile.BaseTranspiler$CompileResult 
(assert (not (not (= (ite var1433 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3607 var3422 var3422-init) ; Statement: $r13 = new com.google.javascript.jscomp.bundle.TranspilationException 
(define-const var2781 var3879 (errors/1298950650 var1224)) ; Statement: $r15 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList errors> 
(define-const var350 var3879 (warnings/1298950650 var1224)) ; Statement: $r14 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList warnings> 
(assert true)
;(assert (<init>/1472009271 var3607 (cast-from-var1327-to-var464 var1555) var2781 var350)) ; Statement: specialinvoke $r13.<com.google.javascript.jscomp.bundle.TranspilationException: void <init>(com.google.javascript.jscomp.SourceExcerptProvider,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList)>(r1, $r15, $r14) 

(declare-const var3607!1 var3422)
(declare-const var1555!1 var1327)
(declare-const var2781!1 var3879)
(declare-const var350!1 var3879)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {compiler/-1525177885=([com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier], com.google.javascript.jscomp.Compiler), createTrivialExterns/-304700076=([com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier], com.google.javascript.jscomp.SourceFile), toString/1403215111=([java.net.URI], java.lang.String), var3724_fromCode/1700335642=([java.lang.String, java.lang.String], com.google.javascript.jscomp.SourceFile), options/-508397882=([com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier], com.google.javascript.jscomp.CompilerOptions), compile/-440740536=([com.google.javascript.jscomp.Compiler, com.google.javascript.jscomp.SourceFile, com.google.javascript.jscomp.SourceFile, com.google.javascript.jscomp.CompilerOptions], com.google.javascript.jscomp.Result), toSource/903867026=([com.google.javascript.jscomp.Compiler], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), sourceMap/1298950650=([com.google.javascript.jscomp.Result], com.google.javascript.jscomp.SourceMap), transpiledFiles/1298950650=([com.google.javascript.jscomp.Result], boolean), errors/1298950650=([com.google.javascript.jscomp.Result], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), isEmpty/-367311564=([java.util.AbstractCollection], boolean), cast-from-var3879-to-var2618=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.AbstractCollection), var3422-init=([], com.google.javascript.jscomp.bundle.TranspilationException), warnings/1298950650=([com.google.javascript.jscomp.Result], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), <init>/1472009271=([com.google.javascript.jscomp.bundle.TranspilationException, com.google.javascript.jscomp.SourceExcerptProvider, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], void), cast-from-var1327-to-var464=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.SourceExcerptProvider)}
; {var1469=com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier, var1157=r0, var1057=java.net.URI, var394=r2, var1989=r3, var1698=null_type, var1327=com.google.javascript.jscomp.Compiler, var1555=r1, var3724=com.google.javascript.jscomp.SourceFile, var2398=$r7, var1079=$r4, var2514=$r6, var1160=com.google.javascript.jscomp.CompilerOptions, var1708=$r5, var1596=com.google.javascript.jscomp.Result, var1224=r8, var2797=r9, var982=$r10, var3660=com.google.javascript.jscomp.SourceMap, var1627=$r11, var2194=$z0, var3879=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1665=$r19, var2618=java.util.AbstractCollection, var1433=$z1, var3422=com.google.javascript.jscomp.bundle.TranspilationException, var3607=$r13, var2781=$r15, var350=$r14, var464=com.google.javascript.jscomp.SourceExcerptProvider}
; {com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier=var1469, r0=var1157, java.net.URI=var1057, r2=var394, r3=var1989, null_type=var1698, com.google.javascript.jscomp.Compiler=var1327, r1=var1555, com.google.javascript.jscomp.SourceFile=var3724, $r7=var2398, $r4=var1079, $r6=var2514, com.google.javascript.jscomp.CompilerOptions=var1160, $r5=var1708, com.google.javascript.jscomp.Result=var1596, r8=var1224, r9=var2797, $r10=var982, com.google.javascript.jscomp.SourceMap=var3660, $r11=var1627, $z0=var2194, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3879, $r19=var1665, java.util.AbstractCollection=var2618, $z1=var1433, com.google.javascript.jscomp.bundle.TranspilationException=var3422, $r13=var3607, $r15=var2781, $r14=var350, com.google.javascript.jscomp.SourceExcerptProvider=var464}
;seq <java.net.URI: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier;	r2 := @parameter0: java.net.URI;	r3 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier: com.google.javascript.jscomp.Compiler compiler()>();	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier: com.google.javascript.jscomp.SourceFile createTrivialExterns()>();	$r4 = virtualinvoke r2.<java.net.URI: java.lang.String toString()>();	$r6 = staticinvoke <com.google.javascript.jscomp.SourceFile: com.google.javascript.jscomp.SourceFile fromCode(java.lang.String,java.lang.String)>($r4, r3);	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier: com.google.javascript.jscomp.CompilerOptions options()>();	r8 = virtualinvoke r1.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.Result compile(com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.CompilerOptions)>($r7, $r6, $r5);	r9 = virtualinvoke r1.<com.google.javascript.jscomp.Compiler: java.lang.String toSource()>();	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.SourceMap sourceMap>;	if $r11 == null goto $z0 = r8.<com.google.javascript.jscomp.Result: boolean transpiledFiles>;	$z0 = r8.<com.google.javascript.jscomp.Result: boolean transpiledFiles>;	$r19 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList errors>;	$z1 = virtualinvoke $r19.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: boolean isEmpty()>();	if $z1 != 0 goto $r12 = new com.google.javascript.jscomp.transpile.BaseTranspiler$CompileResult;	$r13 = new com.google.javascript.jscomp.bundle.TranspilationException;	$r15 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList errors>;	$r14 = r8.<com.google.javascript.jscomp.Result: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList warnings>;	specialinvoke $r13.<com.google.javascript.jscomp.bundle.TranspilationException: void <init>(com.google.javascript.jscomp.SourceExcerptProvider,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList)>(r1, $r15, $r14);	throw $r13
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2572 0)
(declare-sort var2705 0)
(declare-sort var393 0)
(declare-sort var3445 0)
(declare-sort var240 0)
(declare-sort var21 0)
(declare-sort var3712 0)
(declare-sort var647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun initCompilerOptionsIfTesting/903502291 (var2572) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var393-init () var393)
(declare-fun <init>/1567354618 (var393 var3445) void)
(declare-fun cast-from-var2572-to-var3445 (var2572) var3445)
(declare-fun toSourceAndMappings/-595396748 (var2572 var2705 Bool var21) var240)
(declare-fun cast-from-var393-to-var21 (var393) var21)
(declare-fun source/1532258093 (var240) String)
(declare-fun emitLicenses/-1371087657 (var393) var3712)
(declare-fun iterator/-1001106692 (var3712) var647)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var647-to-Iterator (var647) Iterator)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2572 var2572)
(declare-const null-var2705 var2705)
(declare-const var2298 var2572) ; Statement: r0 := @this: com.google.javascript.jscomp.Compiler 
(assert (not (= var2298 null-var2572)))
(declare-const var1044 var2705) ; Statement: r3 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1044 null-var2705)))
(assert true)
;(assert (initCompilerOptionsIfTesting/903502291 var2298)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.Compiler: void initCompilerOptionsIfTesting()>() 

(declare-const var2298!1 var2572)
(define-const var3306 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3306)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3306!1 String)
(assert (= var3306!1 ""))
(define-const var2913 var393 var393-init) ; Statement: $r2 = new com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker 
(assert true)
;(assert (<init>/1567354618 var2913 (cast-from-var2572-to-var3445 var2298!1))) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker: void <init>(com.google.javascript.jscomp.AbstractCompiler)>(r0) 

(declare-const var2913!1 var393)
(declare-const var2298!2 var2572)
(assert true)
(define-const var2730 var240 (toSourceAndMappings/-595396748 var2298!2 var1044 (ite (= 1 0) true false) (cast-from-var393-to-var21 var2913!1))) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CodePrinter$SourceAndMappings toSourceAndMappings(com.google.javascript.rhino.Node,boolean,com.google.javascript.jscomp.CodePrinter$LicenseTracker)>(r3, 0, $r2) 
(define-const var2860 String (source/1532258093 var2730)) ; Statement: r5 = $r4.<com.google.javascript.jscomp.CodePrinter$SourceAndMappings: java.lang.String source> 
(assert true)
(define-const var3291 var3712 (emitLicenses/-1371087657 var2913!1)) ; Statement: $r6 = virtualinvoke $r2.<com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet emitLicenses()>() 
(assert true)
(define-const var2743 var647 (iterator/-1001106692 var3291)) ; Statement: r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3110 Bool (Iterator_hasNext/-1669924200 (cast-from-var647-to-Iterator var2743))) ; Statement: $z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(assert (= (ite var3110 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var3306!1 var2860)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3306!2 String)
(assert (= var3306!2 (str.++ var3306!1 var2860)))
(assert true)
(define-const var782 String (toString/-2075883882 var3306!2)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {initCompilerOptionsIfTesting/903502291=([com.google.javascript.jscomp.Compiler], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var393-init=([], com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker), <init>/1567354618=([com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker, com.google.javascript.jscomp.AbstractCompiler], void), cast-from-var2572-to-var3445=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.AbstractCompiler), toSourceAndMappings/-595396748=([com.google.javascript.jscomp.Compiler, com.google.javascript.rhino.Node, boolean, com.google.javascript.jscomp.CodePrinter$LicenseTracker], com.google.javascript.jscomp.CodePrinter$SourceAndMappings), cast-from-var393-to-var21=([com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker], com.google.javascript.jscomp.CodePrinter$LicenseTracker), source/1532258093=([com.google.javascript.jscomp.CodePrinter$SourceAndMappings], java.lang.String), emitLicenses/-1371087657=([com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), iterator/-1001106692=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var647-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2572=com.google.javascript.jscomp.Compiler, var2298=r0, var2705=com.google.javascript.rhino.Node, var1044=r3, var3306=$r1, var393=com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker, var2913=$r2, var3445=com.google.javascript.jscomp.AbstractCompiler, var240=com.google.javascript.jscomp.CodePrinter$SourceAndMappings, var21=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var2730=$r4, var2860=r5, var3712=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3291=$r6, var647=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var2743=r7, var3110=$z0, var782=$r8}
; {com.google.javascript.jscomp.Compiler=var2572, r0=var2298, com.google.javascript.rhino.Node=var2705, r3=var1044, $r1=var3306, com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker=var393, $r2=var2913, com.google.javascript.jscomp.AbstractCompiler=var3445, com.google.javascript.jscomp.CodePrinter$SourceAndMappings=var240, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var21, $r4=var2730, r5=var2860, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3712, $r6=var3291, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var647, r7=var2743, $z0=var3110, $r8=var782}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Compiler;	r3 := @parameter0: com.google.javascript.rhino.Node;	virtualinvoke r0.<com.google.javascript.jscomp.Compiler: void initCompilerOptionsIfTesting()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = new com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker;	specialinvoke $r2.<com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker: void <init>(com.google.javascript.jscomp.AbstractCompiler)>(r0);	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CodePrinter$SourceAndMappings toSourceAndMappings(com.google.javascript.rhino.Node,boolean,com.google.javascript.jscomp.CodePrinter$LicenseTracker)>(r3, 0, $r2);	r5 = $r4.<com.google.javascript.jscomp.CodePrinter$SourceAndMappings: java.lang.String source>;	$r6 = virtualinvoke $r2.<com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet emitLicenses()>();	r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3
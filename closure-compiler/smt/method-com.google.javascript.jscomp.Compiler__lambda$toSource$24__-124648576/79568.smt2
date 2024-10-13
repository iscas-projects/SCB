(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3123 0)
(declare-sort var806 0)
(declare-sort var2092 0)
(declare-sort var3077 0)
(declare-sort var756 0)
(declare-sort var3385 0)
(declare-sort var652 0)
(declare-sort var3002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun options/-1807643844 (var3123) var756)
(declare-fun printInputDelimiter/92387266 (var756) Bool)
(declare-fun toSourceAndMappings/-595396748 (var3123 var2092 Bool var3077) var3385)
(declare-fun source/1532258093 (var3385) String)
(declare-fun var3077_emitLicenses/-185143523 (var3077) var652)
(declare-fun iterator/-1001106692 (var652) var3002)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var3002-to-Iterator (var3002) Iterator)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3123 var3123)
(declare-const null-var806 var806)
(declare-const null-var2092 var2092)
(declare-const null-Int Int)
(declare-const null-var3077 var3077)
(declare-const var2445 var3123) ; Statement: r0 := @this: com.google.javascript.jscomp.Compiler 
(assert (not (= var2445 null-var3123)))
(declare-const var2537 var806) ; Statement: r6 := @parameter0: com.google.javascript.jscomp.Compiler$CodeBuilder 
(assert (not (= var2537 null-var806)))
(declare-const var1665 var2092) ; Statement: r2 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1665 null-var2092)))
(declare-const var3972 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3972 null-Int)))
(declare-const var28 var3077) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var28 null-var3077)))
(define-const var32 var756 (options/-1807643844 var2445)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions options> 
(define-const var229 Bool (printInputDelimiter/92387266 var32)) ; Statement: $z0 = $r1.<com.google.javascript.jscomp.CompilerOptions: boolean printInputDelimiter> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var229 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if i0 != 0 goto $z10 = 0 
(assert (not (= var3972 0))) ; Cond: i0 != 0 
(define-const var3376 Bool (ite (= 1 0) true false)) ; Statement: $z10 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1639 var3385 (toSourceAndMappings/-595396748 var2445 var1665 var3376 var28)) ; Statement: $r17 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CodePrinter$SourceAndMappings toSourceAndMappings(com.google.javascript.rhino.Node,boolean,com.google.javascript.jscomp.CodePrinter$LicenseTracker)>(r2, $z10, r3) 
(define-const var2235 String (source/1532258093 var1639)) ; Statement: $r18 = $r17.<com.google.javascript.jscomp.CodePrinter$SourceAndMappings: java.lang.String source> 
(define-const var2420 var652 (var3077_emitLicenses/-185143523 var28)) ; Statement: $r4 = interfaceinvoke r3.<com.google.javascript.jscomp.CodePrinter$LicenseTracker: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet emitLicenses()>() 
(assert true)
(define-const var3777 var3002 (iterator/-1001106692 var2420)) ; Statement: $r19 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3661 Bool (Iterator_hasNext/-1669924200 (cast-from-var3002-to-Iterator var3777))) ; Statement: $z11 = interfaceinvoke $r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z11 == 0 goto $z1 = virtualinvoke $r18.<java.lang.String: boolean isEmpty()>() 
(assert (= (ite var3661 1 0) 0)) ; Cond: $z11 == 0 
(assert true)
(define-const var2519 Bool (isEmpty/-1285796103 var2235)) ; Statement: $z1 = virtualinvoke $r18.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r5 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions options> 
(assert (not (= (ite var2519 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {options/-1807643844=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.CompilerOptions), printInputDelimiter/92387266=([com.google.javascript.jscomp.CompilerOptions], boolean), toSourceAndMappings/-595396748=([com.google.javascript.jscomp.Compiler, com.google.javascript.rhino.Node, boolean, com.google.javascript.jscomp.CodePrinter$LicenseTracker], com.google.javascript.jscomp.CodePrinter$SourceAndMappings), source/1532258093=([com.google.javascript.jscomp.CodePrinter$SourceAndMappings], java.lang.String), var3077_emitLicenses/-185143523=([com.google.javascript.jscomp.CodePrinter$LicenseTracker], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), iterator/-1001106692=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var3002-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3123=com.google.javascript.jscomp.Compiler, var2445=r0, var806=com.google.javascript.jscomp.Compiler$CodeBuilder, var2537=r6, var2092=com.google.javascript.rhino.Node, var1665=r2, var3972=i0, var3077=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var28=r3, var756=com.google.javascript.jscomp.CompilerOptions, var32=$r1, var229=$z0, var3376=$z10, var3385=com.google.javascript.jscomp.CodePrinter$SourceAndMappings, var1639=$r17, var2235=$r18, var652=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2420=$r4, var3002=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var3777=$r19, var3661=$z11, var2519=$z1}
; {com.google.javascript.jscomp.Compiler=var3123, r0=var2445, com.google.javascript.jscomp.Compiler$CodeBuilder=var806, r6=var2537, com.google.javascript.rhino.Node=var2092, r2=var1665, i0=var3972, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var3077, r3=var28, com.google.javascript.jscomp.CompilerOptions=var756, $r1=var32, $z0=var229, $z10=var3376, com.google.javascript.jscomp.CodePrinter$SourceAndMappings=var3385, $r17=var1639, $r18=var2235, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var652, $r4=var2420, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var3002, $r19=var3777, $z11=var3661, $z1=var2519}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Compiler;	r6 := @parameter0: com.google.javascript.jscomp.Compiler$CodeBuilder;	r2 := @parameter1: com.google.javascript.rhino.Node;	i0 := @parameter2: int;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	$r1 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions options>;	$z0 = $r1.<com.google.javascript.jscomp.CompilerOptions: boolean printInputDelimiter>;	if $z0 == 0 goto (branch);	if i0 != 0 goto $z10 = 0;	$z10 = 0;	$r17 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CodePrinter$SourceAndMappings toSourceAndMappings(com.google.javascript.rhino.Node,boolean,com.google.javascript.jscomp.CodePrinter$LicenseTracker)>(r2, $z10, r3);	$r18 = $r17.<com.google.javascript.jscomp.CodePrinter$SourceAndMappings: java.lang.String source>;	$r4 = interfaceinvoke r3.<com.google.javascript.jscomp.CodePrinter$LicenseTracker: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet emitLicenses()>();	$r19 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z11 = interfaceinvoke $r19.<java.util.Iterator: boolean hasNext()>();	if $z11 == 0 goto $z1 = virtualinvoke $r18.<java.lang.String: boolean isEmpty()>();	$z1 = virtualinvoke $r18.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r5 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions options>;	return null
;block_num 7
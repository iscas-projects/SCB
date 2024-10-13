(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1294 0)
(declare-sort var2075 0)
(declare-sort var2502 0)
(declare-sort var2567 0)
(declare-sort var460 0)
(declare-sort var2360 0)
(declare-sort var1863 0)
(declare-sort var1427 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun options/-1807643844 (var1294) var460)
(declare-fun printInputDelimiter/92387266 (var460) Bool)
(declare-fun toSourceAndMappings/-595396748 (var1294 var2502 Bool var2567) var2360)
(declare-fun source/1532258093 (var2360) String)
(declare-fun var2567_emitLicenses/-185143523 (var2567) var1863)
(declare-fun iterator/-1001106692 (var1863) var1427)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var1427-to-Iterator (var1427) Iterator)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1294 var1294)
(declare-const null-var2075 var2075)
(declare-const null-var2502 var2502)
(declare-const null-Int Int)
(declare-const null-var2567 var2567)
(declare-const var593 var1294) ; Statement: r0 := @this: com.google.javascript.jscomp.Compiler 
(assert (not (= var593 null-var1294)))
(declare-const var1465 var2075) ; Statement: r6 := @parameter0: com.google.javascript.jscomp.Compiler$CodeBuilder 
(assert (not (= var1465 null-var2075)))
(declare-const var1755 var2502) ; Statement: r2 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1755 null-var2502)))
(declare-const var2915 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2915 null-Int)))
(declare-const var3457 var2567) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var3457 null-var2567)))
(define-const var1642 var460 (options/-1807643844 var593)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions options> 
(define-const var1819 Bool (printInputDelimiter/92387266 var1642)) ; Statement: $z0 = $r1.<com.google.javascript.jscomp.CompilerOptions: boolean printInputDelimiter> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1819 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if i0 != 0 goto $z10 = 0 
(assert (not (not (= var2915 0)))) ; Negate: Cond: i0 != 0  
(define-const var3988 Bool (ite (= 1 1) true false)) ; Statement: $z10 = 1 
 ; Statement: goto [?= $r17 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CodePrinter$SourceAndMappings toSourceAndMappings(com.google.javascript.rhino.Node,boolean,com.google.javascript.jscomp.CodePrinter$LicenseTracker)>(r2, $z10, r3)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1845 var2360 (toSourceAndMappings/-595396748 var593 var1755 var3988 var3457)) ; Statement: $r17 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CodePrinter$SourceAndMappings toSourceAndMappings(com.google.javascript.rhino.Node,boolean,com.google.javascript.jscomp.CodePrinter$LicenseTracker)>(r2, $z10, r3) 
(define-const var3057 String (source/1532258093 var1845)) ; Statement: $r18 = $r17.<com.google.javascript.jscomp.CodePrinter$SourceAndMappings: java.lang.String source> 
(define-const var287 var1863 (var2567_emitLicenses/-185143523 var3457)) ; Statement: $r4 = interfaceinvoke r3.<com.google.javascript.jscomp.CodePrinter$LicenseTracker: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet emitLicenses()>() 
(assert true)
(define-const var1605 var1427 (iterator/-1001106692 var287)) ; Statement: $r19 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3820 Bool (Iterator_hasNext/-1669924200 (cast-from-var1427-to-Iterator var1605))) ; Statement: $z11 = interfaceinvoke $r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z11 == 0 goto $z1 = virtualinvoke $r18.<java.lang.String: boolean isEmpty()>() 
(assert (= (ite var3820 1 0) 0)) ; Cond: $z11 == 0 
(assert true)
(define-const var1833 Bool (isEmpty/-1285796103 var3057)) ; Statement: $z1 = virtualinvoke $r18.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r5 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions options> 
(assert (not (= (ite var1833 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {options/-1807643844=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.CompilerOptions), printInputDelimiter/92387266=([com.google.javascript.jscomp.CompilerOptions], boolean), toSourceAndMappings/-595396748=([com.google.javascript.jscomp.Compiler, com.google.javascript.rhino.Node, boolean, com.google.javascript.jscomp.CodePrinter$LicenseTracker], com.google.javascript.jscomp.CodePrinter$SourceAndMappings), source/1532258093=([com.google.javascript.jscomp.CodePrinter$SourceAndMappings], java.lang.String), var2567_emitLicenses/-185143523=([com.google.javascript.jscomp.CodePrinter$LicenseTracker], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), iterator/-1001106692=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var1427-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1294=com.google.javascript.jscomp.Compiler, var593=r0, var2075=com.google.javascript.jscomp.Compiler$CodeBuilder, var1465=r6, var2502=com.google.javascript.rhino.Node, var1755=r2, var2915=i0, var2567=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var3457=r3, var460=com.google.javascript.jscomp.CompilerOptions, var1642=$r1, var1819=$z0, var3988=$z10, var2360=com.google.javascript.jscomp.CodePrinter$SourceAndMappings, var1845=$r17, var3057=$r18, var1863=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var287=$r4, var1427=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var1605=$r19, var3820=$z11, var1833=$z1}
; {com.google.javascript.jscomp.Compiler=var1294, r0=var593, com.google.javascript.jscomp.Compiler$CodeBuilder=var2075, r6=var1465, com.google.javascript.rhino.Node=var2502, r2=var1755, i0=var2915, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var2567, r3=var3457, com.google.javascript.jscomp.CompilerOptions=var460, $r1=var1642, $z0=var1819, $z10=var3988, com.google.javascript.jscomp.CodePrinter$SourceAndMappings=var2360, $r17=var1845, $r18=var3057, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1863, $r4=var287, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var1427, $r19=var1605, $z11=var3820, $z1=var1833}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Compiler;	r6 := @parameter0: com.google.javascript.jscomp.Compiler$CodeBuilder;	r2 := @parameter1: com.google.javascript.rhino.Node;	i0 := @parameter2: int;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	$r1 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions options>;	$z0 = $r1.<com.google.javascript.jscomp.CompilerOptions: boolean printInputDelimiter>;	if $z0 == 0 goto (branch);	if i0 != 0 goto $z10 = 0;	$z10 = 1;	goto [?= $r17 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CodePrinter$SourceAndMappings toSourceAndMappings(com.google.javascript.rhino.Node,boolean,com.google.javascript.jscomp.CodePrinter$LicenseTracker)>(r2, $z10, r3)];	$r17 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CodePrinter$SourceAndMappings toSourceAndMappings(com.google.javascript.rhino.Node,boolean,com.google.javascript.jscomp.CodePrinter$LicenseTracker)>(r2, $z10, r3);	$r18 = $r17.<com.google.javascript.jscomp.CodePrinter$SourceAndMappings: java.lang.String source>;	$r4 = interfaceinvoke r3.<com.google.javascript.jscomp.CodePrinter$LicenseTracker: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet emitLicenses()>();	$r19 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z11 = interfaceinvoke $r19.<java.util.Iterator: boolean hasNext()>();	if $z11 == 0 goto $z1 = virtualinvoke $r18.<java.lang.String: boolean isEmpty()>();	$z1 = virtualinvoke $r18.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r5 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions options>;	return null
;block_num 7
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3512 0)
(declare-sort var199 0)
(declare-sort var1431 0)
(declare-sort var2018 0)
(declare-sort var1756 0)
(declare-sort var2014 0)
(declare-sort var2393 0)
(declare-sort var3464 0)
(declare-sort var317 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var2018) void)
(declare-fun cast-from-var3512-to-var2018 (var3512) var2018)
(declare-fun firstCandidateMappingForCut/-862103770 (var3512) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var3512) String)
(declare-fun lineLength/-862103770 (var3512) Int)
(declare-fun lineIndex/-862103770 (var3512) Int)
(declare-fun var1756_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var3512) Int)
(declare-fun createSrcMap/-862103770 (var3512) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var3512) var199)
(declare-fun cast-from-var2014-to-var2393 (var2014) var2393)
(declare-fun mappings/-862103770 (var3512) var2393)
(declare-fun cast-from-var3464-to-var317 (var3464) var317)
(declare-fun allMappings/-862103770 (var3512) var317)
(declare-fun completeMappings/-862103770 (var3512) var317)
(declare-fun licenseTracker/-862103770 (var3512) var1431)
(declare-const null-var3512 var3512)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var199 var199)
(declare-const null-var1431 var1431)
(declare-const null-var2014 var2014)
(declare-const null-var3464 var3464)
(declare-const var2240 var3512) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var2240 null-var3512)))
(declare-const var538 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var538 null-Int)))
(declare-const var3338 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3338 null-Bool)))
(declare-const var178 var199) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var178 null-var199)))
(declare-const var921 var1431) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var921 null-var1431)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var3512-to-var2018 var2240))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var2240!1 var3512)
(declare-const var2240!2 var3512)
(assert (not (= var2240!2 null-var3512)))
(assert (= (firstCandidateMappingForCut/-862103770 var2240!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var3763 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3763 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var3763!1 String)
(declare-const var3603 Int)
(declare-const var2240!3 var3512)
(assert (not (= var2240!3 null-var3512)))
(assert (= (code/-862103770 var2240!3) var3763!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var2240!4 var3512)
(assert (not (= var2240!4 null-var3512)))
(assert (= (lineLength/-862103770 var2240!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var2240!5 var3512)
(assert (not (= var2240!5 null-var3512)))
(assert (= (lineIndex/-862103770 var2240!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var178 null-var199)) ; Cond: r2 == null 
(define-const var3321 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var1756_checkState/1431124798 var3321)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var3321!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var538 0)) ; Cond: i0 > 0 
(define-const var2397 Int var538) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var2240!6 var3512)
(assert (not (= var2240!6 null-var3512)))
(assert (= (lineLengthThreshold/-862103770 var2240!6) var2397)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var2240!7 var3512)
(assert (not (= var2240!7 null-var3512)))
(assert (= (createSrcMap/-862103770 var2240!7) var3338)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var2240!8 var3512)
(assert (not (= var2240!8 null-var3512)))
(assert (= (sourceMapDetailLevel/-862103770 var2240!8) var178)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var3338 1 0) 0)) ; Cond: z0 == 0 
(define-const var3590 var2014 null-var2014) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var2240!9 var3512)
(assert (not (= var2240!9 null-var3512)))
(assert (= (mappings/-862103770 var2240!9) (cast-from-var2014-to-var2393 var3590))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var3338 1 0) 0)) ; Cond: z0 == 0 
(define-const var163 var3464 null-var3464) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var2240!10 var3512)
(assert (not (= var2240!10 null-var3512)))
(assert (= (allMappings/-862103770 var2240!10) (cast-from-var3464-to-var317 var163))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var3338 1 0) 0)) ; Cond: z0 == 0 
(define-const var945 var3464 null-var3464) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var2240!11 var3512)
(assert (not (= var2240!11 null-var3512)))
(assert (= (completeMappings/-862103770 var2240!11) (cast-from-var3464-to-var317 var945))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var2240!12 var3512)
(assert (not (= var2240!12 null-var3512)))
(assert (= (licenseTracker/-862103770 var2240!12) var921)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var3512-to-var2018=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var1756_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var2014-to-var2393=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var3464-to-var317=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var3512=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var2240=r0, var538=i0, var3338=z0, var199=com.google.javascript.jscomp.SourceMap$DetailLevel, var178=r2, var1431=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var921=r3, var2018=com.google.javascript.jscomp.CodeConsumer, var3763=$r1, var3603=1024, var3321=$z1, var1756=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2397=$i1, var2014=java.util.ArrayDeque, var3590=$r4, var2393=java.util.Deque, var3464=java.util.ArrayList, var163=$r5, var317=java.util.List, var945=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var3512, r0=var2240, i0=var538, z0=var3338, com.google.javascript.jscomp.SourceMap$DetailLevel=var199, r2=var178, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var1431, r3=var921, com.google.javascript.jscomp.CodeConsumer=var2018, $r1=var3763, 1024=var3603, $z1=var3321, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1756, $i1=var2397, java.util.ArrayDeque=var2014, $r4=var3590, java.util.Deque=var2393, java.util.ArrayList=var3464, $r5=var163, java.util.List=var317, $r6=var945}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
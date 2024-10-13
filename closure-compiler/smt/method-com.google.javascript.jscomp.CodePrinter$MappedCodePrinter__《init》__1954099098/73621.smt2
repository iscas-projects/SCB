(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3303 0)
(declare-sort var1766 0)
(declare-sort var2112 0)
(declare-sort var386 0)
(declare-sort var3964 0)
(declare-sort var1777 0)
(declare-sort var3678 0)
(declare-sort var3550 0)
(declare-sort var124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var386) void)
(declare-fun cast-from-var3303-to-var386 (var3303) var386)
(declare-fun firstCandidateMappingForCut/-862103770 (var3303) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var3303) String)
(declare-fun lineLength/-862103770 (var3303) Int)
(declare-fun lineIndex/-862103770 (var3303) Int)
(declare-fun var3964_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var3303) Int)
(declare-fun createSrcMap/-862103770 (var3303) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var3303) var1766)
(declare-fun cast-from-var1777-to-var3678 (var1777) var3678)
(declare-fun mappings/-862103770 (var3303) var3678)
(declare-fun cast-from-var3550-to-var124 (var3550) var124)
(declare-fun allMappings/-862103770 (var3303) var124)
(declare-fun completeMappings/-862103770 (var3303) var124)
(declare-fun licenseTracker/-862103770 (var3303) var2112)
(declare-const null-var3303 var3303)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var1766 var1766)
(declare-const null-var2112 var2112)
(declare-const null-var1777 var1777)
(declare-const null-var3550 var3550)
(declare-const var2148 var3303) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var2148 null-var3303)))
(declare-const var2347 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2347 null-Int)))
(declare-const var1683 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1683 null-Bool)))
(declare-const var2693 var1766) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var2693 null-var1766)))
(declare-const var2788 var2112) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var2788 null-var2112)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var3303-to-var386 var2148))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var2148!1 var3303)
(declare-const var2148!2 var3303)
(assert (not (= var2148!2 null-var3303)))
(assert (= (firstCandidateMappingForCut/-862103770 var2148!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var3346 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3346 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var3346!1 String)
(declare-const var3034 Int)
(declare-const var2148!3 var3303)
(assert (not (= var2148!3 null-var3303)))
(assert (= (code/-862103770 var2148!3) var3346!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var2148!4 var3303)
(assert (not (= var2148!4 null-var3303)))
(assert (= (lineLength/-862103770 var2148!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var2148!5 var3303)
(assert (not (= var2148!5 null-var3303)))
(assert (= (lineIndex/-862103770 var2148!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var2693 null-var1766))) ; Negate: Cond: r2 == null  
(define-const var1793 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var3964_checkState/1431124798 var1793)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var1793!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var2347 0))) ; Negate: Cond: i0 > 0  
(define-const var573 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var2148!6 var3303)
(assert (not (= var2148!6 null-var3303)))
(assert (= (lineLengthThreshold/-862103770 var2148!6) var573)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var2148!7 var3303)
(assert (not (= var2148!7 null-var3303)))
(assert (= (createSrcMap/-862103770 var2148!7) var1683)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var2148!8 var3303)
(assert (not (= var2148!8 null-var3303)))
(assert (= (sourceMapDetailLevel/-862103770 var2148!8) var2693)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var1683 1 0) 0)) ; Cond: z0 == 0 
(define-const var1080 var1777 null-var1777) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var2148!9 var3303)
(assert (not (= var2148!9 null-var3303)))
(assert (= (mappings/-862103770 var2148!9) (cast-from-var1777-to-var3678 var1080))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var1683 1 0) 0)) ; Cond: z0 == 0 
(define-const var233 var3550 null-var3550) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var2148!10 var3303)
(assert (not (= var2148!10 null-var3303)))
(assert (= (allMappings/-862103770 var2148!10) (cast-from-var3550-to-var124 var233))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var1683 1 0) 0)) ; Cond: z0 == 0 
(define-const var1487 var3550 null-var3550) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var2148!11 var3303)
(assert (not (= var2148!11 null-var3303)))
(assert (= (completeMappings/-862103770 var2148!11) (cast-from-var3550-to-var124 var1487))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var2148!12 var3303)
(assert (not (= var2148!12 null-var3303)))
(assert (= (licenseTracker/-862103770 var2148!12) var2788)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var3303-to-var386=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var3964_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var1777-to-var3678=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var3550-to-var124=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var3303=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var2148=r0, var2347=i0, var1683=z0, var1766=com.google.javascript.jscomp.SourceMap$DetailLevel, var2693=r2, var2112=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var2788=r3, var386=com.google.javascript.jscomp.CodeConsumer, var3346=$r1, var3034=1024, var1793=$z1, var3964=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var573=$i1, var1777=java.util.ArrayDeque, var1080=$r4, var3678=java.util.Deque, var3550=java.util.ArrayList, var233=$r5, var124=java.util.List, var1487=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var3303, r0=var2148, i0=var2347, z0=var1683, com.google.javascript.jscomp.SourceMap$DetailLevel=var1766, r2=var2693, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var2112, r3=var2788, com.google.javascript.jscomp.CodeConsumer=var386, $r1=var3346, 1024=var3034, $z1=var1793, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3964, $i1=var573, java.util.ArrayDeque=var1777, $r4=var1080, java.util.Deque=var3678, java.util.ArrayList=var3550, $r5=var233, java.util.List=var124, $r6=var1487}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2416 0)
(declare-sort var2093 0)
(declare-sort var1845 0)
(declare-sort var1605 0)
(declare-sort var2365 0)
(declare-sort var1400 0)
(declare-sort var408 0)
(declare-sort var68 0)
(declare-sort var196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var1605) void)
(declare-fun cast-from-var2416-to-var1605 (var2416) var1605)
(declare-fun firstCandidateMappingForCut/-862103770 (var2416) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var2416) String)
(declare-fun lineLength/-862103770 (var2416) Int)
(declare-fun lineIndex/-862103770 (var2416) Int)
(declare-fun var2365_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var2416) Int)
(declare-fun createSrcMap/-862103770 (var2416) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var2416) var2093)
(declare-fun cast-from-var1400-to-var408 (var1400) var408)
(declare-fun mappings/-862103770 (var2416) var408)
(declare-fun cast-from-var68-to-var196 (var68) var196)
(declare-fun allMappings/-862103770 (var2416) var196)
(declare-fun completeMappings/-862103770 (var2416) var196)
(declare-fun licenseTracker/-862103770 (var2416) var1845)
(declare-const null-var2416 var2416)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var2093 var2093)
(declare-const null-var1845 var1845)
(declare-const null-var1400 var1400)
(declare-const null-var68 var68)
(declare-const var2013 var2416) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var2013 null-var2416)))
(declare-const var516 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var516 null-Int)))
(declare-const var1404 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1404 null-Bool)))
(declare-const var3350 var2093) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var3350 null-var2093)))
(declare-const var3089 var1845) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var3089 null-var1845)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var2416-to-var1605 var2013))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var2013!1 var2416)
(declare-const var2013!2 var2416)
(assert (not (= var2013!2 null-var2416)))
(assert (= (firstCandidateMappingForCut/-862103770 var2013!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var1978 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1978 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var1978!1 String)
(declare-const var1378 Int)
(declare-const var2013!3 var2416)
(assert (not (= var2013!3 null-var2416)))
(assert (= (code/-862103770 var2013!3) var1978!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var2013!4 var2416)
(assert (not (= var2013!4 null-var2416)))
(assert (= (lineLength/-862103770 var2013!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var2013!5 var2416)
(assert (not (= var2013!5 null-var2416)))
(assert (= (lineIndex/-862103770 var2013!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var3350 null-var2093))) ; Negate: Cond: r2 == null  
(define-const var433 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var2365_checkState/1431124798 var433)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var433!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var516 0)) ; Cond: i0 > 0 
(define-const var1162 Int var516) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var2013!6 var2416)
(assert (not (= var2013!6 null-var2416)))
(assert (= (lineLengthThreshold/-862103770 var2013!6) var1162)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var2013!7 var2416)
(assert (not (= var2013!7 null-var2416)))
(assert (= (createSrcMap/-862103770 var2013!7) var1404)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var2013!8 var2416)
(assert (not (= var2013!8 null-var2416)))
(assert (= (sourceMapDetailLevel/-862103770 var2013!8) var3350)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var1404 1 0) 0)) ; Cond: z0 == 0 
(define-const var3731 var1400 null-var1400) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var2013!9 var2416)
(assert (not (= var2013!9 null-var2416)))
(assert (= (mappings/-862103770 var2013!9) (cast-from-var1400-to-var408 var3731))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var1404 1 0) 0)) ; Cond: z0 == 0 
(define-const var3683 var68 null-var68) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var2013!10 var2416)
(assert (not (= var2013!10 null-var2416)))
(assert (= (allMappings/-862103770 var2013!10) (cast-from-var68-to-var196 var3683))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var1404 1 0) 0)) ; Cond: z0 == 0 
(define-const var1530 var68 null-var68) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var2013!11 var2416)
(assert (not (= var2013!11 null-var2416)))
(assert (= (completeMappings/-862103770 var2013!11) (cast-from-var68-to-var196 var1530))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var2013!12 var2416)
(assert (not (= var2013!12 null-var2416)))
(assert (= (licenseTracker/-862103770 var2013!12) var3089)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var2416-to-var1605=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var2365_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var1400-to-var408=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var68-to-var196=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var2416=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var2013=r0, var516=i0, var1404=z0, var2093=com.google.javascript.jscomp.SourceMap$DetailLevel, var3350=r2, var1845=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var3089=r3, var1605=com.google.javascript.jscomp.CodeConsumer, var1978=$r1, var1378=1024, var433=$z1, var2365=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1162=$i1, var1400=java.util.ArrayDeque, var3731=$r4, var408=java.util.Deque, var68=java.util.ArrayList, var3683=$r5, var196=java.util.List, var1530=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var2416, r0=var2013, i0=var516, z0=var1404, com.google.javascript.jscomp.SourceMap$DetailLevel=var2093, r2=var3350, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var1845, r3=var3089, com.google.javascript.jscomp.CodeConsumer=var1605, $r1=var1978, 1024=var1378, $z1=var433, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2365, $i1=var1162, java.util.ArrayDeque=var1400, $r4=var3731, java.util.Deque=var408, java.util.ArrayList=var68, $r5=var3683, java.util.List=var196, $r6=var1530}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
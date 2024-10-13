(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3862 0)
(declare-sort var3527 0)
(declare-sort var2714 0)
(declare-sort var1887 0)
(declare-sort var1191 0)
(declare-sort var2936 0)
(declare-sort var1516 0)
(declare-sort var3103 0)
(declare-sort var2156 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var1887) void)
(declare-fun cast-from-var3862-to-var1887 (var3862) var1887)
(declare-fun firstCandidateMappingForCut/-862103770 (var3862) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var3862) String)
(declare-fun lineLength/-862103770 (var3862) Int)
(declare-fun lineIndex/-862103770 (var3862) Int)
(declare-fun var1191_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var3862) Int)
(declare-fun createSrcMap/-862103770 (var3862) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var3862) var3527)
(declare-fun cast-from-var2936-to-var1516 (var2936) var1516)
(declare-fun mappings/-862103770 (var3862) var1516)
(declare-fun cast-from-var3103-to-var2156 (var3103) var2156)
(declare-fun allMappings/-862103770 (var3862) var2156)
(declare-fun completeMappings/-862103770 (var3862) var2156)
(declare-fun licenseTracker/-862103770 (var3862) var2714)
(declare-const null-var3862 var3862)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3527 var3527)
(declare-const null-var2714 var2714)
(declare-const null-var2936 var2936)
(declare-const null-var3103 var3103)
(declare-const var3246 var3862) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var3246 null-var3862)))
(declare-const var2835 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2835 null-Int)))
(declare-const var3127 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3127 null-Bool)))
(declare-const var3186 var3527) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var3186 null-var3527)))
(declare-const var3116 var2714) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var3116 null-var2714)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var3862-to-var1887 var3246))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var3246!1 var3862)
(declare-const var3246!2 var3862)
(assert (not (= var3246!2 null-var3862)))
(assert (= (firstCandidateMappingForCut/-862103770 var3246!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var2435 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2435 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var2435!1 String)
(declare-const var3222 Int)
(declare-const var3246!3 var3862)
(assert (not (= var3246!3 null-var3862)))
(assert (= (code/-862103770 var3246!3) var2435!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var3246!4 var3862)
(assert (not (= var3246!4 null-var3862)))
(assert (= (lineLength/-862103770 var3246!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var3246!5 var3862)
(assert (not (= var3246!5 null-var3862)))
(assert (= (lineIndex/-862103770 var3246!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var3186 null-var3527)) ; Cond: r2 == null 
(define-const var994 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var1191_checkState/1431124798 var994)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var994!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var2835 0))) ; Negate: Cond: i0 > 0  
(define-const var2742 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var3246!6 var3862)
(assert (not (= var3246!6 null-var3862)))
(assert (= (lineLengthThreshold/-862103770 var3246!6) var2742)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var3246!7 var3862)
(assert (not (= var3246!7 null-var3862)))
(assert (= (createSrcMap/-862103770 var3246!7) var3127)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var3246!8 var3862)
(assert (not (= var3246!8 null-var3862)))
(assert (= (sourceMapDetailLevel/-862103770 var3246!8) var3186)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var3127 1 0) 0)) ; Cond: z0 == 0 
(define-const var2153 var2936 null-var2936) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var3246!9 var3862)
(assert (not (= var3246!9 null-var3862)))
(assert (= (mappings/-862103770 var3246!9) (cast-from-var2936-to-var1516 var2153))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var3127 1 0) 0)) ; Cond: z0 == 0 
(define-const var3578 var3103 null-var3103) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var3246!10 var3862)
(assert (not (= var3246!10 null-var3862)))
(assert (= (allMappings/-862103770 var3246!10) (cast-from-var3103-to-var2156 var3578))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var3127 1 0) 0)) ; Cond: z0 == 0 
(define-const var3667 var3103 null-var3103) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var3246!11 var3862)
(assert (not (= var3246!11 null-var3862)))
(assert (= (completeMappings/-862103770 var3246!11) (cast-from-var3103-to-var2156 var3667))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var3246!12 var3862)
(assert (not (= var3246!12 null-var3862)))
(assert (= (licenseTracker/-862103770 var3246!12) var3116)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var3862-to-var1887=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var1191_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var2936-to-var1516=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var3103-to-var2156=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var3862=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var3246=r0, var2835=i0, var3127=z0, var3527=com.google.javascript.jscomp.SourceMap$DetailLevel, var3186=r2, var2714=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var3116=r3, var1887=com.google.javascript.jscomp.CodeConsumer, var2435=$r1, var3222=1024, var994=$z1, var1191=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2742=$i1, var2936=java.util.ArrayDeque, var2153=$r4, var1516=java.util.Deque, var3103=java.util.ArrayList, var3578=$r5, var2156=java.util.List, var3667=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var3862, r0=var3246, i0=var2835, z0=var3127, com.google.javascript.jscomp.SourceMap$DetailLevel=var3527, r2=var3186, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var2714, r3=var3116, com.google.javascript.jscomp.CodeConsumer=var1887, $r1=var2435, 1024=var3222, $z1=var994, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1191, $i1=var2742, java.util.ArrayDeque=var2936, $r4=var2153, java.util.Deque=var1516, java.util.ArrayList=var3103, $r5=var3578, java.util.List=var2156, $r6=var3667}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var322 0)
(declare-sort var669 0)
(declare-sort var2095 0)
(declare-sort var1309 0)
(declare-sort var596 0)
(declare-sort var1633 0)
(declare-sort var2995 0)
(declare-sort var624 0)
(declare-sort var2862 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var1309) void)
(declare-fun cast-from-var322-to-var1309 (var322) var1309)
(declare-fun firstCandidateMappingForCut/-862103770 (var322) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var322) String)
(declare-fun lineLength/-862103770 (var322) Int)
(declare-fun lineIndex/-862103770 (var322) Int)
(declare-fun var596_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var322) Int)
(declare-fun createSrcMap/-862103770 (var322) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var322) var669)
(declare-fun cast-from-var1633-to-var2995 (var1633) var2995)
(declare-fun mappings/-862103770 (var322) var2995)
(declare-fun var624-init () var624)
(declare-fun <init>/-325640736 (var624) void)
(declare-fun cast-from-var624-to-var2862 (var624) var2862)
(declare-fun allMappings/-862103770 (var322) var2862)
(declare-fun completeMappings/-862103770 (var322) var2862)
(declare-fun licenseTracker/-862103770 (var322) var2095)
(declare-const null-var322 var322)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var669 var669)
(declare-const null-var2095 var2095)
(declare-const null-var1633 var1633)
(declare-const var571 var322) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var571 null-var322)))
(declare-const var2847 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2847 null-Int)))
(declare-const var1347 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1347 null-Bool)))
(declare-const var2547 var669) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var2547 null-var669)))
(declare-const var925 var2095) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var925 null-var2095)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var322-to-var1309 var571))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var571!1 var322)
(declare-const var571!2 var322)
(assert (not (= var571!2 null-var322)))
(assert (= (firstCandidateMappingForCut/-862103770 var571!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var1662 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1662 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var1662!1 String)
(declare-const var282 Int)
(declare-const var571!3 var322)
(assert (not (= var571!3 null-var322)))
(assert (= (code/-862103770 var571!3) var1662!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var571!4 var322)
(assert (not (= var571!4 null-var322)))
(assert (= (lineLength/-862103770 var571!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var571!5 var322)
(assert (not (= var571!5 null-var322)))
(assert (= (lineIndex/-862103770 var571!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var2547 null-var669)) ; Cond: r2 == null 
(define-const var3918 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var596_checkState/1431124798 var3918)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var3918!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var2847 0))) ; Negate: Cond: i0 > 0  
(define-const var1770 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var571!6 var322)
(assert (not (= var571!6 null-var322)))
(assert (= (lineLengthThreshold/-862103770 var571!6) var1770)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var571!7 var322)
(assert (not (= var571!7 null-var322)))
(assert (= (createSrcMap/-862103770 var571!7) var1347)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var571!8 var322)
(assert (not (= var571!8 null-var322)))
(assert (= (sourceMapDetailLevel/-862103770 var571!8) var2547)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var1347 1 0) 0)) ; Cond: z0 == 0 
(define-const var2105 var1633 null-var1633) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var571!9 var322)
(assert (not (= var571!9 null-var322)))
(assert (= (mappings/-862103770 var571!9) (cast-from-var1633-to-var2995 var2105))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var1347 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3981 var624 var624-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3981)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var3981!1 var624)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var571!10 var322)
(assert (not (= var571!10 null-var322)))
(assert (= (allMappings/-862103770 var571!10) (cast-from-var624-to-var2862 var3981!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var1347 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1418 var624 var624-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1418)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var1418!1 var624)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var571!11 var322)
(assert (not (= var571!11 null-var322)))
(assert (= (completeMappings/-862103770 var571!11) (cast-from-var624-to-var2862 var1418!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var571!12 var322)
(assert (not (= var571!12 null-var322)))
(assert (= (licenseTracker/-862103770 var571!12) var925)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var322-to-var1309=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var596_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var1633-to-var2995=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var624-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var624-to-var2862=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var322=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var571=r0, var2847=i0, var1347=z0, var669=com.google.javascript.jscomp.SourceMap$DetailLevel, var2547=r2, var2095=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var925=r3, var1309=com.google.javascript.jscomp.CodeConsumer, var1662=$r1, var282=1024, var3918=$z1, var596=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1770=$i1, var1633=java.util.ArrayDeque, var2105=$r4, var2995=java.util.Deque, var624=java.util.ArrayList, var3981=$r5, var2862=java.util.List, var1418=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var322, r0=var571, i0=var2847, z0=var1347, com.google.javascript.jscomp.SourceMap$DetailLevel=var669, r2=var2547, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var2095, r3=var925, com.google.javascript.jscomp.CodeConsumer=var1309, $r1=var1662, 1024=var282, $z1=var3918, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var596, $i1=var1770, java.util.ArrayDeque=var1633, $r4=var2105, java.util.Deque=var2995, java.util.ArrayList=var624, $r5=var3981, java.util.List=var2862, $r6=var1418}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
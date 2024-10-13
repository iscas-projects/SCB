(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2733 0)
(declare-sort var2066 0)
(declare-sort var3707 0)
(declare-sort var3767 0)
(declare-sort var919 0)
(declare-sort var1659 0)
(declare-sort var1461 0)
(declare-sort var2522 0)
(declare-sort var2789 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var3767) void)
(declare-fun cast-from-var2733-to-var3767 (var2733) var3767)
(declare-fun firstCandidateMappingForCut/-862103770 (var2733) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var2733) String)
(declare-fun lineLength/-862103770 (var2733) Int)
(declare-fun lineIndex/-862103770 (var2733) Int)
(declare-fun var919_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var2733) Int)
(declare-fun createSrcMap/-862103770 (var2733) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var2733) var2066)
(declare-fun cast-from-var1659-to-var1461 (var1659) var1461)
(declare-fun mappings/-862103770 (var2733) var1461)
(declare-fun var2522-init () var2522)
(declare-fun <init>/-325640736 (var2522) void)
(declare-fun cast-from-var2522-to-var2789 (var2522) var2789)
(declare-fun allMappings/-862103770 (var2733) var2789)
(declare-fun completeMappings/-862103770 (var2733) var2789)
(declare-fun licenseTracker/-862103770 (var2733) var3707)
(declare-const null-var2733 var2733)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var2066 var2066)
(declare-const null-var3707 var3707)
(declare-const null-var1659 var1659)
(declare-const null-var2522 var2522)
(declare-const var672 var2733) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var672 null-var2733)))
(declare-const var3939 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3939 null-Int)))
(declare-const var1371 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1371 null-Bool)))
(declare-const var2872 var2066) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var2872 null-var2066)))
(declare-const var171 var3707) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var171 null-var3707)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var2733-to-var3767 var672))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var672!1 var2733)
(declare-const var672!2 var2733)
(assert (not (= var672!2 null-var2733)))
(assert (= (firstCandidateMappingForCut/-862103770 var672!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var3622 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3622 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var3622!1 String)
(declare-const var3379 Int)
(declare-const var672!3 var2733)
(assert (not (= var672!3 null-var2733)))
(assert (= (code/-862103770 var672!3) var3622!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var672!4 var2733)
(assert (not (= var672!4 null-var2733)))
(assert (= (lineLength/-862103770 var672!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var672!5 var2733)
(assert (not (= var672!5 null-var2733)))
(assert (= (lineIndex/-862103770 var672!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var2872 null-var2066)) ; Cond: r2 == null 
(define-const var2771 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var919_checkState/1431124798 var2771)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var2771!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var3939 0)) ; Cond: i0 > 0 
(define-const var550 Int var3939) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var672!6 var2733)
(assert (not (= var672!6 null-var2733)))
(assert (= (lineLengthThreshold/-862103770 var672!6) var550)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var672!7 var2733)
(assert (not (= var672!7 null-var2733)))
(assert (= (createSrcMap/-862103770 var672!7) var1371)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var672!8 var2733)
(assert (not (= var672!8 null-var2733)))
(assert (= (sourceMapDetailLevel/-862103770 var672!8) var2872)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var1371 1 0) 0)) ; Cond: z0 == 0 
(define-const var2271 var1659 null-var1659) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var672!9 var2733)
(assert (not (= var672!9 null-var2733)))
(assert (= (mappings/-862103770 var672!9) (cast-from-var1659-to-var1461 var2271))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var1371 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2169 var2522 var2522-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2169)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var2169!1 var2522)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var672!10 var2733)
(assert (not (= var672!10 null-var2733)))
(assert (= (allMappings/-862103770 var672!10) (cast-from-var2522-to-var2789 var2169!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var1371 1 0) 0)) ; Cond: z0 == 0 
(define-const var2836 var2522 null-var2522) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var672!11 var2733)
(assert (not (= var672!11 null-var2733)))
(assert (= (completeMappings/-862103770 var672!11) (cast-from-var2522-to-var2789 var2836))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var672!12 var2733)
(assert (not (= var672!12 null-var2733)))
(assert (= (licenseTracker/-862103770 var672!12) var171)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var2733-to-var3767=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var919_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var1659-to-var1461=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var2522-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var2522-to-var2789=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var2733=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var672=r0, var3939=i0, var1371=z0, var2066=com.google.javascript.jscomp.SourceMap$DetailLevel, var2872=r2, var3707=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var171=r3, var3767=com.google.javascript.jscomp.CodeConsumer, var3622=$r1, var3379=1024, var2771=$z1, var919=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var550=$i1, var1659=java.util.ArrayDeque, var2271=$r4, var1461=java.util.Deque, var2522=java.util.ArrayList, var2169=$r5, var2789=java.util.List, var2836=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var2733, r0=var672, i0=var3939, z0=var1371, com.google.javascript.jscomp.SourceMap$DetailLevel=var2066, r2=var2872, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var3707, r3=var171, com.google.javascript.jscomp.CodeConsumer=var3767, $r1=var3622, 1024=var3379, $z1=var2771, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var919, $i1=var550, java.util.ArrayDeque=var1659, $r4=var2271, java.util.Deque=var1461, java.util.ArrayList=var2522, $r5=var2169, java.util.List=var2789, $r6=var2836}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2838 0)
(declare-sort var898 0)
(declare-sort var2021 0)
(declare-sort var1365 0)
(declare-sort var584 0)
(declare-sort var960 0)
(declare-sort var542 0)
(declare-sort var2789 0)
(declare-sort var3741 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var1365) void)
(declare-fun cast-from-var2838-to-var1365 (var2838) var1365)
(declare-fun firstCandidateMappingForCut/-862103770 (var2838) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var2838) String)
(declare-fun lineLength/-862103770 (var2838) Int)
(declare-fun lineIndex/-862103770 (var2838) Int)
(declare-fun var584_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var2838) Int)
(declare-fun createSrcMap/-862103770 (var2838) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var2838) var898)
(declare-fun var960-init () var960)
(declare-fun <init>/-1300283768 (var960) void)
(declare-fun cast-from-var960-to-var542 (var960) var542)
(declare-fun mappings/-862103770 (var2838) var542)
(declare-fun cast-from-var2789-to-var3741 (var2789) var3741)
(declare-fun allMappings/-862103770 (var2838) var3741)
(declare-fun completeMappings/-862103770 (var2838) var3741)
(declare-fun licenseTracker/-862103770 (var2838) var2021)
(declare-const null-var2838 var2838)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var898 var898)
(declare-const null-var2021 var2021)
(declare-const null-var2789 var2789)
(declare-const var3734 var2838) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var3734 null-var2838)))
(declare-const var2147 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2147 null-Int)))
(declare-const var1262 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1262 null-Bool)))
(declare-const var2466 var898) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var2466 null-var898)))
(declare-const var1474 var2021) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var1474 null-var2021)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var2838-to-var1365 var3734))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var3734!1 var2838)
(declare-const var3734!2 var2838)
(assert (not (= var3734!2 null-var2838)))
(assert (= (firstCandidateMappingForCut/-862103770 var3734!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var597 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var597 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var597!1 String)
(declare-const var2359 Int)
(declare-const var3734!3 var2838)
(assert (not (= var3734!3 null-var2838)))
(assert (= (code/-862103770 var3734!3) var597!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var3734!4 var2838)
(assert (not (= var3734!4 null-var2838)))
(assert (= (lineLength/-862103770 var3734!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var3734!5 var2838)
(assert (not (= var3734!5 null-var2838)))
(assert (= (lineIndex/-862103770 var3734!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var2466 null-var898)) ; Cond: r2 == null 
(define-const var2752 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var584_checkState/1431124798 var2752)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var2752!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var2147 0)) ; Cond: i0 > 0 
(define-const var3815 Int var2147) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var3734!6 var2838)
(assert (not (= var3734!6 null-var2838)))
(assert (= (lineLengthThreshold/-862103770 var3734!6) var3815)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var3734!7 var2838)
(assert (not (= var3734!7 null-var2838)))
(assert (= (createSrcMap/-862103770 var3734!7) var1262)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var3734!8 var2838)
(assert (not (= var3734!8 null-var2838)))
(assert (= (sourceMapDetailLevel/-862103770 var3734!8) var2466)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var1262 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2409 var960 var960-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var2409)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var2409!1 var960)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var3734!9 var2838)
(assert (not (= var3734!9 null-var2838)))
(assert (= (mappings/-862103770 var3734!9) (cast-from-var960-to-var542 var2409!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var1262 1 0) 0)) ; Cond: z0 == 0 
(define-const var1583 var2789 null-var2789) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var3734!10 var2838)
(assert (not (= var3734!10 null-var2838)))
(assert (= (allMappings/-862103770 var3734!10) (cast-from-var2789-to-var3741 var1583))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var1262 1 0) 0)) ; Cond: z0 == 0 
(define-const var3521 var2789 null-var2789) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var3734!11 var2838)
(assert (not (= var3734!11 null-var2838)))
(assert (= (completeMappings/-862103770 var3734!11) (cast-from-var2789-to-var3741 var3521))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var3734!12 var2838)
(assert (not (= var3734!12 null-var2838)))
(assert (= (licenseTracker/-862103770 var3734!12) var1474)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var2838-to-var1365=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var584_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var960-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var960-to-var542=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var2789-to-var3741=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var2838=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var3734=r0, var2147=i0, var1262=z0, var898=com.google.javascript.jscomp.SourceMap$DetailLevel, var2466=r2, var2021=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var1474=r3, var1365=com.google.javascript.jscomp.CodeConsumer, var597=$r1, var2359=1024, var2752=$z1, var584=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3815=$i1, var960=java.util.ArrayDeque, var2409=$r4, var542=java.util.Deque, var2789=java.util.ArrayList, var1583=$r5, var3741=java.util.List, var3521=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var2838, r0=var3734, i0=var2147, z0=var1262, com.google.javascript.jscomp.SourceMap$DetailLevel=var898, r2=var2466, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var2021, r3=var1474, com.google.javascript.jscomp.CodeConsumer=var1365, $r1=var597, 1024=var2359, $z1=var2752, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var584, $i1=var3815, java.util.ArrayDeque=var960, $r4=var2409, java.util.Deque=var542, java.util.ArrayList=var2789, $r5=var1583, java.util.List=var3741, $r6=var3521}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
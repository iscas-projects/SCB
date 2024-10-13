(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1178 0)
(declare-sort var1438 0)
(declare-sort var1533 0)
(declare-sort var1663 0)
(declare-sort var709 0)
(declare-sort var2061 0)
(declare-sort var7 0)
(declare-sort var856 0)
(declare-sort var3007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var1663) void)
(declare-fun cast-from-var1178-to-var1663 (var1178) var1663)
(declare-fun firstCandidateMappingForCut/-862103770 (var1178) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var1178) String)
(declare-fun lineLength/-862103770 (var1178) Int)
(declare-fun lineIndex/-862103770 (var1178) Int)
(declare-fun var709_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var1178) Int)
(declare-fun createSrcMap/-862103770 (var1178) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var1178) var1438)
(declare-fun var2061-init () var2061)
(declare-fun <init>/-1300283768 (var2061) void)
(declare-fun cast-from-var2061-to-var7 (var2061) var7)
(declare-fun mappings/-862103770 (var1178) var7)
(declare-fun cast-from-var856-to-var3007 (var856) var3007)
(declare-fun allMappings/-862103770 (var1178) var3007)
(declare-fun completeMappings/-862103770 (var1178) var3007)
(declare-fun licenseTracker/-862103770 (var1178) var1533)
(declare-const null-var1178 var1178)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var1438 var1438)
(declare-const null-var1533 var1533)
(declare-const null-var856 var856)
(declare-const var897 var1178) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var897 null-var1178)))
(declare-const var3691 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3691 null-Int)))
(declare-const var1292 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1292 null-Bool)))
(declare-const var1383 var1438) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var1383 null-var1438)))
(declare-const var1075 var1533) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var1075 null-var1533)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var1178-to-var1663 var897))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var897!1 var1178)
(declare-const var897!2 var1178)
(assert (not (= var897!2 null-var1178)))
(assert (= (firstCandidateMappingForCut/-862103770 var897!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var715 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var715 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var715!1 String)
(declare-const var2756 Int)
(declare-const var897!3 var1178)
(assert (not (= var897!3 null-var1178)))
(assert (= (code/-862103770 var897!3) var715!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var897!4 var1178)
(assert (not (= var897!4 null-var1178)))
(assert (= (lineLength/-862103770 var897!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var897!5 var1178)
(assert (not (= var897!5 null-var1178)))
(assert (= (lineIndex/-862103770 var897!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var1383 null-var1438))) ; Negate: Cond: r2 == null  
(define-const var685 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var709_checkState/1431124798 var685)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var685!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var3691 0)) ; Cond: i0 > 0 
(define-const var3202 Int var3691) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var897!6 var1178)
(assert (not (= var897!6 null-var1178)))
(assert (= (lineLengthThreshold/-862103770 var897!6) var3202)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var897!7 var1178)
(assert (not (= var897!7 null-var1178)))
(assert (= (createSrcMap/-862103770 var897!7) var1292)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var897!8 var1178)
(assert (not (= var897!8 null-var1178)))
(assert (= (sourceMapDetailLevel/-862103770 var897!8) var1383)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var1292 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1739 var2061 var2061-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var1739)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var1739!1 var2061)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var897!9 var1178)
(assert (not (= var897!9 null-var1178)))
(assert (= (mappings/-862103770 var897!9) (cast-from-var2061-to-var7 var1739!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var1292 1 0) 0)) ; Cond: z0 == 0 
(define-const var2064 var856 null-var856) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var897!10 var1178)
(assert (not (= var897!10 null-var1178)))
(assert (= (allMappings/-862103770 var897!10) (cast-from-var856-to-var3007 var2064))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var1292 1 0) 0)) ; Cond: z0 == 0 
(define-const var2835 var856 null-var856) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var897!11 var1178)
(assert (not (= var897!11 null-var1178)))
(assert (= (completeMappings/-862103770 var897!11) (cast-from-var856-to-var3007 var2835))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var897!12 var1178)
(assert (not (= var897!12 null-var1178)))
(assert (= (licenseTracker/-862103770 var897!12) var1075)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var1178-to-var1663=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var709_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var2061-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var2061-to-var7=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var856-to-var3007=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var1178=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var897=r0, var3691=i0, var1292=z0, var1438=com.google.javascript.jscomp.SourceMap$DetailLevel, var1383=r2, var1533=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var1075=r3, var1663=com.google.javascript.jscomp.CodeConsumer, var715=$r1, var2756=1024, var685=$z1, var709=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3202=$i1, var2061=java.util.ArrayDeque, var1739=$r4, var7=java.util.Deque, var856=java.util.ArrayList, var2064=$r5, var3007=java.util.List, var2835=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var1178, r0=var897, i0=var3691, z0=var1292, com.google.javascript.jscomp.SourceMap$DetailLevel=var1438, r2=var1383, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var1533, r3=var1075, com.google.javascript.jscomp.CodeConsumer=var1663, $r1=var715, 1024=var2756, $z1=var685, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var709, $i1=var3202, java.util.ArrayDeque=var2061, $r4=var1739, java.util.Deque=var7, java.util.ArrayList=var856, $r5=var2064, java.util.List=var3007, $r6=var2835}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
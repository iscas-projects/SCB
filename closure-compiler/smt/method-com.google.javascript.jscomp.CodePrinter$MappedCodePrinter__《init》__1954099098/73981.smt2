(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1427 0)
(declare-sort var396 0)
(declare-sort var1362 0)
(declare-sort var2478 0)
(declare-sort var182 0)
(declare-sort var722 0)
(declare-sort var1721 0)
(declare-sort var3119 0)
(declare-sort var2713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var2478) void)
(declare-fun cast-from-var1427-to-var2478 (var1427) var2478)
(declare-fun firstCandidateMappingForCut/-862103770 (var1427) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var1427) String)
(declare-fun lineLength/-862103770 (var1427) Int)
(declare-fun lineIndex/-862103770 (var1427) Int)
(declare-fun var182_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var1427) Int)
(declare-fun createSrcMap/-862103770 (var1427) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var1427) var396)
(declare-fun cast-from-var722-to-var1721 (var722) var1721)
(declare-fun mappings/-862103770 (var1427) var1721)
(declare-fun var3119-init () var3119)
(declare-fun <init>/-325640736 (var3119) void)
(declare-fun cast-from-var3119-to-var2713 (var3119) var2713)
(declare-fun allMappings/-862103770 (var1427) var2713)
(declare-fun completeMappings/-862103770 (var1427) var2713)
(declare-fun licenseTracker/-862103770 (var1427) var1362)
(declare-const null-var1427 var1427)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var396 var396)
(declare-const null-var1362 var1362)
(declare-const null-var722 var722)
(declare-const var3000 var1427) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var3000 null-var1427)))
(declare-const var2095 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2095 null-Int)))
(declare-const var470 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var470 null-Bool)))
(declare-const var2773 var396) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var2773 null-var396)))
(declare-const var3914 var1362) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var3914 null-var1362)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var1427-to-var2478 var3000))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var3000!1 var1427)
(declare-const var3000!2 var1427)
(assert (not (= var3000!2 null-var1427)))
(assert (= (firstCandidateMappingForCut/-862103770 var3000!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var344 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var344 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var344!1 String)
(declare-const var1459 Int)
(declare-const var3000!3 var1427)
(assert (not (= var3000!3 null-var1427)))
(assert (= (code/-862103770 var3000!3) var344!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var3000!4 var1427)
(assert (not (= var3000!4 null-var1427)))
(assert (= (lineLength/-862103770 var3000!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var3000!5 var1427)
(assert (not (= var3000!5 null-var1427)))
(assert (= (lineIndex/-862103770 var3000!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var2773 null-var396)) ; Cond: r2 == null 
(define-const var3348 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var182_checkState/1431124798 var3348)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var3348!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var2095 0)) ; Cond: i0 > 0 
(define-const var145 Int var2095) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var3000!6 var1427)
(assert (not (= var3000!6 null-var1427)))
(assert (= (lineLengthThreshold/-862103770 var3000!6) var145)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var3000!7 var1427)
(assert (not (= var3000!7 null-var1427)))
(assert (= (createSrcMap/-862103770 var3000!7) var470)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var3000!8 var1427)
(assert (not (= var3000!8 null-var1427)))
(assert (= (sourceMapDetailLevel/-862103770 var3000!8) var2773)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var470 1 0) 0)) ; Cond: z0 == 0 
(define-const var3707 var722 null-var722) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var3000!9 var1427)
(assert (not (= var3000!9 null-var1427)))
(assert (= (mappings/-862103770 var3000!9) (cast-from-var722-to-var1721 var3707))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var470 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2513 var3119 var3119-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2513)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var2513!1 var3119)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var3000!10 var1427)
(assert (not (= var3000!10 null-var1427)))
(assert (= (allMappings/-862103770 var3000!10) (cast-from-var3119-to-var2713 var2513!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var470 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3086 var3119 var3119-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3086)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var3086!1 var3119)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var3000!11 var1427)
(assert (not (= var3000!11 null-var1427)))
(assert (= (completeMappings/-862103770 var3000!11) (cast-from-var3119-to-var2713 var3086!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var3000!12 var1427)
(assert (not (= var3000!12 null-var1427)))
(assert (= (licenseTracker/-862103770 var3000!12) var3914)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var1427-to-var2478=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var182_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var722-to-var1721=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var3119-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var3119-to-var2713=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var1427=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var3000=r0, var2095=i0, var470=z0, var396=com.google.javascript.jscomp.SourceMap$DetailLevel, var2773=r2, var1362=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var3914=r3, var2478=com.google.javascript.jscomp.CodeConsumer, var344=$r1, var1459=1024, var3348=$z1, var182=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var145=$i1, var722=java.util.ArrayDeque, var3707=$r4, var1721=java.util.Deque, var3119=java.util.ArrayList, var2513=$r5, var2713=java.util.List, var3086=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var1427, r0=var3000, i0=var2095, z0=var470, com.google.javascript.jscomp.SourceMap$DetailLevel=var396, r2=var2773, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var1362, r3=var3914, com.google.javascript.jscomp.CodeConsumer=var2478, $r1=var344, 1024=var1459, $z1=var3348, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var182, $i1=var145, java.util.ArrayDeque=var722, $r4=var3707, java.util.Deque=var1721, java.util.ArrayList=var3119, $r5=var2513, java.util.List=var2713, $r6=var3086}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
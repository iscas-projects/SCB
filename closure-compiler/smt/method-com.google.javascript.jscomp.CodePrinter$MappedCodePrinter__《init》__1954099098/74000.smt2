(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2436 0)
(declare-sort var1767 0)
(declare-sort var3115 0)
(declare-sort var2454 0)
(declare-sort var2430 0)
(declare-sort var3504 0)
(declare-sort var1788 0)
(declare-sort var1436 0)
(declare-sort var3462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var2454) void)
(declare-fun cast-from-var2436-to-var2454 (var2436) var2454)
(declare-fun firstCandidateMappingForCut/-862103770 (var2436) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var2436) String)
(declare-fun lineLength/-862103770 (var2436) Int)
(declare-fun lineIndex/-862103770 (var2436) Int)
(declare-fun var2430_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var2436) Int)
(declare-fun createSrcMap/-862103770 (var2436) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var2436) var1767)
(declare-fun cast-from-var3504-to-var1788 (var3504) var1788)
(declare-fun mappings/-862103770 (var2436) var1788)
(declare-fun cast-from-var1436-to-var3462 (var1436) var3462)
(declare-fun allMappings/-862103770 (var2436) var3462)
(declare-fun var1436-init () var1436)
(declare-fun <init>/-325640736 (var1436) void)
(declare-fun completeMappings/-862103770 (var2436) var3462)
(declare-fun licenseTracker/-862103770 (var2436) var3115)
(declare-const null-var2436 var2436)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var1767 var1767)
(declare-const null-var3115 var3115)
(declare-const null-var3504 var3504)
(declare-const null-var1436 var1436)
(declare-const var1853 var2436) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var1853 null-var2436)))
(declare-const var3155 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3155 null-Int)))
(declare-const var1431 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1431 null-Bool)))
(declare-const var595 var1767) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var595 null-var1767)))
(declare-const var456 var3115) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var456 null-var3115)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var2436-to-var2454 var1853))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var1853!1 var2436)
(declare-const var1853!2 var2436)
(assert (not (= var1853!2 null-var2436)))
(assert (= (firstCandidateMappingForCut/-862103770 var1853!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var920 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var920 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var920!1 String)
(declare-const var951 Int)
(declare-const var1853!3 var2436)
(assert (not (= var1853!3 null-var2436)))
(assert (= (code/-862103770 var1853!3) var920!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var1853!4 var2436)
(assert (not (= var1853!4 null-var2436)))
(assert (= (lineLength/-862103770 var1853!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var1853!5 var2436)
(assert (not (= var1853!5 null-var2436)))
(assert (= (lineIndex/-862103770 var1853!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var595 null-var1767)) ; Cond: r2 == null 
(define-const var1039 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var2430_checkState/1431124798 var1039)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var1039!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var3155 0)) ; Cond: i0 > 0 
(define-const var2245 Int var3155) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var1853!6 var2436)
(assert (not (= var1853!6 null-var2436)))
(assert (= (lineLengthThreshold/-862103770 var1853!6) var2245)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var1853!7 var2436)
(assert (not (= var1853!7 null-var2436)))
(assert (= (createSrcMap/-862103770 var1853!7) var1431)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var1853!8 var2436)
(assert (not (= var1853!8 null-var2436)))
(assert (= (sourceMapDetailLevel/-862103770 var1853!8) var595)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var1431 1 0) 0)) ; Cond: z0 == 0 
(define-const var485 var3504 null-var3504) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var1853!9 var2436)
(assert (not (= var1853!9 null-var2436)))
(assert (= (mappings/-862103770 var1853!9) (cast-from-var3504-to-var1788 var485))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var1431 1 0) 0)) ; Cond: z0 == 0 
(define-const var2044 var1436 null-var1436) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var1853!10 var2436)
(assert (not (= var1853!10 null-var2436)))
(assert (= (allMappings/-862103770 var1853!10) (cast-from-var1436-to-var3462 var2044))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var1431 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3616 var1436 var1436-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3616)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var3616!1 var1436)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var1853!11 var2436)
(assert (not (= var1853!11 null-var2436)))
(assert (= (completeMappings/-862103770 var1853!11) (cast-from-var1436-to-var3462 var3616!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var1853!12 var2436)
(assert (not (= var1853!12 null-var2436)))
(assert (= (licenseTracker/-862103770 var1853!12) var456)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var2436-to-var2454=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var2430_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var3504-to-var1788=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var1436-to-var3462=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), var1436-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var2436=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var1853=r0, var3155=i0, var1431=z0, var1767=com.google.javascript.jscomp.SourceMap$DetailLevel, var595=r2, var3115=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var456=r3, var2454=com.google.javascript.jscomp.CodeConsumer, var920=$r1, var951=1024, var1039=$z1, var2430=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2245=$i1, var3504=java.util.ArrayDeque, var485=$r4, var1788=java.util.Deque, var1436=java.util.ArrayList, var2044=$r5, var3462=java.util.List, var3616=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var2436, r0=var1853, i0=var3155, z0=var1431, com.google.javascript.jscomp.SourceMap$DetailLevel=var1767, r2=var595, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var3115, r3=var456, com.google.javascript.jscomp.CodeConsumer=var2454, $r1=var920, 1024=var951, $z1=var1039, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2430, $i1=var2245, java.util.ArrayDeque=var3504, $r4=var485, java.util.Deque=var1788, java.util.ArrayList=var1436, $r5=var2044, java.util.List=var3462, $r6=var3616}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1844 0)
(declare-sort var3019 0)
(declare-sort var909 0)
(declare-sort var3381 0)
(declare-sort var1778 0)
(declare-sort var2289 0)
(declare-sort var2014 0)
(declare-sort var3435 0)
(declare-sort var2127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var3381) void)
(declare-fun cast-from-var1844-to-var3381 (var1844) var3381)
(declare-fun firstCandidateMappingForCut/-862103770 (var1844) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var1844) String)
(declare-fun lineLength/-862103770 (var1844) Int)
(declare-fun lineIndex/-862103770 (var1844) Int)
(declare-fun var1778_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var1844) Int)
(declare-fun createSrcMap/-862103770 (var1844) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var1844) var3019)
(declare-fun cast-from-var2289-to-var2014 (var2289) var2014)
(declare-fun mappings/-862103770 (var1844) var2014)
(declare-fun var3435-init () var3435)
(declare-fun <init>/-325640736 (var3435) void)
(declare-fun cast-from-var3435-to-var2127 (var3435) var2127)
(declare-fun allMappings/-862103770 (var1844) var2127)
(declare-fun completeMappings/-862103770 (var1844) var2127)
(declare-fun licenseTracker/-862103770 (var1844) var909)
(declare-const null-var1844 var1844)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3019 var3019)
(declare-const null-var909 var909)
(declare-const null-var2289 var2289)
(declare-const null-var3435 var3435)
(declare-const var3106 var1844) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var3106 null-var1844)))
(declare-const var1680 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1680 null-Int)))
(declare-const var3739 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3739 null-Bool)))
(declare-const var3572 var3019) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var3572 null-var3019)))
(declare-const var3455 var909) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var3455 null-var909)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var1844-to-var3381 var3106))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var3106!1 var1844)
(declare-const var3106!2 var1844)
(assert (not (= var3106!2 null-var1844)))
(assert (= (firstCandidateMappingForCut/-862103770 var3106!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var1579 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1579 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var1579!1 String)
(declare-const var185 Int)
(declare-const var3106!3 var1844)
(assert (not (= var3106!3 null-var1844)))
(assert (= (code/-862103770 var3106!3) var1579!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var3106!4 var1844)
(assert (not (= var3106!4 null-var1844)))
(assert (= (lineLength/-862103770 var3106!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var3106!5 var1844)
(assert (not (= var3106!5 null-var1844)))
(assert (= (lineIndex/-862103770 var3106!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var3572 null-var3019)) ; Cond: r2 == null 
(define-const var1573 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var1778_checkState/1431124798 var1573)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var1573!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var1680 0))) ; Negate: Cond: i0 > 0  
(define-const var980 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var3106!6 var1844)
(assert (not (= var3106!6 null-var1844)))
(assert (= (lineLengthThreshold/-862103770 var3106!6) var980)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var3106!7 var1844)
(assert (not (= var3106!7 null-var1844)))
(assert (= (createSrcMap/-862103770 var3106!7) var3739)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var3106!8 var1844)
(assert (not (= var3106!8 null-var1844)))
(assert (= (sourceMapDetailLevel/-862103770 var3106!8) var3572)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var3739 1 0) 0)) ; Cond: z0 == 0 
(define-const var7 var2289 null-var2289) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var3106!9 var1844)
(assert (not (= var3106!9 null-var1844)))
(assert (= (mappings/-862103770 var3106!9) (cast-from-var2289-to-var2014 var7))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var3739 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1638 var3435 var3435-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1638)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var1638!1 var3435)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var3106!10 var1844)
(assert (not (= var3106!10 null-var1844)))
(assert (= (allMappings/-862103770 var3106!10) (cast-from-var3435-to-var2127 var1638!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var3739 1 0) 0)) ; Cond: z0 == 0 
(define-const var164 var3435 null-var3435) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var3106!11 var1844)
(assert (not (= var3106!11 null-var1844)))
(assert (= (completeMappings/-862103770 var3106!11) (cast-from-var3435-to-var2127 var164))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var3106!12 var1844)
(assert (not (= var3106!12 null-var1844)))
(assert (= (licenseTracker/-862103770 var3106!12) var3455)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var1844-to-var3381=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var1778_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var2289-to-var2014=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var3435-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var3435-to-var2127=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var1844=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var3106=r0, var1680=i0, var3739=z0, var3019=com.google.javascript.jscomp.SourceMap$DetailLevel, var3572=r2, var909=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var3455=r3, var3381=com.google.javascript.jscomp.CodeConsumer, var1579=$r1, var185=1024, var1573=$z1, var1778=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var980=$i1, var2289=java.util.ArrayDeque, var7=$r4, var2014=java.util.Deque, var3435=java.util.ArrayList, var1638=$r5, var2127=java.util.List, var164=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var1844, r0=var3106, i0=var1680, z0=var3739, com.google.javascript.jscomp.SourceMap$DetailLevel=var3019, r2=var3572, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var909, r3=var3455, com.google.javascript.jscomp.CodeConsumer=var3381, $r1=var1579, 1024=var185, $z1=var1573, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1778, $i1=var980, java.util.ArrayDeque=var2289, $r4=var7, java.util.Deque=var2014, java.util.ArrayList=var3435, $r5=var1638, java.util.List=var2127, $r6=var164}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
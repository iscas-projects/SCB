(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2116 0)
(declare-sort var2589 0)
(declare-sort var627 0)
(declare-sort var726 0)
(declare-sort var1729 0)
(declare-sort var1580 0)
(declare-sort var1994 0)
(declare-sort var2864 0)
(declare-sort var121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var726) void)
(declare-fun cast-from-var2116-to-var726 (var2116) var726)
(declare-fun firstCandidateMappingForCut/-862103770 (var2116) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var2116) String)
(declare-fun lineLength/-862103770 (var2116) Int)
(declare-fun lineIndex/-862103770 (var2116) Int)
(declare-fun var1729_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var2116) Int)
(declare-fun createSrcMap/-862103770 (var2116) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var2116) var2589)
(declare-fun var1580-init () var1580)
(declare-fun <init>/-1300283768 (var1580) void)
(declare-fun cast-from-var1580-to-var1994 (var1580) var1994)
(declare-fun mappings/-862103770 (var2116) var1994)
(declare-fun cast-from-var2864-to-var121 (var2864) var121)
(declare-fun allMappings/-862103770 (var2116) var121)
(declare-fun completeMappings/-862103770 (var2116) var121)
(declare-fun licenseTracker/-862103770 (var2116) var627)
(declare-const null-var2116 var2116)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var2589 var2589)
(declare-const null-var627 var627)
(declare-const null-var2864 var2864)
(declare-const var2022 var2116) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var2022 null-var2116)))
(declare-const var570 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var570 null-Int)))
(declare-const var253 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var253 null-Bool)))
(declare-const var3538 var2589) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var3538 null-var2589)))
(declare-const var2253 var627) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var2253 null-var627)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var2116-to-var726 var2022))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var2022!1 var2116)
(declare-const var2022!2 var2116)
(assert (not (= var2022!2 null-var2116)))
(assert (= (firstCandidateMappingForCut/-862103770 var2022!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var536 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var536 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var536!1 String)
(declare-const var1787 Int)
(declare-const var2022!3 var2116)
(assert (not (= var2022!3 null-var2116)))
(assert (= (code/-862103770 var2022!3) var536!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var2022!4 var2116)
(assert (not (= var2022!4 null-var2116)))
(assert (= (lineLength/-862103770 var2022!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var2022!5 var2116)
(assert (not (= var2022!5 null-var2116)))
(assert (= (lineIndex/-862103770 var2022!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var3538 null-var2589)) ; Cond: r2 == null 
(define-const var3291 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var1729_checkState/1431124798 var3291)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var3291!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var570 0))) ; Negate: Cond: i0 > 0  
(define-const var3706 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var2022!6 var2116)
(assert (not (= var2022!6 null-var2116)))
(assert (= (lineLengthThreshold/-862103770 var2022!6) var3706)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var2022!7 var2116)
(assert (not (= var2022!7 null-var2116)))
(assert (= (createSrcMap/-862103770 var2022!7) var253)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var2022!8 var2116)
(assert (not (= var2022!8 null-var2116)))
(assert (= (sourceMapDetailLevel/-862103770 var2022!8) var3538)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var253 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3471 var1580 var1580-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var3471)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var3471!1 var1580)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var2022!9 var2116)
(assert (not (= var2022!9 null-var2116)))
(assert (= (mappings/-862103770 var2022!9) (cast-from-var1580-to-var1994 var3471!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var253 1 0) 0)) ; Cond: z0 == 0 
(define-const var2610 var2864 null-var2864) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var2022!10 var2116)
(assert (not (= var2022!10 null-var2116)))
(assert (= (allMappings/-862103770 var2022!10) (cast-from-var2864-to-var121 var2610))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var253 1 0) 0)) ; Cond: z0 == 0 
(define-const var2485 var2864 null-var2864) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var2022!11 var2116)
(assert (not (= var2022!11 null-var2116)))
(assert (= (completeMappings/-862103770 var2022!11) (cast-from-var2864-to-var121 var2485))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var2022!12 var2116)
(assert (not (= var2022!12 null-var2116)))
(assert (= (licenseTracker/-862103770 var2022!12) var2253)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var2116-to-var726=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var1729_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var1580-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var1580-to-var1994=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var2864-to-var121=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var2116=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var2022=r0, var570=i0, var253=z0, var2589=com.google.javascript.jscomp.SourceMap$DetailLevel, var3538=r2, var627=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var2253=r3, var726=com.google.javascript.jscomp.CodeConsumer, var536=$r1, var1787=1024, var3291=$z1, var1729=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3706=$i1, var1580=java.util.ArrayDeque, var3471=$r4, var1994=java.util.Deque, var2864=java.util.ArrayList, var2610=$r5, var121=java.util.List, var2485=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var2116, r0=var2022, i0=var570, z0=var253, com.google.javascript.jscomp.SourceMap$DetailLevel=var2589, r2=var3538, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var627, r3=var2253, com.google.javascript.jscomp.CodeConsumer=var726, $r1=var536, 1024=var1787, $z1=var3291, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1729, $i1=var3706, java.util.ArrayDeque=var1580, $r4=var3471, java.util.Deque=var1994, java.util.ArrayList=var2864, $r5=var2610, java.util.List=var121, $r6=var2485}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3979 0)
(declare-sort var2816 0)
(declare-sort var2018 0)
(declare-sort var3543 0)
(declare-sort var2557 0)
(declare-sort var2308 0)
(declare-sort var692 0)
(declare-sort var3822 0)
(declare-sort var3651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var3543) void)
(declare-fun cast-from-var3979-to-var3543 (var3979) var3543)
(declare-fun firstCandidateMappingForCut/-862103770 (var3979) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var3979) String)
(declare-fun lineLength/-862103770 (var3979) Int)
(declare-fun lineIndex/-862103770 (var3979) Int)
(declare-fun var2557_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var3979) Int)
(declare-fun createSrcMap/-862103770 (var3979) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var3979) var2816)
(declare-fun var2308-init () var2308)
(declare-fun <init>/-1300283768 (var2308) void)
(declare-fun cast-from-var2308-to-var692 (var2308) var692)
(declare-fun mappings/-862103770 (var3979) var692)
(declare-fun var3822-init () var3822)
(declare-fun <init>/-325640736 (var3822) void)
(declare-fun cast-from-var3822-to-var3651 (var3822) var3651)
(declare-fun allMappings/-862103770 (var3979) var3651)
(declare-fun completeMappings/-862103770 (var3979) var3651)
(declare-fun licenseTracker/-862103770 (var3979) var2018)
(declare-const null-var3979 var3979)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var2816 var2816)
(declare-const null-var2018 var2018)
(declare-const null-var3822 var3822)
(declare-const var3874 var3979) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var3874 null-var3979)))
(declare-const var2505 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2505 null-Int)))
(declare-const var2575 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2575 null-Bool)))
(declare-const var541 var2816) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var541 null-var2816)))
(declare-const var548 var2018) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var548 null-var2018)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var3979-to-var3543 var3874))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var3874!1 var3979)
(declare-const var3874!2 var3979)
(assert (not (= var3874!2 null-var3979)))
(assert (= (firstCandidateMappingForCut/-862103770 var3874!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var347 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var347 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var347!1 String)
(declare-const var2753 Int)
(declare-const var3874!3 var3979)
(assert (not (= var3874!3 null-var3979)))
(assert (= (code/-862103770 var3874!3) var347!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var3874!4 var3979)
(assert (not (= var3874!4 null-var3979)))
(assert (= (lineLength/-862103770 var3874!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var3874!5 var3979)
(assert (not (= var3874!5 null-var3979)))
(assert (= (lineIndex/-862103770 var3874!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var541 null-var2816)) ; Cond: r2 == null 
(define-const var1365 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var2557_checkState/1431124798 var1365)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var1365!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var2505 0)) ; Cond: i0 > 0 
(define-const var3685 Int var2505) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var3874!6 var3979)
(assert (not (= var3874!6 null-var3979)))
(assert (= (lineLengthThreshold/-862103770 var3874!6) var3685)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var3874!7 var3979)
(assert (not (= var3874!7 null-var3979)))
(assert (= (createSrcMap/-862103770 var3874!7) var2575)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var3874!8 var3979)
(assert (not (= var3874!8 null-var3979)))
(assert (= (sourceMapDetailLevel/-862103770 var3874!8) var541)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var2575 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3906 var2308 var2308-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var3906)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var3906!1 var2308)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var3874!9 var3979)
(assert (not (= var3874!9 null-var3979)))
(assert (= (mappings/-862103770 var3874!9) (cast-from-var2308-to-var692 var3906!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var2575 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1366 var3822 var3822-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1366)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var1366!1 var3822)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var3874!10 var3979)
(assert (not (= var3874!10 null-var3979)))
(assert (= (allMappings/-862103770 var3874!10) (cast-from-var3822-to-var3651 var1366!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var2575 1 0) 0)) ; Cond: z0 == 0 
(define-const var3061 var3822 null-var3822) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var3874!11 var3979)
(assert (not (= var3874!11 null-var3979)))
(assert (= (completeMappings/-862103770 var3874!11) (cast-from-var3822-to-var3651 var3061))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var3874!12 var3979)
(assert (not (= var3874!12 null-var3979)))
(assert (= (licenseTracker/-862103770 var3874!12) var548)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var3979-to-var3543=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var2557_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var2308-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var2308-to-var692=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var3822-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var3822-to-var3651=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var3979=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var3874=r0, var2505=i0, var2575=z0, var2816=com.google.javascript.jscomp.SourceMap$DetailLevel, var541=r2, var2018=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var548=r3, var3543=com.google.javascript.jscomp.CodeConsumer, var347=$r1, var2753=1024, var1365=$z1, var2557=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3685=$i1, var2308=java.util.ArrayDeque, var3906=$r4, var692=java.util.Deque, var3822=java.util.ArrayList, var1366=$r5, var3651=java.util.List, var3061=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var3979, r0=var3874, i0=var2505, z0=var2575, com.google.javascript.jscomp.SourceMap$DetailLevel=var2816, r2=var541, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var2018, r3=var548, com.google.javascript.jscomp.CodeConsumer=var3543, $r1=var347, 1024=var2753, $z1=var1365, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2557, $i1=var3685, java.util.ArrayDeque=var2308, $r4=var3906, java.util.Deque=var692, java.util.ArrayList=var3822, $r5=var1366, java.util.List=var3651, $r6=var3061}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
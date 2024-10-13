(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var76 0)
(declare-sort var449 0)
(declare-sort var609 0)
(declare-sort var3557 0)
(declare-sort var3418 0)
(declare-sort var996 0)
(declare-sort var490 0)
(declare-sort var688 0)
(declare-sort var1605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var3557) void)
(declare-fun cast-from-var76-to-var3557 (var76) var3557)
(declare-fun firstCandidateMappingForCut/-862103770 (var76) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var76) String)
(declare-fun lineLength/-862103770 (var76) Int)
(declare-fun lineIndex/-862103770 (var76) Int)
(declare-fun var3418_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var76) Int)
(declare-fun createSrcMap/-862103770 (var76) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var76) var449)
(declare-fun var996-init () var996)
(declare-fun <init>/-1300283768 (var996) void)
(declare-fun cast-from-var996-to-var490 (var996) var490)
(declare-fun mappings/-862103770 (var76) var490)
(declare-fun cast-from-var688-to-var1605 (var688) var1605)
(declare-fun allMappings/-862103770 (var76) var1605)
(declare-fun var688-init () var688)
(declare-fun <init>/-325640736 (var688) void)
(declare-fun completeMappings/-862103770 (var76) var1605)
(declare-fun licenseTracker/-862103770 (var76) var609)
(declare-const null-var76 var76)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var449 var449)
(declare-const null-var609 var609)
(declare-const null-var688 var688)
(declare-const var2355 var76) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var2355 null-var76)))
(declare-const var3646 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3646 null-Int)))
(declare-const var818 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var818 null-Bool)))
(declare-const var392 var449) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var392 null-var449)))
(declare-const var451 var609) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var451 null-var609)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var76-to-var3557 var2355))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var2355!1 var76)
(declare-const var2355!2 var76)
(assert (not (= var2355!2 null-var76)))
(assert (= (firstCandidateMappingForCut/-862103770 var2355!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var3610 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3610 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var3610!1 String)
(declare-const var2352 Int)
(declare-const var2355!3 var76)
(assert (not (= var2355!3 null-var76)))
(assert (= (code/-862103770 var2355!3) var3610!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var2355!4 var76)
(assert (not (= var2355!4 null-var76)))
(assert (= (lineLength/-862103770 var2355!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var2355!5 var76)
(assert (not (= var2355!5 null-var76)))
(assert (= (lineIndex/-862103770 var2355!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var392 null-var449)) ; Cond: r2 == null 
(define-const var966 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var3418_checkState/1431124798 var966)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var966!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var3646 0)) ; Cond: i0 > 0 
(define-const var2849 Int var3646) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var2355!6 var76)
(assert (not (= var2355!6 null-var76)))
(assert (= (lineLengthThreshold/-862103770 var2355!6) var2849)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var2355!7 var76)
(assert (not (= var2355!7 null-var76)))
(assert (= (createSrcMap/-862103770 var2355!7) var818)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var2355!8 var76)
(assert (not (= var2355!8 null-var76)))
(assert (= (sourceMapDetailLevel/-862103770 var2355!8) var392)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var818 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3337 var996 var996-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var3337)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var3337!1 var996)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var2355!9 var76)
(assert (not (= var2355!9 null-var76)))
(assert (= (mappings/-862103770 var2355!9) (cast-from-var996-to-var490 var3337!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var818 1 0) 0)) ; Cond: z0 == 0 
(define-const var2842 var688 null-var688) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var2355!10 var76)
(assert (not (= var2355!10 null-var76)))
(assert (= (allMappings/-862103770 var2355!10) (cast-from-var688-to-var1605 var2842))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var818 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var360 var688 var688-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var360)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var360!1 var688)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var2355!11 var76)
(assert (not (= var2355!11 null-var76)))
(assert (= (completeMappings/-862103770 var2355!11) (cast-from-var688-to-var1605 var360!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var2355!12 var76)
(assert (not (= var2355!12 null-var76)))
(assert (= (licenseTracker/-862103770 var2355!12) var451)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var76-to-var3557=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var3418_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var996-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var996-to-var490=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var688-to-var1605=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), var688-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var76=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var2355=r0, var3646=i0, var818=z0, var449=com.google.javascript.jscomp.SourceMap$DetailLevel, var392=r2, var609=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var451=r3, var3557=com.google.javascript.jscomp.CodeConsumer, var3610=$r1, var2352=1024, var966=$z1, var3418=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2849=$i1, var996=java.util.ArrayDeque, var3337=$r4, var490=java.util.Deque, var688=java.util.ArrayList, var2842=$r5, var1605=java.util.List, var360=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var76, r0=var2355, i0=var3646, z0=var818, com.google.javascript.jscomp.SourceMap$DetailLevel=var449, r2=var392, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var609, r3=var451, com.google.javascript.jscomp.CodeConsumer=var3557, $r1=var3610, 1024=var2352, $z1=var966, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3418, $i1=var2849, java.util.ArrayDeque=var996, $r4=var3337, java.util.Deque=var490, java.util.ArrayList=var688, $r5=var2842, java.util.List=var1605, $r6=var360}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
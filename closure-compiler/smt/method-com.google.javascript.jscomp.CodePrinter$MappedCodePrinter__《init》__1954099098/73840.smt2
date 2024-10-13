(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3894 0)
(declare-sort var2206 0)
(declare-sort var3899 0)
(declare-sort var3602 0)
(declare-sort var236 0)
(declare-sort var2635 0)
(declare-sort var450 0)
(declare-sort var3650 0)
(declare-sort var2398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var3602) void)
(declare-fun cast-from-var3894-to-var3602 (var3894) var3602)
(declare-fun firstCandidateMappingForCut/-862103770 (var3894) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var3894) String)
(declare-fun lineLength/-862103770 (var3894) Int)
(declare-fun lineIndex/-862103770 (var3894) Int)
(declare-fun var236_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var3894) Int)
(declare-fun createSrcMap/-862103770 (var3894) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var3894) var2206)
(declare-fun cast-from-var2635-to-var450 (var2635) var450)
(declare-fun mappings/-862103770 (var3894) var450)
(declare-fun var3650-init () var3650)
(declare-fun <init>/-325640736 (var3650) void)
(declare-fun cast-from-var3650-to-var2398 (var3650) var2398)
(declare-fun allMappings/-862103770 (var3894) var2398)
(declare-fun completeMappings/-862103770 (var3894) var2398)
(declare-fun licenseTracker/-862103770 (var3894) var3899)
(declare-const null-var3894 var3894)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var2206 var2206)
(declare-const null-var3899 var3899)
(declare-const null-var2635 var2635)
(declare-const null-var3650 var3650)
(declare-const var2872 var3894) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var2872 null-var3894)))
(declare-const var3232 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3232 null-Int)))
(declare-const var227 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var227 null-Bool)))
(declare-const var3292 var2206) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var3292 null-var2206)))
(declare-const var861 var3899) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var861 null-var3899)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var3894-to-var3602 var2872))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var2872!1 var3894)
(declare-const var2872!2 var3894)
(assert (not (= var2872!2 null-var3894)))
(assert (= (firstCandidateMappingForCut/-862103770 var2872!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var2347 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2347 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var2347!1 String)
(declare-const var3048 Int)
(declare-const var2872!3 var3894)
(assert (not (= var2872!3 null-var3894)))
(assert (= (code/-862103770 var2872!3) var2347!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var2872!4 var3894)
(assert (not (= var2872!4 null-var3894)))
(assert (= (lineLength/-862103770 var2872!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var2872!5 var3894)
(assert (not (= var2872!5 null-var3894)))
(assert (= (lineIndex/-862103770 var2872!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var3292 null-var2206))) ; Negate: Cond: r2 == null  
(define-const var458 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var236_checkState/1431124798 var458)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var458!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var3232 0)) ; Cond: i0 > 0 
(define-const var3043 Int var3232) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var2872!6 var3894)
(assert (not (= var2872!6 null-var3894)))
(assert (= (lineLengthThreshold/-862103770 var2872!6) var3043)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var2872!7 var3894)
(assert (not (= var2872!7 null-var3894)))
(assert (= (createSrcMap/-862103770 var2872!7) var227)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var2872!8 var3894)
(assert (not (= var2872!8 null-var3894)))
(assert (= (sourceMapDetailLevel/-862103770 var2872!8) var3292)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var227 1 0) 0)) ; Cond: z0 == 0 
(define-const var596 var2635 null-var2635) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var2872!9 var3894)
(assert (not (= var2872!9 null-var3894)))
(assert (= (mappings/-862103770 var2872!9) (cast-from-var2635-to-var450 var596))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var227 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3695 var3650 var3650-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3695)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var3695!1 var3650)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var2872!10 var3894)
(assert (not (= var2872!10 null-var3894)))
(assert (= (allMappings/-862103770 var2872!10) (cast-from-var3650-to-var2398 var3695!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var227 1 0) 0)) ; Cond: z0 == 0 
(define-const var979 var3650 null-var3650) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var2872!11 var3894)
(assert (not (= var2872!11 null-var3894)))
(assert (= (completeMappings/-862103770 var2872!11) (cast-from-var3650-to-var2398 var979))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var2872!12 var3894)
(assert (not (= var2872!12 null-var3894)))
(assert (= (licenseTracker/-862103770 var2872!12) var861)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var3894-to-var3602=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var236_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var2635-to-var450=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var3650-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var3650-to-var2398=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var3894=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var2872=r0, var3232=i0, var227=z0, var2206=com.google.javascript.jscomp.SourceMap$DetailLevel, var3292=r2, var3899=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var861=r3, var3602=com.google.javascript.jscomp.CodeConsumer, var2347=$r1, var3048=1024, var458=$z1, var236=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3043=$i1, var2635=java.util.ArrayDeque, var596=$r4, var450=java.util.Deque, var3650=java.util.ArrayList, var3695=$r5, var2398=java.util.List, var979=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var3894, r0=var2872, i0=var3232, z0=var227, com.google.javascript.jscomp.SourceMap$DetailLevel=var2206, r2=var3292, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var3899, r3=var861, com.google.javascript.jscomp.CodeConsumer=var3602, $r1=var2347, 1024=var3048, $z1=var458, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var236, $i1=var3043, java.util.ArrayDeque=var2635, $r4=var596, java.util.Deque=var450, java.util.ArrayList=var3650, $r5=var3695, java.util.List=var2398, $r6=var979}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
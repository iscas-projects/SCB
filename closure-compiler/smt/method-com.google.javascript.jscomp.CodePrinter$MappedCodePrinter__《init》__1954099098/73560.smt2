(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2285 0)
(declare-sort var84 0)
(declare-sort var231 0)
(declare-sort var1329 0)
(declare-sort var2301 0)
(declare-sort var2567 0)
(declare-sort var2680 0)
(declare-sort var299 0)
(declare-sort var3279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var1329) void)
(declare-fun cast-from-var2285-to-var1329 (var2285) var1329)
(declare-fun firstCandidateMappingForCut/-862103770 (var2285) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var2285) String)
(declare-fun lineLength/-862103770 (var2285) Int)
(declare-fun lineIndex/-862103770 (var2285) Int)
(declare-fun var2301_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var2285) Int)
(declare-fun createSrcMap/-862103770 (var2285) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var2285) var84)
(declare-fun var2567-init () var2567)
(declare-fun <init>/-1300283768 (var2567) void)
(declare-fun cast-from-var2567-to-var2680 (var2567) var2680)
(declare-fun mappings/-862103770 (var2285) var2680)
(declare-fun var299-init () var299)
(declare-fun <init>/-325640736 (var299) void)
(declare-fun cast-from-var299-to-var3279 (var299) var3279)
(declare-fun allMappings/-862103770 (var2285) var3279)
(declare-fun completeMappings/-862103770 (var2285) var3279)
(declare-fun licenseTracker/-862103770 (var2285) var231)
(declare-const null-var2285 var2285)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var84 var84)
(declare-const null-var231 var231)
(declare-const null-var299 var299)
(declare-const var2199 var2285) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var2199 null-var2285)))
(declare-const var2564 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2564 null-Int)))
(declare-const var3887 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3887 null-Bool)))
(declare-const var166 var84) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var166 null-var84)))
(declare-const var3019 var231) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var3019 null-var231)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var2285-to-var1329 var2199))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var2199!1 var2285)
(declare-const var2199!2 var2285)
(assert (not (= var2199!2 null-var2285)))
(assert (= (firstCandidateMappingForCut/-862103770 var2199!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var3528 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3528 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var3528!1 String)
(declare-const var959 Int)
(declare-const var2199!3 var2285)
(assert (not (= var2199!3 null-var2285)))
(assert (= (code/-862103770 var2199!3) var3528!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var2199!4 var2285)
(assert (not (= var2199!4 null-var2285)))
(assert (= (lineLength/-862103770 var2199!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var2199!5 var2285)
(assert (not (= var2199!5 null-var2285)))
(assert (= (lineIndex/-862103770 var2199!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var166 null-var84))) ; Negate: Cond: r2 == null  
(define-const var1096 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var2301_checkState/1431124798 var1096)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var1096!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var2564 0))) ; Negate: Cond: i0 > 0  
(define-const var2811 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var2199!6 var2285)
(assert (not (= var2199!6 null-var2285)))
(assert (= (lineLengthThreshold/-862103770 var2199!6) var2811)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var2199!7 var2285)
(assert (not (= var2199!7 null-var2285)))
(assert (= (createSrcMap/-862103770 var2199!7) var3887)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var2199!8 var2285)
(assert (not (= var2199!8 null-var2285)))
(assert (= (sourceMapDetailLevel/-862103770 var2199!8) var166)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var3887 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var165 var2567 var2567-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var165)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var165!1 var2567)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var2199!9 var2285)
(assert (not (= var2199!9 null-var2285)))
(assert (= (mappings/-862103770 var2199!9) (cast-from-var2567-to-var2680 var165!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var3887 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3463 var299 var299-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3463)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var3463!1 var299)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var2199!10 var2285)
(assert (not (= var2199!10 null-var2285)))
(assert (= (allMappings/-862103770 var2199!10) (cast-from-var299-to-var3279 var3463!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var3887 1 0) 0)) ; Cond: z0 == 0 
(define-const var1837 var299 null-var299) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var2199!11 var2285)
(assert (not (= var2199!11 null-var2285)))
(assert (= (completeMappings/-862103770 var2199!11) (cast-from-var299-to-var3279 var1837))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var2199!12 var2285)
(assert (not (= var2199!12 null-var2285)))
(assert (= (licenseTracker/-862103770 var2199!12) var3019)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var2285-to-var1329=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var2301_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var2567-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var2567-to-var2680=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var299-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var299-to-var3279=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var2285=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var2199=r0, var2564=i0, var3887=z0, var84=com.google.javascript.jscomp.SourceMap$DetailLevel, var166=r2, var231=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var3019=r3, var1329=com.google.javascript.jscomp.CodeConsumer, var3528=$r1, var959=1024, var1096=$z1, var2301=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2811=$i1, var2567=java.util.ArrayDeque, var165=$r4, var2680=java.util.Deque, var299=java.util.ArrayList, var3463=$r5, var3279=java.util.List, var1837=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var2285, r0=var2199, i0=var2564, z0=var3887, com.google.javascript.jscomp.SourceMap$DetailLevel=var84, r2=var166, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var231, r3=var3019, com.google.javascript.jscomp.CodeConsumer=var1329, $r1=var3528, 1024=var959, $z1=var1096, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2301, $i1=var2811, java.util.ArrayDeque=var2567, $r4=var165, java.util.Deque=var2680, java.util.ArrayList=var299, $r5=var3463, java.util.List=var3279, $r6=var1837}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
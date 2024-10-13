(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var14 0)
(declare-sort var1688 0)
(declare-sort var459 0)
(declare-sort var1785 0)
(declare-sort var2922 0)
(declare-sort var1482 0)
(declare-sort var2677 0)
(declare-sort var1280 0)
(declare-sort var1979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var1785) void)
(declare-fun cast-from-var14-to-var1785 (var14) var1785)
(declare-fun firstCandidateMappingForCut/-862103770 (var14) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var14) String)
(declare-fun lineLength/-862103770 (var14) Int)
(declare-fun lineIndex/-862103770 (var14) Int)
(declare-fun var2922_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var14) Int)
(declare-fun createSrcMap/-862103770 (var14) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var14) var1688)
(declare-fun var1482-init () var1482)
(declare-fun <init>/-1300283768 (var1482) void)
(declare-fun cast-from-var1482-to-var2677 (var1482) var2677)
(declare-fun mappings/-862103770 (var14) var2677)
(declare-fun var1280-init () var1280)
(declare-fun <init>/-325640736 (var1280) void)
(declare-fun cast-from-var1280-to-var1979 (var1280) var1979)
(declare-fun allMappings/-862103770 (var14) var1979)
(declare-fun completeMappings/-862103770 (var14) var1979)
(declare-fun licenseTracker/-862103770 (var14) var459)
(declare-const null-var14 var14)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var1688 var1688)
(declare-const null-var459 var459)
(declare-const var1201 var14) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var1201 null-var14)))
(declare-const var744 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var744 null-Int)))
(declare-const var5 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var5 null-Bool)))
(declare-const var1839 var1688) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var1839 null-var1688)))
(declare-const var3299 var459) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var3299 null-var459)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var14-to-var1785 var1201))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var1201!1 var14)
(declare-const var1201!2 var14)
(assert (not (= var1201!2 null-var14)))
(assert (= (firstCandidateMappingForCut/-862103770 var1201!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var2883 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2883 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var2883!1 String)
(declare-const var600 Int)
(declare-const var1201!3 var14)
(assert (not (= var1201!3 null-var14)))
(assert (= (code/-862103770 var1201!3) var2883!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var1201!4 var14)
(assert (not (= var1201!4 null-var14)))
(assert (= (lineLength/-862103770 var1201!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var1201!5 var14)
(assert (not (= var1201!5 null-var14)))
(assert (= (lineIndex/-862103770 var1201!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var1839 null-var1688)) ; Cond: r2 == null 
(define-const var3815 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var2922_checkState/1431124798 var3815)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var3815!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var744 0)) ; Cond: i0 > 0 
(define-const var533 Int var744) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var1201!6 var14)
(assert (not (= var1201!6 null-var14)))
(assert (= (lineLengthThreshold/-862103770 var1201!6) var533)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var1201!7 var14)
(assert (not (= var1201!7 null-var14)))
(assert (= (createSrcMap/-862103770 var1201!7) var5)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var1201!8 var14)
(assert (not (= var1201!8 null-var14)))
(assert (= (sourceMapDetailLevel/-862103770 var1201!8) var1839)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var5 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var75 var1482 var1482-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var75)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var75!1 var1482)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var1201!9 var14)
(assert (not (= var1201!9 null-var14)))
(assert (= (mappings/-862103770 var1201!9) (cast-from-var1482-to-var2677 var75!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var5 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var873 var1280 var1280-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var873)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var873!1 var1280)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var1201!10 var14)
(assert (not (= var1201!10 null-var14)))
(assert (= (allMappings/-862103770 var1201!10) (cast-from-var1280-to-var1979 var873!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var5 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1317 var1280 var1280-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1317)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var1317!1 var1280)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var1201!11 var14)
(assert (not (= var1201!11 null-var14)))
(assert (= (completeMappings/-862103770 var1201!11) (cast-from-var1280-to-var1979 var1317!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var1201!12 var14)
(assert (not (= var1201!12 null-var14)))
(assert (= (licenseTracker/-862103770 var1201!12) var3299)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var14-to-var1785=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var2922_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var1482-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var1482-to-var2677=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var1280-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var1280-to-var1979=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var14=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var1201=r0, var744=i0, var5=z0, var1688=com.google.javascript.jscomp.SourceMap$DetailLevel, var1839=r2, var459=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var3299=r3, var1785=com.google.javascript.jscomp.CodeConsumer, var2883=$r1, var600=1024, var3815=$z1, var2922=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var533=$i1, var1482=java.util.ArrayDeque, var75=$r4, var2677=java.util.Deque, var1280=java.util.ArrayList, var873=$r5, var1979=java.util.List, var1317=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var14, r0=var1201, i0=var744, z0=var5, com.google.javascript.jscomp.SourceMap$DetailLevel=var1688, r2=var1839, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var459, r3=var3299, com.google.javascript.jscomp.CodeConsumer=var1785, $r1=var2883, 1024=var600, $z1=var3815, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2922, $i1=var533, java.util.ArrayDeque=var1482, $r4=var75, java.util.Deque=var2677, java.util.ArrayList=var1280, $r5=var873, java.util.List=var1979, $r6=var1317}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
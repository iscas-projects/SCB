(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var143 0)
(declare-sort var537 0)
(declare-sort var2478 0)
(declare-sort var2014 0)
(declare-sort var2479 0)
(declare-sort var984 0)
(declare-sort var671 0)
(declare-sort var2431 0)
(declare-sort var1886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var2014) void)
(declare-fun cast-from-var143-to-var2014 (var143) var2014)
(declare-fun firstCandidateMappingForCut/-862103770 (var143) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var143) String)
(declare-fun lineLength/-862103770 (var143) Int)
(declare-fun lineIndex/-862103770 (var143) Int)
(declare-fun var2479_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var143) Int)
(declare-fun createSrcMap/-862103770 (var143) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var143) var537)
(declare-fun var984-init () var984)
(declare-fun <init>/-1300283768 (var984) void)
(declare-fun cast-from-var984-to-var671 (var984) var671)
(declare-fun mappings/-862103770 (var143) var671)
(declare-fun cast-from-var2431-to-var1886 (var2431) var1886)
(declare-fun allMappings/-862103770 (var143) var1886)
(declare-fun var2431-init () var2431)
(declare-fun <init>/-325640736 (var2431) void)
(declare-fun completeMappings/-862103770 (var143) var1886)
(declare-fun licenseTracker/-862103770 (var143) var2478)
(declare-const null-var143 var143)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var537 var537)
(declare-const null-var2478 var2478)
(declare-const null-var2431 var2431)
(declare-const var417 var143) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var417 null-var143)))
(declare-const var2480 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2480 null-Int)))
(declare-const var177 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var177 null-Bool)))
(declare-const var325 var537) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var325 null-var537)))
(declare-const var2219 var2478) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var2219 null-var2478)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var143-to-var2014 var417))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var417!1 var143)
(declare-const var417!2 var143)
(assert (not (= var417!2 null-var143)))
(assert (= (firstCandidateMappingForCut/-862103770 var417!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var879 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var879 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var879!1 String)
(declare-const var164 Int)
(declare-const var417!3 var143)
(assert (not (= var417!3 null-var143)))
(assert (= (code/-862103770 var417!3) var879!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var417!4 var143)
(assert (not (= var417!4 null-var143)))
(assert (= (lineLength/-862103770 var417!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var417!5 var143)
(assert (not (= var417!5 null-var143)))
(assert (= (lineIndex/-862103770 var417!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var325 null-var537)) ; Cond: r2 == null 
(define-const var1006 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var2479_checkState/1431124798 var1006)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var1006!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var2480 0))) ; Negate: Cond: i0 > 0  
(define-const var3225 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var417!6 var143)
(assert (not (= var417!6 null-var143)))
(assert (= (lineLengthThreshold/-862103770 var417!6) var3225)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var417!7 var143)
(assert (not (= var417!7 null-var143)))
(assert (= (createSrcMap/-862103770 var417!7) var177)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var417!8 var143)
(assert (not (= var417!8 null-var143)))
(assert (= (sourceMapDetailLevel/-862103770 var417!8) var325)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var177 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3920 var984 var984-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var3920)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var3920!1 var984)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var417!9 var143)
(assert (not (= var417!9 null-var143)))
(assert (= (mappings/-862103770 var417!9) (cast-from-var984-to-var671 var3920!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var177 1 0) 0)) ; Cond: z0 == 0 
(define-const var1435 var2431 null-var2431) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var417!10 var143)
(assert (not (= var417!10 null-var143)))
(assert (= (allMappings/-862103770 var417!10) (cast-from-var2431-to-var1886 var1435))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var177 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2687 var2431 var2431-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2687)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var2687!1 var2431)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var417!11 var143)
(assert (not (= var417!11 null-var143)))
(assert (= (completeMappings/-862103770 var417!11) (cast-from-var2431-to-var1886 var2687!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var417!12 var143)
(assert (not (= var417!12 null-var143)))
(assert (= (licenseTracker/-862103770 var417!12) var2219)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var143-to-var2014=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var2479_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var984-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var984-to-var671=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var2431-to-var1886=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), var2431-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var143=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var417=r0, var2480=i0, var177=z0, var537=com.google.javascript.jscomp.SourceMap$DetailLevel, var325=r2, var2478=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var2219=r3, var2014=com.google.javascript.jscomp.CodeConsumer, var879=$r1, var164=1024, var1006=$z1, var2479=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3225=$i1, var984=java.util.ArrayDeque, var3920=$r4, var671=java.util.Deque, var2431=java.util.ArrayList, var1435=$r5, var1886=java.util.List, var2687=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var143, r0=var417, i0=var2480, z0=var177, com.google.javascript.jscomp.SourceMap$DetailLevel=var537, r2=var325, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var2478, r3=var2219, com.google.javascript.jscomp.CodeConsumer=var2014, $r1=var879, 1024=var164, $z1=var1006, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2479, $i1=var3225, java.util.ArrayDeque=var984, $r4=var3920, java.util.Deque=var671, java.util.ArrayList=var2431, $r5=var1435, java.util.List=var1886, $r6=var2687}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
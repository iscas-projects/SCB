(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1878 0)
(declare-sort var876 0)
(declare-sort var257 0)
(declare-sort var2884 0)
(declare-sort var249 0)
(declare-sort var3536 0)
(declare-sort var670 0)
(declare-sort var3390 0)
(declare-sort var573 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var2884) void)
(declare-fun cast-from-var1878-to-var2884 (var1878) var2884)
(declare-fun firstCandidateMappingForCut/-862103770 (var1878) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var1878) String)
(declare-fun lineLength/-862103770 (var1878) Int)
(declare-fun lineIndex/-862103770 (var1878) Int)
(declare-fun var249_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var1878) Int)
(declare-fun createSrcMap/-862103770 (var1878) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var1878) var876)
(declare-fun var3536-init () var3536)
(declare-fun <init>/-1300283768 (var3536) void)
(declare-fun cast-from-var3536-to-var670 (var3536) var670)
(declare-fun mappings/-862103770 (var1878) var670)
(declare-fun cast-from-var3390-to-var573 (var3390) var573)
(declare-fun allMappings/-862103770 (var1878) var573)
(declare-fun var3390-init () var3390)
(declare-fun <init>/-325640736 (var3390) void)
(declare-fun completeMappings/-862103770 (var1878) var573)
(declare-fun licenseTracker/-862103770 (var1878) var257)
(declare-const null-var1878 var1878)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var876 var876)
(declare-const null-var257 var257)
(declare-const null-var3390 var3390)
(declare-const var587 var1878) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var587 null-var1878)))
(declare-const var1829 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1829 null-Int)))
(declare-const var1342 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1342 null-Bool)))
(declare-const var1450 var876) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var1450 null-var876)))
(declare-const var683 var257) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var683 null-var257)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var1878-to-var2884 var587))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var587!1 var1878)
(declare-const var587!2 var1878)
(assert (not (= var587!2 null-var1878)))
(assert (= (firstCandidateMappingForCut/-862103770 var587!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var3203 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3203 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var3203!1 String)
(declare-const var726 Int)
(declare-const var587!3 var1878)
(assert (not (= var587!3 null-var1878)))
(assert (= (code/-862103770 var587!3) var3203!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var587!4 var1878)
(assert (not (= var587!4 null-var1878)))
(assert (= (lineLength/-862103770 var587!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var587!5 var1878)
(assert (not (= var587!5 null-var1878)))
(assert (= (lineIndex/-862103770 var587!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var1450 null-var876))) ; Negate: Cond: r2 == null  
(define-const var370 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var249_checkState/1431124798 var370)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var370!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var1829 0))) ; Negate: Cond: i0 > 0  
(define-const var2007 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var587!6 var1878)
(assert (not (= var587!6 null-var1878)))
(assert (= (lineLengthThreshold/-862103770 var587!6) var2007)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var587!7 var1878)
(assert (not (= var587!7 null-var1878)))
(assert (= (createSrcMap/-862103770 var587!7) var1342)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var587!8 var1878)
(assert (not (= var587!8 null-var1878)))
(assert (= (sourceMapDetailLevel/-862103770 var587!8) var1450)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var1342 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1029 var3536 var3536-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var1029)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var1029!1 var3536)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var587!9 var1878)
(assert (not (= var587!9 null-var1878)))
(assert (= (mappings/-862103770 var587!9) (cast-from-var3536-to-var670 var1029!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var1342 1 0) 0)) ; Cond: z0 == 0 
(define-const var2428 var3390 null-var3390) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var587!10 var1878)
(assert (not (= var587!10 null-var1878)))
(assert (= (allMappings/-862103770 var587!10) (cast-from-var3390-to-var573 var2428))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var1342 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2266 var3390 var3390-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2266)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var2266!1 var3390)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var587!11 var1878)
(assert (not (= var587!11 null-var1878)))
(assert (= (completeMappings/-862103770 var587!11) (cast-from-var3390-to-var573 var2266!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var587!12 var1878)
(assert (not (= var587!12 null-var1878)))
(assert (= (licenseTracker/-862103770 var587!12) var683)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var1878-to-var2884=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var249_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var3536-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var3536-to-var670=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var3390-to-var573=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), var3390-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var1878=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var587=r0, var1829=i0, var1342=z0, var876=com.google.javascript.jscomp.SourceMap$DetailLevel, var1450=r2, var257=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var683=r3, var2884=com.google.javascript.jscomp.CodeConsumer, var3203=$r1, var726=1024, var370=$z1, var249=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2007=$i1, var3536=java.util.ArrayDeque, var1029=$r4, var670=java.util.Deque, var3390=java.util.ArrayList, var2428=$r5, var573=java.util.List, var2266=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var1878, r0=var587, i0=var1829, z0=var1342, com.google.javascript.jscomp.SourceMap$DetailLevel=var876, r2=var1450, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var257, r3=var683, com.google.javascript.jscomp.CodeConsumer=var2884, $r1=var3203, 1024=var726, $z1=var370, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var249, $i1=var2007, java.util.ArrayDeque=var3536, $r4=var1029, java.util.Deque=var670, java.util.ArrayList=var3390, $r5=var2428, java.util.List=var573, $r6=var2266}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
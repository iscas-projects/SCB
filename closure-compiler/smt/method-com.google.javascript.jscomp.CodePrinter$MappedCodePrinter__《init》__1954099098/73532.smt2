(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1392 0)
(declare-sort var3620 0)
(declare-sort var2901 0)
(declare-sort var2810 0)
(declare-sort var1676 0)
(declare-sort var1691 0)
(declare-sort var3752 0)
(declare-sort var2763 0)
(declare-sort var2149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var2810) void)
(declare-fun cast-from-var1392-to-var2810 (var1392) var2810)
(declare-fun firstCandidateMappingForCut/-862103770 (var1392) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var1392) String)
(declare-fun lineLength/-862103770 (var1392) Int)
(declare-fun lineIndex/-862103770 (var1392) Int)
(declare-fun var1676_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var1392) Int)
(declare-fun createSrcMap/-862103770 (var1392) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var1392) var3620)
(declare-fun var1691-init () var1691)
(declare-fun <init>/-1300283768 (var1691) void)
(declare-fun cast-from-var1691-to-var3752 (var1691) var3752)
(declare-fun mappings/-862103770 (var1392) var3752)
(declare-fun var2763-init () var2763)
(declare-fun <init>/-325640736 (var2763) void)
(declare-fun cast-from-var2763-to-var2149 (var2763) var2149)
(declare-fun allMappings/-862103770 (var1392) var2149)
(declare-fun completeMappings/-862103770 (var1392) var2149)
(declare-fun licenseTracker/-862103770 (var1392) var2901)
(declare-const null-var1392 var1392)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3620 var3620)
(declare-const null-var2901 var2901)
(declare-const var402 var1392) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var402 null-var1392)))
(declare-const var763 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var763 null-Int)))
(declare-const var2782 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2782 null-Bool)))
(declare-const var1821 var3620) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var1821 null-var3620)))
(declare-const var1479 var2901) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var1479 null-var2901)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var1392-to-var2810 var402))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var402!1 var1392)
(declare-const var402!2 var1392)
(assert (not (= var402!2 null-var1392)))
(assert (= (firstCandidateMappingForCut/-862103770 var402!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var975 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var975 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var975!1 String)
(declare-const var2473 Int)
(declare-const var402!3 var1392)
(assert (not (= var402!3 null-var1392)))
(assert (= (code/-862103770 var402!3) var975!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var402!4 var1392)
(assert (not (= var402!4 null-var1392)))
(assert (= (lineLength/-862103770 var402!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var402!5 var1392)
(assert (not (= var402!5 null-var1392)))
(assert (= (lineIndex/-862103770 var402!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var1821 null-var3620))) ; Negate: Cond: r2 == null  
(define-const var515 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var1676_checkState/1431124798 var515)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var515!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var763 0))) ; Negate: Cond: i0 > 0  
(define-const var1627 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var402!6 var1392)
(assert (not (= var402!6 null-var1392)))
(assert (= (lineLengthThreshold/-862103770 var402!6) var1627)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var402!7 var1392)
(assert (not (= var402!7 null-var1392)))
(assert (= (createSrcMap/-862103770 var402!7) var2782)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var402!8 var1392)
(assert (not (= var402!8 null-var1392)))
(assert (= (sourceMapDetailLevel/-862103770 var402!8) var1821)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var2782 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3814 var1691 var1691-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var3814)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var3814!1 var1691)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var402!9 var1392)
(assert (not (= var402!9 null-var1392)))
(assert (= (mappings/-862103770 var402!9) (cast-from-var1691-to-var3752 var3814!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var2782 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2445 var2763 var2763-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2445)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var2445!1 var2763)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var402!10 var1392)
(assert (not (= var402!10 null-var1392)))
(assert (= (allMappings/-862103770 var402!10) (cast-from-var2763-to-var2149 var2445!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var2782 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1060 var2763 var2763-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1060)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var1060!1 var2763)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var402!11 var1392)
(assert (not (= var402!11 null-var1392)))
(assert (= (completeMappings/-862103770 var402!11) (cast-from-var2763-to-var2149 var1060!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var402!12 var1392)
(assert (not (= var402!12 null-var1392)))
(assert (= (licenseTracker/-862103770 var402!12) var1479)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var1392-to-var2810=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var1676_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var1691-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var1691-to-var3752=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var2763-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var2763-to-var2149=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var1392=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var402=r0, var763=i0, var2782=z0, var3620=com.google.javascript.jscomp.SourceMap$DetailLevel, var1821=r2, var2901=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var1479=r3, var2810=com.google.javascript.jscomp.CodeConsumer, var975=$r1, var2473=1024, var515=$z1, var1676=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1627=$i1, var1691=java.util.ArrayDeque, var3814=$r4, var3752=java.util.Deque, var2763=java.util.ArrayList, var2445=$r5, var2149=java.util.List, var1060=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var1392, r0=var402, i0=var763, z0=var2782, com.google.javascript.jscomp.SourceMap$DetailLevel=var3620, r2=var1821, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var2901, r3=var1479, com.google.javascript.jscomp.CodeConsumer=var2810, $r1=var975, 1024=var2473, $z1=var515, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1676, $i1=var1627, java.util.ArrayDeque=var1691, $r4=var3814, java.util.Deque=var3752, java.util.ArrayList=var2763, $r5=var2445, java.util.List=var2149, $r6=var1060}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
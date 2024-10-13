(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1544 0)
(declare-sort var3873 0)
(declare-sort var97 0)
(declare-sort var914 0)
(declare-sort var1330 0)
(declare-sort var2542 0)
(declare-sort var235 0)
(declare-sort var2258 0)
(declare-sort var1433 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var914) void)
(declare-fun cast-from-var1544-to-var914 (var1544) var914)
(declare-fun firstCandidateMappingForCut/-862103770 (var1544) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var1544) String)
(declare-fun lineLength/-862103770 (var1544) Int)
(declare-fun lineIndex/-862103770 (var1544) Int)
(declare-fun var1330_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var1544) Int)
(declare-fun createSrcMap/-862103770 (var1544) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var1544) var3873)
(declare-fun cast-from-var2542-to-var235 (var2542) var235)
(declare-fun mappings/-862103770 (var1544) var235)
(declare-fun cast-from-var2258-to-var1433 (var2258) var1433)
(declare-fun allMappings/-862103770 (var1544) var1433)
(declare-fun var2258-init () var2258)
(declare-fun <init>/-325640736 (var2258) void)
(declare-fun completeMappings/-862103770 (var1544) var1433)
(declare-fun licenseTracker/-862103770 (var1544) var97)
(declare-const null-var1544 var1544)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3873 var3873)
(declare-const null-var97 var97)
(declare-const null-var2542 var2542)
(declare-const null-var2258 var2258)
(declare-const var3175 var1544) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var3175 null-var1544)))
(declare-const var1582 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1582 null-Int)))
(declare-const var1073 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1073 null-Bool)))
(declare-const var1108 var3873) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var1108 null-var3873)))
(declare-const var3014 var97) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var3014 null-var97)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var1544-to-var914 var3175))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var3175!1 var1544)
(declare-const var3175!2 var1544)
(assert (not (= var3175!2 null-var1544)))
(assert (= (firstCandidateMappingForCut/-862103770 var3175!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var1781 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1781 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var1781!1 String)
(declare-const var683 Int)
(declare-const var3175!3 var1544)
(assert (not (= var3175!3 null-var1544)))
(assert (= (code/-862103770 var3175!3) var1781!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var3175!4 var1544)
(assert (not (= var3175!4 null-var1544)))
(assert (= (lineLength/-862103770 var3175!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var3175!5 var1544)
(assert (not (= var3175!5 null-var1544)))
(assert (= (lineIndex/-862103770 var3175!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var1108 null-var3873)) ; Cond: r2 == null 
(define-const var364 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var1330_checkState/1431124798 var364)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var364!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var1582 0))) ; Negate: Cond: i0 > 0  
(define-const var2879 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var3175!6 var1544)
(assert (not (= var3175!6 null-var1544)))
(assert (= (lineLengthThreshold/-862103770 var3175!6) var2879)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var3175!7 var1544)
(assert (not (= var3175!7 null-var1544)))
(assert (= (createSrcMap/-862103770 var3175!7) var1073)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var3175!8 var1544)
(assert (not (= var3175!8 null-var1544)))
(assert (= (sourceMapDetailLevel/-862103770 var3175!8) var1108)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var1073 1 0) 0)) ; Cond: z0 == 0 
(define-const var147 var2542 null-var2542) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var3175!9 var1544)
(assert (not (= var3175!9 null-var1544)))
(assert (= (mappings/-862103770 var3175!9) (cast-from-var2542-to-var235 var147))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var1073 1 0) 0)) ; Cond: z0 == 0 
(define-const var1917 var2258 null-var2258) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var3175!10 var1544)
(assert (not (= var3175!10 null-var1544)))
(assert (= (allMappings/-862103770 var3175!10) (cast-from-var2258-to-var1433 var1917))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var1073 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1801 var2258 var2258-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1801)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var1801!1 var2258)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var3175!11 var1544)
(assert (not (= var3175!11 null-var1544)))
(assert (= (completeMappings/-862103770 var3175!11) (cast-from-var2258-to-var1433 var1801!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var3175!12 var1544)
(assert (not (= var3175!12 null-var1544)))
(assert (= (licenseTracker/-862103770 var3175!12) var3014)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var1544-to-var914=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var1330_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var2542-to-var235=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var2258-to-var1433=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), var2258-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var1544=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var3175=r0, var1582=i0, var1073=z0, var3873=com.google.javascript.jscomp.SourceMap$DetailLevel, var1108=r2, var97=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var3014=r3, var914=com.google.javascript.jscomp.CodeConsumer, var1781=$r1, var683=1024, var364=$z1, var1330=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2879=$i1, var2542=java.util.ArrayDeque, var147=$r4, var235=java.util.Deque, var2258=java.util.ArrayList, var1917=$r5, var1433=java.util.List, var1801=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var1544, r0=var3175, i0=var1582, z0=var1073, com.google.javascript.jscomp.SourceMap$DetailLevel=var3873, r2=var1108, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var97, r3=var3014, com.google.javascript.jscomp.CodeConsumer=var914, $r1=var1781, 1024=var683, $z1=var364, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1330, $i1=var2879, java.util.ArrayDeque=var2542, $r4=var147, java.util.Deque=var235, java.util.ArrayList=var2258, $r5=var1917, java.util.List=var1433, $r6=var1801}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
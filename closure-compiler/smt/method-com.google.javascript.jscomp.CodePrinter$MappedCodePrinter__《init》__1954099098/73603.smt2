(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var973 0)
(declare-sort var1943 0)
(declare-sort var1922 0)
(declare-sort var1113 0)
(declare-sort var1913 0)
(declare-sort var163 0)
(declare-sort var2539 0)
(declare-sort var1854 0)
(declare-sort var889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var1113) void)
(declare-fun cast-from-var973-to-var1113 (var973) var1113)
(declare-fun firstCandidateMappingForCut/-862103770 (var973) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var973) String)
(declare-fun lineLength/-862103770 (var973) Int)
(declare-fun lineIndex/-862103770 (var973) Int)
(declare-fun var1913_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var973) Int)
(declare-fun createSrcMap/-862103770 (var973) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var973) var1943)
(declare-fun cast-from-var163-to-var2539 (var163) var2539)
(declare-fun mappings/-862103770 (var973) var2539)
(declare-fun var1854-init () var1854)
(declare-fun <init>/-325640736 (var1854) void)
(declare-fun cast-from-var1854-to-var889 (var1854) var889)
(declare-fun allMappings/-862103770 (var973) var889)
(declare-fun completeMappings/-862103770 (var973) var889)
(declare-fun licenseTracker/-862103770 (var973) var1922)
(declare-const null-var973 var973)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var1943 var1943)
(declare-const null-var1922 var1922)
(declare-const null-var163 var163)
(declare-const null-var1854 var1854)
(declare-const var2505 var973) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var2505 null-var973)))
(declare-const var748 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var748 null-Int)))
(declare-const var1220 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1220 null-Bool)))
(declare-const var1478 var1943) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var1478 null-var1943)))
(declare-const var1290 var1922) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var1290 null-var1922)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var973-to-var1113 var2505))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var2505!1 var973)
(declare-const var2505!2 var973)
(assert (not (= var2505!2 null-var973)))
(assert (= (firstCandidateMappingForCut/-862103770 var2505!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var2534 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2534 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var2534!1 String)
(declare-const var3776 Int)
(declare-const var2505!3 var973)
(assert (not (= var2505!3 null-var973)))
(assert (= (code/-862103770 var2505!3) var2534!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var2505!4 var973)
(assert (not (= var2505!4 null-var973)))
(assert (= (lineLength/-862103770 var2505!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var2505!5 var973)
(assert (not (= var2505!5 null-var973)))
(assert (= (lineIndex/-862103770 var2505!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var1478 null-var1943))) ; Negate: Cond: r2 == null  
(define-const var2963 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var1913_checkState/1431124798 var2963)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var2963!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var748 0))) ; Negate: Cond: i0 > 0  
(define-const var188 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var2505!6 var973)
(assert (not (= var2505!6 null-var973)))
(assert (= (lineLengthThreshold/-862103770 var2505!6) var188)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var2505!7 var973)
(assert (not (= var2505!7 null-var973)))
(assert (= (createSrcMap/-862103770 var2505!7) var1220)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var2505!8 var973)
(assert (not (= var2505!8 null-var973)))
(assert (= (sourceMapDetailLevel/-862103770 var2505!8) var1478)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var1220 1 0) 0)) ; Cond: z0 == 0 
(define-const var3829 var163 null-var163) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var2505!9 var973)
(assert (not (= var2505!9 null-var973)))
(assert (= (mappings/-862103770 var2505!9) (cast-from-var163-to-var2539 var3829))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var1220 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2588 var1854 var1854-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2588)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var2588!1 var1854)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var2505!10 var973)
(assert (not (= var2505!10 null-var973)))
(assert (= (allMappings/-862103770 var2505!10) (cast-from-var1854-to-var889 var2588!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var1220 1 0) 0)) ; Cond: z0 == 0 
(define-const var2950 var1854 null-var1854) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var2505!11 var973)
(assert (not (= var2505!11 null-var973)))
(assert (= (completeMappings/-862103770 var2505!11) (cast-from-var1854-to-var889 var2950))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var2505!12 var973)
(assert (not (= var2505!12 null-var973)))
(assert (= (licenseTracker/-862103770 var2505!12) var1290)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var973-to-var1113=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var1913_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var163-to-var2539=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var1854-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var1854-to-var889=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var973=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var2505=r0, var748=i0, var1220=z0, var1943=com.google.javascript.jscomp.SourceMap$DetailLevel, var1478=r2, var1922=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var1290=r3, var1113=com.google.javascript.jscomp.CodeConsumer, var2534=$r1, var3776=1024, var2963=$z1, var1913=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var188=$i1, var163=java.util.ArrayDeque, var3829=$r4, var2539=java.util.Deque, var1854=java.util.ArrayList, var2588=$r5, var889=java.util.List, var2950=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var973, r0=var2505, i0=var748, z0=var1220, com.google.javascript.jscomp.SourceMap$DetailLevel=var1943, r2=var1478, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var1922, r3=var1290, com.google.javascript.jscomp.CodeConsumer=var1113, $r1=var2534, 1024=var3776, $z1=var2963, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1913, $i1=var188, java.util.ArrayDeque=var163, $r4=var3829, java.util.Deque=var2539, java.util.ArrayList=var1854, $r5=var2588, java.util.List=var889, $r6=var2950}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
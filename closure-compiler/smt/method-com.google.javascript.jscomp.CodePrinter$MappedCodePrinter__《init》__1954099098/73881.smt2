(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2363 0)
(declare-sort var2928 0)
(declare-sort var699 0)
(declare-sort var3161 0)
(declare-sort var3901 0)
(declare-sort var3091 0)
(declare-sort var1126 0)
(declare-sort var1663 0)
(declare-sort var1989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var3161) void)
(declare-fun cast-from-var2363-to-var3161 (var2363) var3161)
(declare-fun firstCandidateMappingForCut/-862103770 (var2363) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var2363) String)
(declare-fun lineLength/-862103770 (var2363) Int)
(declare-fun lineIndex/-862103770 (var2363) Int)
(declare-fun var3901_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var2363) Int)
(declare-fun createSrcMap/-862103770 (var2363) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var2363) var2928)
(declare-fun var3091-init () var3091)
(declare-fun <init>/-1300283768 (var3091) void)
(declare-fun cast-from-var3091-to-var1126 (var3091) var1126)
(declare-fun mappings/-862103770 (var2363) var1126)
(declare-fun var1663-init () var1663)
(declare-fun <init>/-325640736 (var1663) void)
(declare-fun cast-from-var1663-to-var1989 (var1663) var1989)
(declare-fun allMappings/-862103770 (var2363) var1989)
(declare-fun completeMappings/-862103770 (var2363) var1989)
(declare-fun licenseTracker/-862103770 (var2363) var699)
(declare-const null-var2363 var2363)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var2928 var2928)
(declare-const null-var699 var699)
(declare-const null-var1663 var1663)
(declare-const var2443 var2363) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var2443 null-var2363)))
(declare-const var2530 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2530 null-Int)))
(declare-const var982 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var982 null-Bool)))
(declare-const var1274 var2928) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var1274 null-var2928)))
(declare-const var3281 var699) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var3281 null-var699)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var2363-to-var3161 var2443))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var2443!1 var2363)
(declare-const var2443!2 var2363)
(assert (not (= var2443!2 null-var2363)))
(assert (= (firstCandidateMappingForCut/-862103770 var2443!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var1383 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1383 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var1383!1 String)
(declare-const var3608 Int)
(declare-const var2443!3 var2363)
(assert (not (= var2443!3 null-var2363)))
(assert (= (code/-862103770 var2443!3) var1383!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var2443!4 var2363)
(assert (not (= var2443!4 null-var2363)))
(assert (= (lineLength/-862103770 var2443!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var2443!5 var2363)
(assert (not (= var2443!5 null-var2363)))
(assert (= (lineIndex/-862103770 var2443!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var1274 null-var2928)) ; Cond: r2 == null 
(define-const var3665 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var3901_checkState/1431124798 var3665)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var3665!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var2530 0))) ; Negate: Cond: i0 > 0  
(define-const var1699 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var2443!6 var2363)
(assert (not (= var2443!6 null-var2363)))
(assert (= (lineLengthThreshold/-862103770 var2443!6) var1699)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var2443!7 var2363)
(assert (not (= var2443!7 null-var2363)))
(assert (= (createSrcMap/-862103770 var2443!7) var982)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var2443!8 var2363)
(assert (not (= var2443!8 null-var2363)))
(assert (= (sourceMapDetailLevel/-862103770 var2443!8) var1274)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var982 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2920 var3091 var3091-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var2920)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var2920!1 var3091)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var2443!9 var2363)
(assert (not (= var2443!9 null-var2363)))
(assert (= (mappings/-862103770 var2443!9) (cast-from-var3091-to-var1126 var2920!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var982 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3450 var1663 var1663-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3450)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var3450!1 var1663)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var2443!10 var2363)
(assert (not (= var2443!10 null-var2363)))
(assert (= (allMappings/-862103770 var2443!10) (cast-from-var1663-to-var1989 var3450!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var982 1 0) 0)) ; Cond: z0 == 0 
(define-const var2978 var1663 null-var1663) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var2443!11 var2363)
(assert (not (= var2443!11 null-var2363)))
(assert (= (completeMappings/-862103770 var2443!11) (cast-from-var1663-to-var1989 var2978))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var2443!12 var2363)
(assert (not (= var2443!12 null-var2363)))
(assert (= (licenseTracker/-862103770 var2443!12) var3281)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var2363-to-var3161=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var3901_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var3091-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var3091-to-var1126=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var1663-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var1663-to-var1989=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var2363=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var2443=r0, var2530=i0, var982=z0, var2928=com.google.javascript.jscomp.SourceMap$DetailLevel, var1274=r2, var699=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var3281=r3, var3161=com.google.javascript.jscomp.CodeConsumer, var1383=$r1, var3608=1024, var3665=$z1, var3901=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1699=$i1, var3091=java.util.ArrayDeque, var2920=$r4, var1126=java.util.Deque, var1663=java.util.ArrayList, var3450=$r5, var1989=java.util.List, var2978=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var2363, r0=var2443, i0=var2530, z0=var982, com.google.javascript.jscomp.SourceMap$DetailLevel=var2928, r2=var1274, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var699, r3=var3281, com.google.javascript.jscomp.CodeConsumer=var3161, $r1=var1383, 1024=var3608, $z1=var3665, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3901, $i1=var1699, java.util.ArrayDeque=var3091, $r4=var2920, java.util.Deque=var1126, java.util.ArrayList=var1663, $r5=var3450, java.util.List=var1989, $r6=var2978}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
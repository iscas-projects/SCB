(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var575 0)
(declare-sort var3032 0)
(declare-sort var3649 0)
(declare-sort var2236 0)
(declare-sort var2840 0)
(declare-sort var438 0)
(declare-sort var2669 0)
(declare-sort var3518 0)
(declare-sort var1505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var2236) void)
(declare-fun cast-from-var575-to-var2236 (var575) var2236)
(declare-fun firstCandidateMappingForCut/-862103770 (var575) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var575) String)
(declare-fun lineLength/-862103770 (var575) Int)
(declare-fun lineIndex/-862103770 (var575) Int)
(declare-fun var2840_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var575) Int)
(declare-fun createSrcMap/-862103770 (var575) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var575) var3032)
(declare-fun cast-from-var438-to-var2669 (var438) var2669)
(declare-fun mappings/-862103770 (var575) var2669)
(declare-fun cast-from-var3518-to-var1505 (var3518) var1505)
(declare-fun allMappings/-862103770 (var575) var1505)
(declare-fun var3518-init () var3518)
(declare-fun <init>/-325640736 (var3518) void)
(declare-fun completeMappings/-862103770 (var575) var1505)
(declare-fun licenseTracker/-862103770 (var575) var3649)
(declare-const null-var575 var575)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3032 var3032)
(declare-const null-var3649 var3649)
(declare-const null-var438 var438)
(declare-const null-var3518 var3518)
(declare-const var1209 var575) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var1209 null-var575)))
(declare-const var3723 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3723 null-Int)))
(declare-const var3735 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3735 null-Bool)))
(declare-const var3776 var3032) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var3776 null-var3032)))
(declare-const var3581 var3649) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var3581 null-var3649)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var575-to-var2236 var1209))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var1209!1 var575)
(declare-const var1209!2 var575)
(assert (not (= var1209!2 null-var575)))
(assert (= (firstCandidateMappingForCut/-862103770 var1209!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var3218 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3218 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var3218!1 String)
(declare-const var1465 Int)
(declare-const var1209!3 var575)
(assert (not (= var1209!3 null-var575)))
(assert (= (code/-862103770 var1209!3) var3218!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var1209!4 var575)
(assert (not (= var1209!4 null-var575)))
(assert (= (lineLength/-862103770 var1209!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var1209!5 var575)
(assert (not (= var1209!5 null-var575)))
(assert (= (lineIndex/-862103770 var1209!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var3776 null-var3032))) ; Negate: Cond: r2 == null  
(define-const var1626 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var2840_checkState/1431124798 var1626)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var1626!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var3723 0)) ; Cond: i0 > 0 
(define-const var1268 Int var3723) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var1209!6 var575)
(assert (not (= var1209!6 null-var575)))
(assert (= (lineLengthThreshold/-862103770 var1209!6) var1268)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var1209!7 var575)
(assert (not (= var1209!7 null-var575)))
(assert (= (createSrcMap/-862103770 var1209!7) var3735)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var1209!8 var575)
(assert (not (= var1209!8 null-var575)))
(assert (= (sourceMapDetailLevel/-862103770 var1209!8) var3776)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var3735 1 0) 0)) ; Cond: z0 == 0 
(define-const var3228 var438 null-var438) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var1209!9 var575)
(assert (not (= var1209!9 null-var575)))
(assert (= (mappings/-862103770 var1209!9) (cast-from-var438-to-var2669 var3228))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var3735 1 0) 0)) ; Cond: z0 == 0 
(define-const var2553 var3518 null-var3518) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var1209!10 var575)
(assert (not (= var1209!10 null-var575)))
(assert (= (allMappings/-862103770 var1209!10) (cast-from-var3518-to-var1505 var2553))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var3735 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var566 var3518 var3518-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var566)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var566!1 var3518)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var1209!11 var575)
(assert (not (= var1209!11 null-var575)))
(assert (= (completeMappings/-862103770 var1209!11) (cast-from-var3518-to-var1505 var566!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var1209!12 var575)
(assert (not (= var1209!12 null-var575)))
(assert (= (licenseTracker/-862103770 var1209!12) var3581)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var575-to-var2236=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var2840_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var438-to-var2669=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var3518-to-var1505=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), var3518-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var575=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var1209=r0, var3723=i0, var3735=z0, var3032=com.google.javascript.jscomp.SourceMap$DetailLevel, var3776=r2, var3649=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var3581=r3, var2236=com.google.javascript.jscomp.CodeConsumer, var3218=$r1, var1465=1024, var1626=$z1, var2840=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1268=$i1, var438=java.util.ArrayDeque, var3228=$r4, var2669=java.util.Deque, var3518=java.util.ArrayList, var2553=$r5, var1505=java.util.List, var566=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var575, r0=var1209, i0=var3723, z0=var3735, com.google.javascript.jscomp.SourceMap$DetailLevel=var3032, r2=var3776, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var3649, r3=var3581, com.google.javascript.jscomp.CodeConsumer=var2236, $r1=var3218, 1024=var1465, $z1=var1626, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2840, $i1=var1268, java.util.ArrayDeque=var438, $r4=var3228, java.util.Deque=var2669, java.util.ArrayList=var3518, $r5=var2553, java.util.List=var1505, $r6=var566}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
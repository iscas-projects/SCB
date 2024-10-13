(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var892 0)
(declare-sort var2652 0)
(declare-sort var990 0)
(declare-sort var2949 0)
(declare-sort var857 0)
(declare-sort var3427 0)
(declare-sort var70 0)
(declare-sort var1864 0)
(declare-sort var816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var2949) void)
(declare-fun cast-from-var892-to-var2949 (var892) var2949)
(declare-fun firstCandidateMappingForCut/-862103770 (var892) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var892) String)
(declare-fun lineLength/-862103770 (var892) Int)
(declare-fun lineIndex/-862103770 (var892) Int)
(declare-fun var857_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var892) Int)
(declare-fun createSrcMap/-862103770 (var892) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var892) var2652)
(declare-fun var3427-init () var3427)
(declare-fun <init>/-1300283768 (var3427) void)
(declare-fun cast-from-var3427-to-var70 (var3427) var70)
(declare-fun mappings/-862103770 (var892) var70)
(declare-fun var1864-init () var1864)
(declare-fun <init>/-325640736 (var1864) void)
(declare-fun cast-from-var1864-to-var816 (var1864) var816)
(declare-fun allMappings/-862103770 (var892) var816)
(declare-fun completeMappings/-862103770 (var892) var816)
(declare-fun licenseTracker/-862103770 (var892) var990)
(declare-const null-var892 var892)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var2652 var2652)
(declare-const null-var990 var990)
(declare-const var667 var892) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var667 null-var892)))
(declare-const var17 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var17 null-Int)))
(declare-const var610 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var610 null-Bool)))
(declare-const var1572 var2652) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var1572 null-var2652)))
(declare-const var1277 var990) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var1277 null-var990)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var892-to-var2949 var667))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var667!1 var892)
(declare-const var667!2 var892)
(assert (not (= var667!2 null-var892)))
(assert (= (firstCandidateMappingForCut/-862103770 var667!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var1186 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1186 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var1186!1 String)
(declare-const var1919 Int)
(declare-const var667!3 var892)
(assert (not (= var667!3 null-var892)))
(assert (= (code/-862103770 var667!3) var1186!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var667!4 var892)
(assert (not (= var667!4 null-var892)))
(assert (= (lineLength/-862103770 var667!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var667!5 var892)
(assert (not (= var667!5 null-var892)))
(assert (= (lineIndex/-862103770 var667!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (= var1572 null-var2652)) ; Cond: r2 == null 
(define-const var8 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var857_checkState/1431124798 var8)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var8!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var17 0))) ; Negate: Cond: i0 > 0  
(define-const var1043 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var667!6 var892)
(assert (not (= var667!6 null-var892)))
(assert (= (lineLengthThreshold/-862103770 var667!6) var1043)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var667!7 var892)
(assert (not (= var667!7 null-var892)))
(assert (= (createSrcMap/-862103770 var667!7) var610)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var667!8 var892)
(assert (not (= var667!8 null-var892)))
(assert (= (sourceMapDetailLevel/-862103770 var667!8) var1572)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var610 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3806 var3427 var3427-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var3806)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var3806!1 var3427)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var667!9 var892)
(assert (not (= var667!9 null-var892)))
(assert (= (mappings/-862103770 var667!9) (cast-from-var3427-to-var70 var3806!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var610 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3338 var1864 var1864-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3338)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var3338!1 var1864)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var667!10 var892)
(assert (not (= var667!10 null-var892)))
(assert (= (allMappings/-862103770 var667!10) (cast-from-var1864-to-var816 var3338!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var610 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3528 var1864 var1864-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3528)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var3528!1 var1864)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var667!11 var892)
(assert (not (= var667!11 null-var892)))
(assert (= (completeMappings/-862103770 var667!11) (cast-from-var1864-to-var816 var3528!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var667!12 var892)
(assert (not (= var667!12 null-var892)))
(assert (= (licenseTracker/-862103770 var667!12) var1277)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var892-to-var2949=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var857_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var3427-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var3427-to-var70=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var1864-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var1864-to-var816=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var892=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var667=r0, var17=i0, var610=z0, var2652=com.google.javascript.jscomp.SourceMap$DetailLevel, var1572=r2, var990=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var1277=r3, var2949=com.google.javascript.jscomp.CodeConsumer, var1186=$r1, var1919=1024, var8=$z1, var857=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1043=$i1, var3427=java.util.ArrayDeque, var3806=$r4, var70=java.util.Deque, var1864=java.util.ArrayList, var3338=$r5, var816=java.util.List, var3528=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var892, r0=var667, i0=var17, z0=var610, com.google.javascript.jscomp.SourceMap$DetailLevel=var2652, r2=var1572, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var990, r3=var1277, com.google.javascript.jscomp.CodeConsumer=var2949, $r1=var1186, 1024=var1919, $z1=var8, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var857, $i1=var1043, java.util.ArrayDeque=var3427, $r4=var3806, java.util.Deque=var70, java.util.ArrayList=var1864, $r5=var3338, java.util.List=var816, $r6=var3528}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
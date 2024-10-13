(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var457 0)
(declare-sort var3616 0)
(declare-sort var2138 0)
(declare-sort var293 0)
(declare-sort var680 0)
(declare-sort var2763 0)
(declare-sort var1233 0)
(declare-sort var2752 0)
(declare-sort var3882 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var293) void)
(declare-fun cast-from-var457-to-var293 (var457) var293)
(declare-fun firstCandidateMappingForCut/-862103770 (var457) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var457) String)
(declare-fun lineLength/-862103770 (var457) Int)
(declare-fun lineIndex/-862103770 (var457) Int)
(declare-fun var680_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var457) Int)
(declare-fun createSrcMap/-862103770 (var457) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var457) var3616)
(declare-fun cast-from-var2763-to-var1233 (var2763) var1233)
(declare-fun mappings/-862103770 (var457) var1233)
(declare-fun cast-from-var2752-to-var3882 (var2752) var3882)
(declare-fun allMappings/-862103770 (var457) var3882)
(declare-fun var2752-init () var2752)
(declare-fun <init>/-325640736 (var2752) void)
(declare-fun completeMappings/-862103770 (var457) var3882)
(declare-fun licenseTracker/-862103770 (var457) var2138)
(declare-const null-var457 var457)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3616 var3616)
(declare-const null-var2138 var2138)
(declare-const null-var2763 var2763)
(declare-const null-var2752 var2752)
(declare-const var1741 var457) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var1741 null-var457)))
(declare-const var2501 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2501 null-Int)))
(declare-const var3790 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3790 null-Bool)))
(declare-const var2104 var3616) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var2104 null-var3616)))
(declare-const var3151 var2138) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var3151 null-var2138)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var457-to-var293 var1741))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var1741!1 var457)
(declare-const var1741!2 var457)
(assert (not (= var1741!2 null-var457)))
(assert (= (firstCandidateMappingForCut/-862103770 var1741!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var2409 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2409 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var2409!1 String)
(declare-const var1905 Int)
(declare-const var1741!3 var457)
(assert (not (= var1741!3 null-var457)))
(assert (= (code/-862103770 var1741!3) var2409!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var1741!4 var457)
(assert (not (= var1741!4 null-var457)))
(assert (= (lineLength/-862103770 var1741!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var1741!5 var457)
(assert (not (= var1741!5 null-var457)))
(assert (= (lineIndex/-862103770 var1741!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var2104 null-var3616))) ; Negate: Cond: r2 == null  
(define-const var356 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var680_checkState/1431124798 var356)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var356!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var2501 0))) ; Negate: Cond: i0 > 0  
(define-const var1583 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var1741!6 var457)
(assert (not (= var1741!6 null-var457)))
(assert (= (lineLengthThreshold/-862103770 var1741!6) var1583)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var1741!7 var457)
(assert (not (= var1741!7 null-var457)))
(assert (= (createSrcMap/-862103770 var1741!7) var3790)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var1741!8 var457)
(assert (not (= var1741!8 null-var457)))
(assert (= (sourceMapDetailLevel/-862103770 var1741!8) var2104)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var3790 1 0) 0)) ; Cond: z0 == 0 
(define-const var3358 var2763 null-var2763) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var1741!9 var457)
(assert (not (= var1741!9 null-var457)))
(assert (= (mappings/-862103770 var1741!9) (cast-from-var2763-to-var1233 var3358))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var3790 1 0) 0)) ; Cond: z0 == 0 
(define-const var2548 var2752 null-var2752) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var1741!10 var457)
(assert (not (= var1741!10 null-var457)))
(assert (= (allMappings/-862103770 var1741!10) (cast-from-var2752-to-var3882 var2548))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var3790 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3890 var2752 var2752-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3890)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var3890!1 var2752)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var1741!11 var457)
(assert (not (= var1741!11 null-var457)))
(assert (= (completeMappings/-862103770 var1741!11) (cast-from-var2752-to-var3882 var3890!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var1741!12 var457)
(assert (not (= var1741!12 null-var457)))
(assert (= (licenseTracker/-862103770 var1741!12) var3151)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var457-to-var293=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var680_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var2763-to-var1233=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var2752-to-var3882=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), var2752-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var457=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var1741=r0, var2501=i0, var3790=z0, var3616=com.google.javascript.jscomp.SourceMap$DetailLevel, var2104=r2, var2138=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var3151=r3, var293=com.google.javascript.jscomp.CodeConsumer, var2409=$r1, var1905=1024, var356=$z1, var680=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1583=$i1, var2763=java.util.ArrayDeque, var3358=$r4, var1233=java.util.Deque, var2752=java.util.ArrayList, var2548=$r5, var3882=java.util.List, var3890=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var457, r0=var1741, i0=var2501, z0=var3790, com.google.javascript.jscomp.SourceMap$DetailLevel=var3616, r2=var2104, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var2138, r3=var3151, com.google.javascript.jscomp.CodeConsumer=var293, $r1=var2409, 1024=var1905, $z1=var356, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var680, $i1=var1583, java.util.ArrayDeque=var2763, $r4=var3358, java.util.Deque=var1233, java.util.ArrayList=var2752, $r5=var2548, java.util.List=var3882, $r6=var3890}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2157 0)
(declare-sort var3202 0)
(declare-sort var3593 0)
(declare-sort var1107 0)
(declare-sort var850 0)
(declare-sort var2796 0)
(declare-sort var2368 0)
(declare-sort var978 0)
(declare-sort var2577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var1107) void)
(declare-fun cast-from-var2157-to-var1107 (var2157) var1107)
(declare-fun firstCandidateMappingForCut/-862103770 (var2157) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var2157) String)
(declare-fun lineLength/-862103770 (var2157) Int)
(declare-fun lineIndex/-862103770 (var2157) Int)
(declare-fun var850_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var2157) Int)
(declare-fun createSrcMap/-862103770 (var2157) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var2157) var3202)
(declare-fun var2796-init () var2796)
(declare-fun <init>/-1300283768 (var2796) void)
(declare-fun cast-from-var2796-to-var2368 (var2796) var2368)
(declare-fun mappings/-862103770 (var2157) var2368)
(declare-fun cast-from-var978-to-var2577 (var978) var2577)
(declare-fun allMappings/-862103770 (var2157) var2577)
(declare-fun var978-init () var978)
(declare-fun <init>/-325640736 (var978) void)
(declare-fun completeMappings/-862103770 (var2157) var2577)
(declare-fun licenseTracker/-862103770 (var2157) var3593)
(declare-const null-var2157 var2157)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3202 var3202)
(declare-const null-var3593 var3593)
(declare-const null-var978 var978)
(declare-const var3662 var2157) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var3662 null-var2157)))
(declare-const var2941 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2941 null-Int)))
(declare-const var1372 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1372 null-Bool)))
(declare-const var1150 var3202) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var1150 null-var3202)))
(declare-const var2669 var3593) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var2669 null-var3593)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var2157-to-var1107 var3662))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var3662!1 var2157)
(declare-const var3662!2 var2157)
(assert (not (= var3662!2 null-var2157)))
(assert (= (firstCandidateMappingForCut/-862103770 var3662!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var3076 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3076 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var3076!1 String)
(declare-const var1457 Int)
(declare-const var3662!3 var2157)
(assert (not (= var3662!3 null-var2157)))
(assert (= (code/-862103770 var3662!3) var3076!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var3662!4 var2157)
(assert (not (= var3662!4 null-var2157)))
(assert (= (lineLength/-862103770 var3662!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var3662!5 var2157)
(assert (not (= var3662!5 null-var2157)))
(assert (= (lineIndex/-862103770 var3662!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var1150 null-var3202))) ; Negate: Cond: r2 == null  
(define-const var1066 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var850_checkState/1431124798 var1066)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var1066!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var2941 0)) ; Cond: i0 > 0 
(define-const var17 Int var2941) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var3662!6 var2157)
(assert (not (= var3662!6 null-var2157)))
(assert (= (lineLengthThreshold/-862103770 var3662!6) var17)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var3662!7 var2157)
(assert (not (= var3662!7 null-var2157)))
(assert (= (createSrcMap/-862103770 var3662!7) var1372)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var3662!8 var2157)
(assert (not (= var3662!8 null-var2157)))
(assert (= (sourceMapDetailLevel/-862103770 var3662!8) var1150)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var1372 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3946 var2796 var2796-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var3946)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var3946!1 var2796)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var3662!9 var2157)
(assert (not (= var3662!9 null-var2157)))
(assert (= (mappings/-862103770 var3662!9) (cast-from-var2796-to-var2368 var3946!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var1372 1 0) 0)) ; Cond: z0 == 0 
(define-const var3051 var978 null-var978) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var3662!10 var2157)
(assert (not (= var3662!10 null-var2157)))
(assert (= (allMappings/-862103770 var3662!10) (cast-from-var978-to-var2577 var3051))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var1372 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3656 var978 var978-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3656)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var3656!1 var978)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var3662!11 var2157)
(assert (not (= var3662!11 null-var2157)))
(assert (= (completeMappings/-862103770 var3662!11) (cast-from-var978-to-var2577 var3656!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var3662!12 var2157)
(assert (not (= var3662!12 null-var2157)))
(assert (= (licenseTracker/-862103770 var3662!12) var2669)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var2157-to-var1107=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var850_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var2796-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var2796-to-var2368=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var978-to-var2577=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), var978-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var2157=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var3662=r0, var2941=i0, var1372=z0, var3202=com.google.javascript.jscomp.SourceMap$DetailLevel, var1150=r2, var3593=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var2669=r3, var1107=com.google.javascript.jscomp.CodeConsumer, var3076=$r1, var1457=1024, var1066=$z1, var850=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var17=$i1, var2796=java.util.ArrayDeque, var3946=$r4, var2368=java.util.Deque, var978=java.util.ArrayList, var3051=$r5, var2577=java.util.List, var3656=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var2157, r0=var3662, i0=var2941, z0=var1372, com.google.javascript.jscomp.SourceMap$DetailLevel=var3202, r2=var1150, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var3593, r3=var2669, com.google.javascript.jscomp.CodeConsumer=var1107, $r1=var3076, 1024=var1457, $z1=var1066, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var850, $i1=var17, java.util.ArrayDeque=var2796, $r4=var3946, java.util.Deque=var2368, java.util.ArrayList=var978, $r5=var3051, java.util.List=var2577, $r6=var3656}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
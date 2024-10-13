(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var609 0)
(declare-sort var1799 0)
(declare-sort var2152 0)
(declare-sort var2036 0)
(declare-sort var3381 0)
(declare-sort var2097 0)
(declare-sort var1270 0)
(declare-sort var3391 0)
(declare-sort var1742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var2036) void)
(declare-fun cast-from-var609-to-var2036 (var609) var2036)
(declare-fun firstCandidateMappingForCut/-862103770 (var609) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var609) String)
(declare-fun lineLength/-862103770 (var609) Int)
(declare-fun lineIndex/-862103770 (var609) Int)
(declare-fun var3381_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var609) Int)
(declare-fun createSrcMap/-862103770 (var609) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var609) var1799)
(declare-fun var2097-init () var2097)
(declare-fun <init>/-1300283768 (var2097) void)
(declare-fun cast-from-var2097-to-var1270 (var2097) var1270)
(declare-fun mappings/-862103770 (var609) var1270)
(declare-fun cast-from-var3391-to-var1742 (var3391) var1742)
(declare-fun allMappings/-862103770 (var609) var1742)
(declare-fun completeMappings/-862103770 (var609) var1742)
(declare-fun licenseTracker/-862103770 (var609) var2152)
(declare-const null-var609 var609)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var1799 var1799)
(declare-const null-var2152 var2152)
(declare-const null-var3391 var3391)
(declare-const var1518 var609) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var1518 null-var609)))
(declare-const var3995 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3995 null-Int)))
(declare-const var3152 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3152 null-Bool)))
(declare-const var2503 var1799) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var2503 null-var1799)))
(declare-const var1130 var2152) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var1130 null-var2152)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var609-to-var2036 var1518))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var1518!1 var609)
(declare-const var1518!2 var609)
(assert (not (= var1518!2 null-var609)))
(assert (= (firstCandidateMappingForCut/-862103770 var1518!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var331 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var331 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var331!1 String)
(declare-const var2074 Int)
(declare-const var1518!3 var609)
(assert (not (= var1518!3 null-var609)))
(assert (= (code/-862103770 var1518!3) var331!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var1518!4 var609)
(assert (not (= var1518!4 null-var609)))
(assert (= (lineLength/-862103770 var1518!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var1518!5 var609)
(assert (not (= var1518!5 null-var609)))
(assert (= (lineIndex/-862103770 var1518!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var2503 null-var1799))) ; Negate: Cond: r2 == null  
(define-const var3808 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var3381_checkState/1431124798 var3808)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var3808!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var3995 0))) ; Negate: Cond: i0 > 0  
(define-const var3166 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var1518!6 var609)
(assert (not (= var1518!6 null-var609)))
(assert (= (lineLengthThreshold/-862103770 var1518!6) var3166)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var1518!7 var609)
(assert (not (= var1518!7 null-var609)))
(assert (= (createSrcMap/-862103770 var1518!7) var3152)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var1518!8 var609)
(assert (not (= var1518!8 null-var609)))
(assert (= (sourceMapDetailLevel/-862103770 var1518!8) var2503)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var3152 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1132 var2097 var2097-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var1132)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var1132!1 var2097)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var1518!9 var609)
(assert (not (= var1518!9 null-var609)))
(assert (= (mappings/-862103770 var1518!9) (cast-from-var2097-to-var1270 var1132!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (= (ite var3152 1 0) 0)) ; Cond: z0 == 0 
(define-const var1988 var3391 null-var3391) ; Statement: $r5 = null 
(assert true) ; Non Conditional
(declare-const var1518!10 var609)
(assert (not (= var1518!10 null-var609)))
(assert (= (allMappings/-862103770 var1518!10) (cast-from-var3391-to-var1742 var1988))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var3152 1 0) 0)) ; Cond: z0 == 0 
(define-const var426 var3391 null-var3391) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var1518!11 var609)
(assert (not (= var1518!11 null-var609)))
(assert (= (completeMappings/-862103770 var1518!11) (cast-from-var3391-to-var1742 var426))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var1518!12 var609)
(assert (not (= var1518!12 null-var609)))
(assert (= (licenseTracker/-862103770 var1518!12) var1130)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var609-to-var2036=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var3381_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var2097-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var2097-to-var1270=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), cast-from-var3391-to-var1742=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var609=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var1518=r0, var3995=i0, var3152=z0, var1799=com.google.javascript.jscomp.SourceMap$DetailLevel, var2503=r2, var2152=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var1130=r3, var2036=com.google.javascript.jscomp.CodeConsumer, var331=$r1, var2074=1024, var3808=$z1, var3381=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3166=$i1, var2097=java.util.ArrayDeque, var1132=$r4, var1270=java.util.Deque, var3391=java.util.ArrayList, var1988=$r5, var1742=java.util.List, var426=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var609, r0=var1518, i0=var3995, z0=var3152, com.google.javascript.jscomp.SourceMap$DetailLevel=var1799, r2=var2503, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var2152, r3=var1130, com.google.javascript.jscomp.CodeConsumer=var2036, $r1=var331, 1024=var2074, $z1=var3808, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3381, $i1=var3166, java.util.ArrayDeque=var2097, $r4=var1132, java.util.Deque=var1270, java.util.ArrayList=var3391, $r5=var1988, java.util.List=var1742, $r6=var426}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
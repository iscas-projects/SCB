(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var100 0)
(declare-sort var3812 0)
(declare-sort var3104 0)
(declare-sort var96 0)
(declare-sort var2730 0)
(declare-sort var3945 0)
(declare-sort var3854 0)
(declare-sort var2420 0)
(declare-sort var1832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var96) void)
(declare-fun cast-from-var100-to-var96 (var100) var96)
(declare-fun firstCandidateMappingForCut/-862103770 (var100) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var100) String)
(declare-fun lineLength/-862103770 (var100) Int)
(declare-fun lineIndex/-862103770 (var100) Int)
(declare-fun var2730_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var100) Int)
(declare-fun createSrcMap/-862103770 (var100) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var100) var3812)
(declare-fun var3945-init () var3945)
(declare-fun <init>/-1300283768 (var3945) void)
(declare-fun cast-from-var3945-to-var3854 (var3945) var3854)
(declare-fun mappings/-862103770 (var100) var3854)
(declare-fun var2420-init () var2420)
(declare-fun <init>/-325640736 (var2420) void)
(declare-fun cast-from-var2420-to-var1832 (var2420) var1832)
(declare-fun allMappings/-862103770 (var100) var1832)
(declare-fun completeMappings/-862103770 (var100) var1832)
(declare-fun licenseTracker/-862103770 (var100) var3104)
(declare-const null-var100 var100)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3812 var3812)
(declare-const null-var3104 var3104)
(declare-const null-var2420 var2420)
(declare-const var371 var100) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var371 null-var100)))
(declare-const var1933 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1933 null-Int)))
(declare-const var937 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var937 null-Bool)))
(declare-const var3902 var3812) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var3902 null-var3812)))
(declare-const var2877 var3104) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var2877 null-var3104)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var100-to-var96 var371))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var371!1 var100)
(declare-const var371!2 var100)
(assert (not (= var371!2 null-var100)))
(assert (= (firstCandidateMappingForCut/-862103770 var371!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var3240 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3240 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var3240!1 String)
(declare-const var3389 Int)
(declare-const var371!3 var100)
(assert (not (= var371!3 null-var100)))
(assert (= (code/-862103770 var371!3) var3240!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var371!4 var100)
(assert (not (= var371!4 null-var100)))
(assert (= (lineLength/-862103770 var371!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var371!5 var100)
(assert (not (= var371!5 null-var100)))
(assert (= (lineIndex/-862103770 var371!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var3902 null-var3812))) ; Negate: Cond: r2 == null  
(define-const var844 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var2730_checkState/1431124798 var844)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var844!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var1933 0)) ; Cond: i0 > 0 
(define-const var781 Int var1933) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var371!6 var100)
(assert (not (= var371!6 null-var100)))
(assert (= (lineLengthThreshold/-862103770 var371!6) var781)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var371!7 var100)
(assert (not (= var371!7 null-var100)))
(assert (= (createSrcMap/-862103770 var371!7) var937)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var371!8 var100)
(assert (not (= var371!8 null-var100)))
(assert (= (sourceMapDetailLevel/-862103770 var371!8) var3902)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var937 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3373 var3945 var3945-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var3373)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var3373!1 var3945)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var371!9 var100)
(assert (not (= var371!9 null-var100)))
(assert (= (mappings/-862103770 var371!9) (cast-from-var3945-to-var3854 var3373!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var937 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1449 var2420 var2420-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1449)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var1449!1 var2420)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var371!10 var100)
(assert (not (= var371!10 null-var100)))
(assert (= (allMappings/-862103770 var371!10) (cast-from-var2420-to-var1832 var1449!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (= (ite var937 1 0) 0)) ; Cond: z0 == 0 
(define-const var773 var2420 null-var2420) ; Statement: $r6 = null 
(assert true) ; Non Conditional
(declare-const var371!11 var100)
(assert (not (= var371!11 null-var100)))
(assert (= (completeMappings/-862103770 var371!11) (cast-from-var2420-to-var1832 var773))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var371!12 var100)
(assert (not (= var371!12 null-var100)))
(assert (= (licenseTracker/-862103770 var371!12) var2877)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var100-to-var96=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var2730_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var3945-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var3945-to-var3854=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var2420-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var2420-to-var1832=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var100=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var371=r0, var1933=i0, var937=z0, var3812=com.google.javascript.jscomp.SourceMap$DetailLevel, var3902=r2, var3104=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var2877=r3, var96=com.google.javascript.jscomp.CodeConsumer, var3240=$r1, var3389=1024, var844=$z1, var2730=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var781=$i1, var3945=java.util.ArrayDeque, var3373=$r4, var3854=java.util.Deque, var2420=java.util.ArrayList, var1449=$r5, var1832=java.util.List, var773=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var100, r0=var371, i0=var1933, z0=var937, com.google.javascript.jscomp.SourceMap$DetailLevel=var3812, r2=var3902, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var3104, r3=var2877, com.google.javascript.jscomp.CodeConsumer=var96, $r1=var3240, 1024=var3389, $z1=var844, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2730, $i1=var781, java.util.ArrayDeque=var3945, $r4=var3373, java.util.Deque=var3854, java.util.ArrayList=var2420, $r5=var1449, java.util.List=var1832, $r6=var773}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1173 0)
(declare-sort var1661 0)
(declare-sort var704 0)
(declare-sort var2779 0)
(declare-sort var3291 0)
(declare-sort var626 0)
(declare-sort var993 0)
(declare-sort var3677 0)
(declare-sort var883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var2779) void)
(declare-fun cast-from-var1173-to-var2779 (var1173) var2779)
(declare-fun firstCandidateMappingForCut/-862103770 (var1173) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var1173) String)
(declare-fun lineLength/-862103770 (var1173) Int)
(declare-fun lineIndex/-862103770 (var1173) Int)
(declare-fun var3291_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var1173) Int)
(declare-fun createSrcMap/-862103770 (var1173) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var1173) var1661)
(declare-fun var626-init () var626)
(declare-fun <init>/-1300283768 (var626) void)
(declare-fun cast-from-var626-to-var993 (var626) var993)
(declare-fun mappings/-862103770 (var1173) var993)
(declare-fun var3677-init () var3677)
(declare-fun <init>/-325640736 (var3677) void)
(declare-fun cast-from-var3677-to-var883 (var3677) var883)
(declare-fun allMappings/-862103770 (var1173) var883)
(declare-fun completeMappings/-862103770 (var1173) var883)
(declare-fun licenseTracker/-862103770 (var1173) var704)
(declare-const null-var1173 var1173)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var1661 var1661)
(declare-const null-var704 var704)
(declare-const var3514 var1173) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var3514 null-var1173)))
(declare-const var2427 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2427 null-Int)))
(declare-const var406 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var406 null-Bool)))
(declare-const var3857 var1661) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var3857 null-var1661)))
(declare-const var1088 var704) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var1088 null-var704)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var1173-to-var2779 var3514))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var3514!1 var1173)
(declare-const var3514!2 var1173)
(assert (not (= var3514!2 null-var1173)))
(assert (= (firstCandidateMappingForCut/-862103770 var3514!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var824 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var824 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var824!1 String)
(declare-const var632 Int)
(declare-const var3514!3 var1173)
(assert (not (= var3514!3 null-var1173)))
(assert (= (code/-862103770 var3514!3) var824!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var3514!4 var1173)
(assert (not (= var3514!4 null-var1173)))
(assert (= (lineLength/-862103770 var3514!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var3514!5 var1173)
(assert (not (= var3514!5 null-var1173)))
(assert (= (lineIndex/-862103770 var3514!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var3857 null-var1661))) ; Negate: Cond: r2 == null  
(define-const var3815 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var3291_checkState/1431124798 var3815)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var3815!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var2427 0)) ; Cond: i0 > 0 
(define-const var926 Int var2427) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var3514!6 var1173)
(assert (not (= var3514!6 null-var1173)))
(assert (= (lineLengthThreshold/-862103770 var3514!6) var926)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var3514!7 var1173)
(assert (not (= var3514!7 null-var1173)))
(assert (= (createSrcMap/-862103770 var3514!7) var406)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var3514!8 var1173)
(assert (not (= var3514!8 null-var1173)))
(assert (= (sourceMapDetailLevel/-862103770 var3514!8) var3857)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (not (= (ite var406 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2829 var626 var626-init) ; Statement: $r4 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var2829)) ; Statement: specialinvoke $r4.<java.util.ArrayDeque: void <init>()>() 

(declare-const var2829!1 var626)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4] 
(assert true) ; Non Conditional
(declare-const var3514!9 var1173)
(assert (not (= var3514!9 null-var1173)))
(assert (= (mappings/-862103770 var3514!9) (cast-from-var626-to-var993 var2829!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var406 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2386 var3677 var3677-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2386)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var2386!1 var3677)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var3514!10 var1173)
(assert (not (= var3514!10 null-var1173)))
(assert (= (allMappings/-862103770 var3514!10) (cast-from-var3677-to-var883 var2386!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var406 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3495 var3677 var3677-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3495)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var3495!1 var3677)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var3514!11 var1173)
(assert (not (= var3514!11 null-var1173)))
(assert (= (completeMappings/-862103770 var3514!11) (cast-from-var3677-to-var883 var3495!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var3514!12 var1173)
(assert (not (= var3514!12 null-var1173)))
(assert (= (licenseTracker/-862103770 var3514!12) var1088)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var1173-to-var2779=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var3291_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), var626-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), cast-from-var626-to-var993=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var3677-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var3677-to-var883=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var1173=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var3514=r0, var2427=i0, var406=z0, var1661=com.google.javascript.jscomp.SourceMap$DetailLevel, var3857=r2, var704=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var1088=r3, var2779=com.google.javascript.jscomp.CodeConsumer, var824=$r1, var632=1024, var3815=$z1, var3291=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var926=$i1, var626=java.util.ArrayDeque, var2829=$r4, var993=java.util.Deque, var3677=java.util.ArrayList, var2386=$r5, var883=java.util.List, var3495=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var1173, r0=var3514, i0=var2427, z0=var406, com.google.javascript.jscomp.SourceMap$DetailLevel=var1661, r2=var3857, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var704, r3=var1088, com.google.javascript.jscomp.CodeConsumer=var2779, $r1=var824, 1024=var632, $z1=var3815, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3291, $i1=var926, java.util.ArrayDeque=var626, $r4=var2829, java.util.Deque=var993, java.util.ArrayList=var3677, $r5=var2386, java.util.List=var883, $r6=var3495}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = new java.util.ArrayDeque;	specialinvoke $r4.<java.util.ArrayDeque: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
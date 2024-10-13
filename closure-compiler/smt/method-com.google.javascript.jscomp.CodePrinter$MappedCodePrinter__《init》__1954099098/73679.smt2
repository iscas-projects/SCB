(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var889 0)
(declare-sort var1165 0)
(declare-sort var3797 0)
(declare-sort var3158 0)
(declare-sort var618 0)
(declare-sort var3406 0)
(declare-sort var2015 0)
(declare-sort var2978 0)
(declare-sort var1051 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var3158) void)
(declare-fun cast-from-var889-to-var3158 (var889) var3158)
(declare-fun firstCandidateMappingForCut/-862103770 (var889) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var889) String)
(declare-fun lineLength/-862103770 (var889) Int)
(declare-fun lineIndex/-862103770 (var889) Int)
(declare-fun var618_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var889) Int)
(declare-fun createSrcMap/-862103770 (var889) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var889) var1165)
(declare-fun cast-from-var3406-to-var2015 (var3406) var2015)
(declare-fun mappings/-862103770 (var889) var2015)
(declare-fun var2978-init () var2978)
(declare-fun <init>/-325640736 (var2978) void)
(declare-fun cast-from-var2978-to-var1051 (var2978) var1051)
(declare-fun allMappings/-862103770 (var889) var1051)
(declare-fun completeMappings/-862103770 (var889) var1051)
(declare-fun licenseTracker/-862103770 (var889) var3797)
(declare-const null-var889 var889)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var1165 var1165)
(declare-const null-var3797 var3797)
(declare-const null-var3406 var3406)
(declare-const var2193 var889) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var2193 null-var889)))
(declare-const var2206 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2206 null-Int)))
(declare-const var1734 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1734 null-Bool)))
(declare-const var728 var1165) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var728 null-var1165)))
(declare-const var1551 var3797) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var1551 null-var3797)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var889-to-var3158 var2193))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var2193!1 var889)
(declare-const var2193!2 var889)
(assert (not (= var2193!2 null-var889)))
(assert (= (firstCandidateMappingForCut/-862103770 var2193!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var1513 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1513 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var1513!1 String)
(declare-const var3358 Int)
(declare-const var2193!3 var889)
(assert (not (= var2193!3 null-var889)))
(assert (= (code/-862103770 var2193!3) var1513!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var2193!4 var889)
(assert (not (= var2193!4 null-var889)))
(assert (= (lineLength/-862103770 var2193!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var2193!5 var889)
(assert (not (= var2193!5 null-var889)))
(assert (= (lineIndex/-862103770 var2193!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var728 null-var1165))) ; Negate: Cond: r2 == null  
(define-const var1681 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var618_checkState/1431124798 var1681)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var1681!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (> var2206 0)) ; Cond: i0 > 0 
(define-const var140 Int var2206) ; Statement: $i1 = i0 
(assert true) ; Non Conditional
(declare-const var2193!6 var889)
(assert (not (= var2193!6 null-var889)))
(assert (= (lineLengthThreshold/-862103770 var2193!6) var140)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var2193!7 var889)
(assert (not (= var2193!7 null-var889)))
(assert (= (createSrcMap/-862103770 var2193!7) var1734)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var2193!8 var889)
(assert (not (= var2193!8 null-var889)))
(assert (= (sourceMapDetailLevel/-862103770 var2193!8) var728)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var1734 1 0) 0)) ; Cond: z0 == 0 
(define-const var3896 var3406 null-var3406) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var2193!9 var889)
(assert (not (= var2193!9 null-var889)))
(assert (= (mappings/-862103770 var2193!9) (cast-from-var3406-to-var2015 var3896))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var1734 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3314 var2978 var2978-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3314)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var3314!1 var2978)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var2193!10 var889)
(assert (not (= var2193!10 null-var889)))
(assert (= (allMappings/-862103770 var2193!10) (cast-from-var2978-to-var1051 var3314!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var1734 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3946 var2978 var2978-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3946)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var3946!1 var2978)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var2193!11 var889)
(assert (not (= var2193!11 null-var889)))
(assert (= (completeMappings/-862103770 var2193!11) (cast-from-var2978-to-var1051 var3946!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var2193!12 var889)
(assert (not (= var2193!12 null-var889)))
(assert (= (licenseTracker/-862103770 var2193!12) var1551)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var889-to-var3158=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var618_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var3406-to-var2015=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var2978-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var2978-to-var1051=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var889=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var2193=r0, var2206=i0, var1734=z0, var1165=com.google.javascript.jscomp.SourceMap$DetailLevel, var728=r2, var3797=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var1551=r3, var3158=com.google.javascript.jscomp.CodeConsumer, var1513=$r1, var3358=1024, var1681=$z1, var618=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var140=$i1, var3406=java.util.ArrayDeque, var3896=$r4, var2015=java.util.Deque, var2978=java.util.ArrayList, var3314=$r5, var1051=java.util.List, var3946=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var889, r0=var2193, i0=var2206, z0=var1734, com.google.javascript.jscomp.SourceMap$DetailLevel=var1165, r2=var728, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var3797, r3=var1551, com.google.javascript.jscomp.CodeConsumer=var3158, $r1=var1513, 1024=var3358, $z1=var1681, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var618, $i1=var140, java.util.ArrayDeque=var3406, $r4=var3896, java.util.Deque=var2015, java.util.ArrayList=var2978, $r5=var3314, java.util.List=var1051, $r6=var3946}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = i0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
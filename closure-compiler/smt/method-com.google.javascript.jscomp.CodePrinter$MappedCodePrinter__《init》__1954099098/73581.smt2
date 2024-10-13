(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var975 0)
(declare-sort var2424 0)
(declare-sort var1835 0)
(declare-sort var2045 0)
(declare-sort var2307 0)
(declare-sort var691 0)
(declare-sort var1218 0)
(declare-sort var336 0)
(declare-sort var1327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-519974615 (var2045) void)
(declare-fun cast-from-var975-to-var2045 (var975) var2045)
(declare-fun firstCandidateMappingForCut/-862103770 (var975) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun code/-862103770 (var975) String)
(declare-fun lineLength/-862103770 (var975) Int)
(declare-fun lineIndex/-862103770 (var975) Int)
(declare-fun var2307_checkState/1431124798 (Bool) void)
(declare-fun lineLengthThreshold/-862103770 (var975) Int)
(declare-fun createSrcMap/-862103770 (var975) Bool)
(declare-fun sourceMapDetailLevel/-862103770 (var975) var2424)
(declare-fun cast-from-var691-to-var1218 (var691) var1218)
(declare-fun mappings/-862103770 (var975) var1218)
(declare-fun var336-init () var336)
(declare-fun <init>/-325640736 (var336) void)
(declare-fun cast-from-var336-to-var1327 (var336) var1327)
(declare-fun allMappings/-862103770 (var975) var1327)
(declare-fun completeMappings/-862103770 (var975) var1327)
(declare-fun licenseTracker/-862103770 (var975) var1835)
(declare-const null-var975 var975)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var2424 var2424)
(declare-const null-var1835 var1835)
(declare-const null-var691 var691)
(declare-const var3588 var975) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var3588 null-var975)))
(declare-const var3623 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3623 null-Int)))
(declare-const var3710 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3710 null-Bool)))
(declare-const var1711 var2424) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel 
(assert (not (= var1711 null-var2424)))
(declare-const var541 var1835) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var541 null-var1835)))
(assert true)
;(assert (<init>/-519974615 (cast-from-var975-to-var2045 var3588))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>() 

(declare-const var3588!1 var975)
(declare-const var3588!2 var975)
(assert (not (= var3588!2 null-var975)))
(assert (= (firstCandidateMappingForCut/-862103770 var3588!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0 
(define-const var170 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var170 1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024) 

(declare-const var170!1 String)
(declare-const var1439 Int)
(declare-const var3588!3 var975)
(assert (not (= var3588!3 null-var975)))
(assert (= (code/-862103770 var3588!3) var170!1)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1 
(declare-const var3588!4 var975)
(assert (not (= var3588!4 null-var975)))
(assert (= (lineLength/-862103770 var3588!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0 
(declare-const var3588!5 var975)
(assert (not (= var3588!5 null-var975)))
(assert (= (lineIndex/-862103770 var3588!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0 
 ; Statement: if r2 == null goto $z1 = 0 
(assert (not (= var1711 null-var2424))) ; Negate: Cond: r2 == null  
(define-const var1555 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var2307_checkState/1431124798 var1555)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var1555!1 Bool)
 ; Statement: if i0 > 0 goto $i1 = i0 
(assert (not (> var3623 0))) ; Negate: Cond: i0 > 0  
(define-const var3574 Int 2147483647) ; Statement: $i1 = 2147483647 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1] 
(assert true) ; Non Conditional
(declare-const var3588!6 var975)
(assert (not (= var3588!6 null-var975)))
(assert (= (lineLengthThreshold/-862103770 var3588!6) var3574)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1 
(declare-const var3588!7 var975)
(assert (not (= var3588!7 null-var975)))
(assert (= (createSrcMap/-862103770 var3588!7) var3710)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0 
(declare-const var3588!8 var975)
(assert (not (= var3588!8 null-var975)))
(assert (= (sourceMapDetailLevel/-862103770 var3588!8) var1711)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2 
 ; Statement: if z0 == 0 goto $r4 = null 
(assert (= (ite var3710 1 0) 0)) ; Cond: z0 == 0 
(define-const var1516 var691 null-var691) ; Statement: $r4 = null 
(assert true) ; Non Conditional
(declare-const var3588!9 var975)
(assert (not (= var3588!9 null-var975)))
(assert (= (mappings/-862103770 var3588!9) (cast-from-var691-to-var1218 var1516))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4 
 ; Statement: if z0 == 0 goto $r5 = null 
(assert (not (= (ite var3710 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2309 var336 var336-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2309)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var2309!1 var336)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5] 
(assert true) ; Non Conditional
(declare-const var3588!10 var975)
(assert (not (= var3588!10 null-var975)))
(assert (= (allMappings/-862103770 var3588!10) (cast-from-var336-to-var1327 var2309!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5 
 ; Statement: if z0 == 0 goto $r6 = null 
(assert (not (= (ite var3710 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var775 var336 var336-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var775)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var775!1 var336)
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6] 
(assert true) ; Non Conditional
(declare-const var3588!11 var975)
(assert (not (= var3588!11 null-var975)))
(assert (= (completeMappings/-862103770 var3588!11) (cast-from-var336-to-var1327 var775!1))) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6 
(declare-const var3588!12 var975)
(assert (not (= var3588!12 null-var975)))
(assert (= (licenseTracker/-862103770 var3588!12) var541)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-519974615=([com.google.javascript.jscomp.CodeConsumer], void), cast-from-var975-to-var2045=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodeConsumer), firstCandidateMappingForCut/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), var2307_checkState/1431124798=([boolean], void), lineLengthThreshold/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), createSrcMap/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], boolean), sourceMapDetailLevel/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.SourceMap$DetailLevel), cast-from-var691-to-var1218=([java.util.ArrayDeque], java.util.Deque), mappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.Deque), var336-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var336-to-var1327=([java.util.ArrayList], java.util.List), allMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), completeMappings/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.util.List), licenseTracker/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], com.google.javascript.jscomp.CodePrinter$LicenseTracker)}
; {var975=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var3588=r0, var3623=i0, var3710=z0, var2424=com.google.javascript.jscomp.SourceMap$DetailLevel, var1711=r2, var1835=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var541=r3, var2045=com.google.javascript.jscomp.CodeConsumer, var170=$r1, var1439=1024, var1555=$z1, var2307=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3574=$i1, var691=java.util.ArrayDeque, var1516=$r4, var1218=java.util.Deque, var336=java.util.ArrayList, var2309=$r5, var1327=java.util.List, var775=$r6}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var975, r0=var3588, i0=var3623, z0=var3710, com.google.javascript.jscomp.SourceMap$DetailLevel=var2424, r2=var1711, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var1835, r3=var541, com.google.javascript.jscomp.CodeConsumer=var2045, $r1=var170, 1024=var1439, $z1=var1555, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2307, $i1=var3574, java.util.ArrayDeque=var691, $r4=var1516, java.util.Deque=var1218, java.util.ArrayList=var336, $r5=var2309, java.util.List=var1327, $r6=var775}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	i0 := @parameter0: int;	z0 := @parameter1: boolean;	r2 := @parameter2: com.google.javascript.jscomp.SourceMap$DetailLevel;	r3 := @parameter3: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	specialinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void <init>()>();	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int firstCandidateMappingForCut> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(1024);	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> = $r1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = 0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineIndex> = 0;	if r2 == null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	if i0 > 0 goto $i1 = i0;	$i1 = 2147483647;	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLengthThreshold> = $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: boolean createSrcMap> = z0;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.SourceMap$DetailLevel sourceMapDetailLevel> = r2;	if z0 == 0 goto $r4 = null;	$r4 = null;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.Deque mappings> = $r4;	if z0 == 0 goto $r5 = null;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List allMappings> = $r5;	if z0 == 0 goto $r6 = null;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	goto [?= r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6];	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.util.List completeMappings> = $r6;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: com.google.javascript.jscomp.CodePrinter$LicenseTracker licenseTracker> = r3;	return
;block_num 11
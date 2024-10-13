(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var862 0)
(declare-sort var171 0)
(declare-sort var3740 0)
(declare-sort var532 0)
(declare-sort var3221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var171-init () var171)
(declare-fun <init>/-1385965885 (var171) void)
(declare-fun flags/-928935950 (var862) var3740)
(declare-fun languageIn/-367409355 (var3740) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun languageOut/-367409355 (var3740) String)
(declare-fun var532_fromString/-1893263011 (String) var532)
(declare-fun var3221-init () var3221)
(declare-fun <init>/-2133823803 (var3221 String) void)
(declare-const null-var862 var862)
(declare-const var532-UNSUPPORTED var532)
(declare-const var3393 var862) ; Statement: r1 := @this: com.google.javascript.jscomp.CommandLineRunner 
(assert (not (= var3393 null-var862)))
(define-const var3519 var171 var171-init) ; Statement: $r0 = new com.google.javascript.jscomp.CompilerOptions 
(assert true)
;(assert (<init>/-1385965885 var3519)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.CompilerOptions: void <init>()>() 

(declare-const var3519!1 var171)
(define-const var3191 var3740 (flags/-928935950 var3393)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags> 
(define-const var1486 String (languageIn/-367409355 var3191)) ; Statement: $r3 = $r2.<com.google.javascript.jscomp.CommandLineRunner$Flags: java.lang.String languageIn> 
(assert true)
(define-const var636 Bool (isEmpty/-1285796103 var1486)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r4 = r1.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags> 
(assert (not (= (ite var636 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1963 var3740 (flags/-928935950 var3393)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags> 
(define-const var1521 String (languageOut/-367409355 var1963)) ; Statement: $r5 = $r4.<com.google.javascript.jscomp.CommandLineRunner$Flags: java.lang.String languageOut> 
(define-const var1179 var532 (var532_fromString/-1893263011 var1521)) ; Statement: $r136 = staticinvoke <com.google.javascript.jscomp.CompilerOptions$LanguageMode: com.google.javascript.jscomp.CompilerOptions$LanguageMode fromString(java.lang.String)>($r5) 
(define-const var3606 var532 var532-UNSUPPORTED) ; Statement: $r6 = <com.google.javascript.jscomp.CompilerOptions$LanguageMode: com.google.javascript.jscomp.CompilerOptions$LanguageMode UNSUPPORTED> 
 ; Statement: if $r136 != $r6 goto (branch) 
(assert (not (not (= var1179 var3606)))) ; Negate: Cond: $r136 != $r6  
(define-const var1864 var3221 var3221-init) ; Statement: $r128 = new com.google.javascript.jscomp.FlagUsageException 
(assert true)
;(assert (<init>/-2133823803 var1864 "Cannot specify the unsupported set of features for language_out.")) ; Statement: specialinvoke $r128.<com.google.javascript.jscomp.FlagUsageException: void <init>(java.lang.String)>("Cannot specify the unsupported set of features for language_out.") 

(declare-const var1864!1 var3221)
(declare-const var2337 String)
 ; Statement: throw $r128 
(check-sat)
(get-model)
(get-unsat-core)
; {var171-init=([], com.google.javascript.jscomp.CompilerOptions), <init>/-1385965885=([com.google.javascript.jscomp.CompilerOptions], void), flags/-928935950=([com.google.javascript.jscomp.CommandLineRunner], com.google.javascript.jscomp.CommandLineRunner$Flags), languageIn/-367409355=([com.google.javascript.jscomp.CommandLineRunner$Flags], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), languageOut/-367409355=([com.google.javascript.jscomp.CommandLineRunner$Flags], java.lang.String), var532_fromString/-1893263011=([java.lang.String], com.google.javascript.jscomp.CompilerOptions$LanguageMode), var3221-init=([], com.google.javascript.jscomp.FlagUsageException), <init>/-2133823803=([com.google.javascript.jscomp.FlagUsageException, java.lang.String], void)}
; {var862=com.google.javascript.jscomp.CommandLineRunner, var3393=r1, var171=com.google.javascript.jscomp.CompilerOptions, var3519=$r0, var3740=com.google.javascript.jscomp.CommandLineRunner$Flags, var3191=$r2, var1486=$r3, var636=$z0, var1963=$r4, var1521=$r5, var532=com.google.javascript.jscomp.CompilerOptions$LanguageMode, var1179=$r136, var3606=$r6, var3221=com.google.javascript.jscomp.FlagUsageException, var1864=$r128, var2337="Cannot specify the unsupported set of features for language_out."}
; {com.google.javascript.jscomp.CommandLineRunner=var862, r1=var3393, com.google.javascript.jscomp.CompilerOptions=var171, $r0=var3519, com.google.javascript.jscomp.CommandLineRunner$Flags=var3740, $r2=var3191, $r3=var1486, $z0=var636, $r4=var1963, $r5=var1521, com.google.javascript.jscomp.CompilerOptions$LanguageMode=var532, $r136=var1179, $r6=var3606, com.google.javascript.jscomp.FlagUsageException=var3221, $r128=var1864, "Cannot specify the unsupported set of features for language_out."=var2337}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.CommandLineRunner;	$r0 = new com.google.javascript.jscomp.CompilerOptions;	specialinvoke $r0.<com.google.javascript.jscomp.CompilerOptions: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags>;	$r3 = $r2.<com.google.javascript.jscomp.CommandLineRunner$Flags: java.lang.String languageIn>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r4 = r1.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags>;	$r4 = r1.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags>;	$r5 = $r4.<com.google.javascript.jscomp.CommandLineRunner$Flags: java.lang.String languageOut>;	$r136 = staticinvoke <com.google.javascript.jscomp.CompilerOptions$LanguageMode: com.google.javascript.jscomp.CompilerOptions$LanguageMode fromString(java.lang.String)>($r5);	$r6 = <com.google.javascript.jscomp.CompilerOptions$LanguageMode: com.google.javascript.jscomp.CompilerOptions$LanguageMode UNSUPPORTED>;	if $r136 != $r6 goto (branch);	$r128 = new com.google.javascript.jscomp.FlagUsageException;	specialinvoke $r128.<com.google.javascript.jscomp.FlagUsageException: void <init>(java.lang.String)>("Cannot specify the unsupported set of features for language_out.");	throw $r128
;block_num 3
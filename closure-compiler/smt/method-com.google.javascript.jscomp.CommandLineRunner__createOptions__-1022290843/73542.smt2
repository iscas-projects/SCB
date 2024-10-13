(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2809 0)
(declare-sort var847 0)
(declare-sort var886 0)
(declare-sort var80 0)
(declare-sort var214 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var847-init () var847)
(declare-fun <init>/-1385965885 (var847) void)
(declare-fun flags/-928935950 (var2809) var886)
(declare-fun languageIn/-367409355 (var886) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var80_fromString/-1893263011 (String) var80)
(declare-fun var214-init () var214)
(declare-fun <init>/-2133823803 (var214 String) void)
(declare-const null-var2809 var2809)
(declare-const var80-UNSUPPORTED var80)
(declare-const var3757 var2809) ; Statement: r1 := @this: com.google.javascript.jscomp.CommandLineRunner 
(assert (not (= var3757 null-var2809)))
(define-const var3324 var847 var847-init) ; Statement: $r0 = new com.google.javascript.jscomp.CompilerOptions 
(assert true)
;(assert (<init>/-1385965885 var3324)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.CompilerOptions: void <init>()>() 

(declare-const var3324!1 var847)
(define-const var2808 var886 (flags/-928935950 var3757)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags> 
(define-const var1402 String (languageIn/-367409355 var2808)) ; Statement: $r3 = $r2.<com.google.javascript.jscomp.CommandLineRunner$Flags: java.lang.String languageIn> 
(assert true)
(define-const var93 Bool (isEmpty/-1285796103 var1402)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r4 = r1.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags> 
(assert (not (not (= (ite var93 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2000 var886 (flags/-928935950 var3757)) ; Statement: $r129 = r1.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags> 
(define-const var414 String (languageIn/-367409355 var2000)) ; Statement: $r130 = $r129.<com.google.javascript.jscomp.CommandLineRunner$Flags: java.lang.String languageIn> 
(define-const var2767 var80 (var80_fromString/-1893263011 var414)) ; Statement: r151 = staticinvoke <com.google.javascript.jscomp.CompilerOptions$LanguageMode: com.google.javascript.jscomp.CompilerOptions$LanguageMode fromString(java.lang.String)>($r130) 
(define-const var2706 var80 var80-UNSUPPORTED) ; Statement: $r131 = <com.google.javascript.jscomp.CompilerOptions$LanguageMode: com.google.javascript.jscomp.CompilerOptions$LanguageMode UNSUPPORTED> 
 ; Statement: if r151 != $r131 goto (branch) 
(assert (not (not (= var2767 var2706)))) ; Negate: Cond: r151 != $r131  
(define-const var1068 var214 var214-init) ; Statement: $r137 = new com.google.javascript.jscomp.FlagUsageException 
(assert true)
;(assert (<init>/-2133823803 var1068 "Cannot specify the unsupported set of features for language_in.")) ; Statement: specialinvoke $r137.<com.google.javascript.jscomp.FlagUsageException: void <init>(java.lang.String)>("Cannot specify the unsupported set of features for language_in.") 

(declare-const var1068!1 var214)
(declare-const var1265 String)
 ; Statement: throw $r137 
(check-sat)
(get-model)
(get-unsat-core)
; {var847-init=([], com.google.javascript.jscomp.CompilerOptions), <init>/-1385965885=([com.google.javascript.jscomp.CompilerOptions], void), flags/-928935950=([com.google.javascript.jscomp.CommandLineRunner], com.google.javascript.jscomp.CommandLineRunner$Flags), languageIn/-367409355=([com.google.javascript.jscomp.CommandLineRunner$Flags], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var80_fromString/-1893263011=([java.lang.String], com.google.javascript.jscomp.CompilerOptions$LanguageMode), var214-init=([], com.google.javascript.jscomp.FlagUsageException), <init>/-2133823803=([com.google.javascript.jscomp.FlagUsageException, java.lang.String], void)}
; {var2809=com.google.javascript.jscomp.CommandLineRunner, var3757=r1, var847=com.google.javascript.jscomp.CompilerOptions, var3324=$r0, var886=com.google.javascript.jscomp.CommandLineRunner$Flags, var2808=$r2, var1402=$r3, var93=$z0, var2000=$r129, var414=$r130, var80=com.google.javascript.jscomp.CompilerOptions$LanguageMode, var2767=r151, var2706=$r131, var214=com.google.javascript.jscomp.FlagUsageException, var1068=$r137, var1265="Cannot specify the unsupported set of features for language_in."}
; {com.google.javascript.jscomp.CommandLineRunner=var2809, r1=var3757, com.google.javascript.jscomp.CompilerOptions=var847, $r0=var3324, com.google.javascript.jscomp.CommandLineRunner$Flags=var886, $r2=var2808, $r3=var1402, $z0=var93, $r129=var2000, $r130=var414, com.google.javascript.jscomp.CompilerOptions$LanguageMode=var80, r151=var2767, $r131=var2706, com.google.javascript.jscomp.FlagUsageException=var214, $r137=var1068, "Cannot specify the unsupported set of features for language_in."=var1265}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.CommandLineRunner;	$r0 = new com.google.javascript.jscomp.CompilerOptions;	specialinvoke $r0.<com.google.javascript.jscomp.CompilerOptions: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags>;	$r3 = $r2.<com.google.javascript.jscomp.CommandLineRunner$Flags: java.lang.String languageIn>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r4 = r1.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags>;	$r129 = r1.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags>;	$r130 = $r129.<com.google.javascript.jscomp.CommandLineRunner$Flags: java.lang.String languageIn>;	r151 = staticinvoke <com.google.javascript.jscomp.CompilerOptions$LanguageMode: com.google.javascript.jscomp.CompilerOptions$LanguageMode fromString(java.lang.String)>($r130);	$r131 = <com.google.javascript.jscomp.CompilerOptions$LanguageMode: com.google.javascript.jscomp.CompilerOptions$LanguageMode UNSUPPORTED>;	if r151 != $r131 goto (branch);	$r137 = new com.google.javascript.jscomp.FlagUsageException;	specialinvoke $r137.<com.google.javascript.jscomp.FlagUsageException: void <init>(java.lang.String)>("Cannot specify the unsupported set of features for language_in.");	throw $r137
;block_num 3
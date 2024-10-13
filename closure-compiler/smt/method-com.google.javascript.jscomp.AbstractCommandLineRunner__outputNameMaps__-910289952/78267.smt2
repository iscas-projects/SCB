(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var397 0)
(declare-sort var2596 0)
(declare-sort var2044 0)
(declare-sort var1893 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-1513802512 (var397) var2044)
(declare-fun createNameMapFiles/781817645 (var2044) Bool)
(declare-fun variableMapOutputFile/781817645 (var2044) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1893-init () var1893)
(declare-fun <init>/-2133823803 (var1893 String) void)
(declare-const null-var397 var397)
(declare-const null-String String)
(declare-const var1316 var397) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var1316 null-var397)))
(define-const var2769 String null-String) ; Statement: r21 = null 
(define-const var1787 String null-String) ; Statement: r22 = null 
(define-const var1997 var2044 (config/-1513802512 var1316)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var766 Bool (createNameMapFiles/781817645 var1997)) ; Statement: $z0 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: boolean createNameMapFiles> 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(assert (= (ite var766 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2720 var2044 (config/-1513802512 var1316)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var2762 String (variableMapOutputFile/781817645 var2720)) ; Statement: $r3 = $r2.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String variableMapOutputFile> 
(assert true)
(define-const var339 Bool (isEmpty/-1285796103 var2762)) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $r4 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(assert (not (not (= (ite var339 1 0) 0)))) ; Negate: Cond: $z1 != 0  
 ; Statement: if r22 == null goto $r16 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(assert (not (= var1787 null-String))) ; Negate: Cond: r22 == null  
(define-const var1298 var1893 var1893-init) ; Statement: $r17 = new com.google.javascript.jscomp.FlagUsageException 
(assert true)
;(assert (<init>/-2133823803 var1298 "The flags variable_map_output_file and create_name_map_files cannot both be used simultaneously.")) ; Statement: specialinvoke $r17.<com.google.javascript.jscomp.FlagUsageException: void <init>(java.lang.String)>("The flags variable_map_output_file and create_name_map_files cannot both be used simultaneously.") 

(declare-const var1298!1 var1893)
(declare-const var2641 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig), createNameMapFiles/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], boolean), variableMapOutputFile/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var1893-init=([], com.google.javascript.jscomp.FlagUsageException), <init>/-2133823803=([com.google.javascript.jscomp.FlagUsageException, java.lang.String], void)}
; {var397=com.google.javascript.jscomp.AbstractCommandLineRunner, var1316=r0, var2596=null_type, var2769=r21, var1787=r22, var2044=com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig, var1997=$r1, var766=$z0, var2720=$r2, var2762=$r3, var339=$z1, var1893=com.google.javascript.jscomp.FlagUsageException, var1298=$r17, var2641="The flags variable_map_output_file and create_name_map_files cannot both be used simultaneously."}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var397, r0=var1316, null_type=var2596, r21=var2769, r22=var1787, com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig=var2044, $r1=var1997, $z0=var766, $r2=var2720, $r3=var2762, $z1=var339, com.google.javascript.jscomp.FlagUsageException=var1893, $r17=var1298, "The flags variable_map_output_file and create_name_map_files cannot both be used simultaneously."=var2641}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	r21 = null;	r22 = null;	$r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$z0 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: boolean createNameMapFiles>;	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r2 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r3 = $r2.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String variableMapOutputFile>;	$z1 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto $r4 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	if r22 == null goto $r16 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r17 = new com.google.javascript.jscomp.FlagUsageException;	specialinvoke $r17.<com.google.javascript.jscomp.FlagUsageException: void <init>(java.lang.String)>("The flags variable_map_output_file and create_name_map_files cannot both be used simultaneously.");	throw $r17
;block_num 4
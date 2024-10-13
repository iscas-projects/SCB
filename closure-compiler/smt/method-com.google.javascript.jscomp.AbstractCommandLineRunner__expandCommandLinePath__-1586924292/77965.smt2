(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1714 0)
(declare-sort var2324 0)
(declare-sort var1602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getChunkOutputFileName/-1891649860 (var1714 var1602) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1714 var1714)
(declare-const null-String String)
(declare-const null-var1602 var1602)
(declare-const var1455 var1714) ; Statement: r1 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var1455 null-var1714)))
(declare-const var1209 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1209 null-String)))
(declare-const var603 var1602) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.JSChunk 
(assert (not (= var603 null-var1602)))
 ; Statement: if r0 == null goto $r2 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(assert (not (= var603 null-var1602))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var2669 String (getChunkOutputFileName/-1891649860 var1455 var603)) ; Statement: r7 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.lang.String getChunkOutputFileName(com.google.javascript.jscomp.JSChunk)>(r0) 
 ; Statement: goto [?= $r8 = virtualinvoke r5.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("%outname%", r7)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1405 String (replace/2138489945 var1209 (cast-from-String-to-String "%outname%") (cast-from-String-to-String var2669))) ; Statement: $r8 = virtualinvoke r5.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("%outname%", r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getChunkOutputFileName/-1891649860=([com.google.javascript.jscomp.AbstractCommandLineRunner, com.google.javascript.jscomp.JSChunk], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1714=com.google.javascript.jscomp.AbstractCommandLineRunner, var1455=r1, var1209=r5, var2324=null_type, var1602=com.google.javascript.jscomp.JSChunk, var603=r0, var2669=r7, var1405=$r8}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var1714, r1=var1455, r5=var1209, null_type=var2324, com.google.javascript.jscomp.JSChunk=var1602, r0=var603, r7=var2669, $r8=var1405}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	r5 := @parameter0: java.lang.String;	r0 := @parameter1: com.google.javascript.jscomp.JSChunk;	if r0 == null goto $r2 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	r7 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.lang.String getChunkOutputFileName(com.google.javascript.jscomp.JSChunk)>(r0);	goto [?= $r8 = virtualinvoke r5.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("%outname%", r7)];	$r8 = virtualinvoke r5.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("%outname%", r7);	return $r8
;block_num 3
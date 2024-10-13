(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1969 0)
(declare-sort var2190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2190_canonicalizePath/2073319963 (String) String)
(declare-const null-String String)
(declare-const var866 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var866 null-String)))
(assert true)
(define-const var2838 String (replace/1524665721 var866 58 45)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(58, 45) 
(assert true)
(define-const var580 String (replace/1524665721 var2838 92 47)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
(assert true)
(define-const var862 String (replace/2138489945 var580 (cast-from-String-to-String " ") (cast-from-String-to-String "%20"))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(" ", "%20") 
(assert true)
(define-const var3930 String (replace/2138489945 var862 (cast-from-String-to-String "[") (cast-from-String-to-String "%5B"))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("[", "%5B") 
(assert true)
(define-const var2923 String (replace/2138489945 var3930 (cast-from-String-to-String "]") (cast-from-String-to-String "%5D"))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("]", "%5D") 
(assert true)
(define-const var1818 String (replace/2138489945 var2923 (cast-from-String-to-String "<") (cast-from-String-to-String "%3C"))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("<", "%3C") 
(assert true)
(define-const var2072 String (replace/2138489945 var1818 (cast-from-String-to-String ">") (cast-from-String-to-String "%3E"))) ; Statement: r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(">", "%3E") 
(define-const var3306 String (var2190_canonicalizePath/2073319963 var2072)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.deps.ModuleNames: java.lang.String canonicalizePath(java.lang.String)>(r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2190_canonicalizePath/2073319963=([java.lang.String], java.lang.String)}
; {var866=r0, var1969=null_type, var2838=$r1, var580=$r2, var862=$r3, var3930=$r4, var2923=$r5, var1818=$r6, var2072=r7, var2190=com.google.javascript.jscomp.deps.ModuleNames, var3306=$r8}
; {r0=var866, null_type=var1969, $r1=var2838, $r2=var580, $r3=var862, $r4=var3930, $r5=var2923, $r6=var1818, r7=var2072, com.google.javascript.jscomp.deps.ModuleNames=var2190, $r8=var3306}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 2,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 5}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(58, 45);	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(" ", "%20");	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("[", "%5B");	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("]", "%5D");	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("<", "%3C");	r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(">", "%3E");	$r8 = staticinvoke <com.google.javascript.jscomp.deps.ModuleNames: java.lang.String canonicalizePath(java.lang.String)>(r7);	return $r8
;block_num 1
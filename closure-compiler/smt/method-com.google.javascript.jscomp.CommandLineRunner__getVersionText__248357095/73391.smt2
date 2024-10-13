(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(declare-const null-var1714 var1714)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var985 var1714) ; Statement: r2 := @this: com.google.javascript.jscomp.CommandLineRunner 
(assert (not (= var985 null-var1714)))
(define-const var3618 (Array Int String) arr-String-init) ; Statement: $r0 = newarray (java.lang.CharSequence)[2] 
(declare-const var3618!1 (Array Int String))
(assert (not (= var3618!1 null-__Array__Int__String__)))
(assert (= (select var3618!1 0) (cast-from-String-to-String "Closure Compiler (http://github.com/google/closure-compiler)"))) ; Statement: $r0[0] = "Closure Compiler (http://github.com/google/closure-compiler)" 
(declare-const var3618!2 (Array Int String))
(assert (not (= var3618!2 null-__Array__Int__String__)))
(assert (= (select var3618!2 1) (cast-from-String-to-String "Version: v20240317"))) ; Statement: $r0[1] = "Version: v20240317" 
(define-const var2278 String (String_join/-1520935655 (cast-from-String-to-String "\n") var3618!2)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>("\n", $r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.CharSequence[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String)}
; {var1714=com.google.javascript.jscomp.CommandLineRunner, var985=r2, var3618=$r0, var2278=$r1}
; {com.google.javascript.jscomp.CommandLineRunner=var1714, r2=var985, $r0=var3618, $r1=var2278}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.CommandLineRunner;	$r0 = newarray (java.lang.CharSequence)[2];	$r0[0] = "Closure Compiler (http://github.com/google/closure-compiler)";	$r0[1] = "Version: v20240317";	$r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>("\n", $r0);	return $r1
;block_num 1
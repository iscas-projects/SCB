(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1458 0)
(declare-sort var689 0)
(declare-sort var1783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1783_toString/-1054155509 (Int) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun syntaxWarn/1760639411 (var1458 String) void)
(declare-const null-var1458 var1458)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3945 var1458) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.joni.Lexer 
(assert (not (= var3945 null-var1458)))
(declare-const var757 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var757 null-String)))
(declare-const var607 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var607 null-Int)))
(define-const var3020 String (var1783_toString/-1054155509 var607)) ; Statement: $r2 = staticinvoke <java.lang.Character: java.lang.String toString(char)>(c0) 
(assert true)
(define-const var1502 String (replace/2138489945 var757 (cast-from-String-to-String "<%n>") (cast-from-String-to-String var3020))) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("<%n>", $r2) 
(assert true)
;(assert (syntaxWarn/1760639411 var3945 var1502)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.joni.Lexer: void syntaxWarn(java.lang.String)>($r3) 

(declare-const var3945!1 var1458)
(declare-const var1502!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1783_toString/-1054155509=([char], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), syntaxWarn/1760639411=([jdk.nashorn.internal.runtime.regexp.joni.Lexer, java.lang.String], void)}
; {var1458=jdk.nashorn.internal.runtime.regexp.joni.Lexer, var3945=r0, var757=r1, var689=null_type, var607=c0, var1783=java.lang.Character, var3020=$r2, var1502=$r3}
; {jdk.nashorn.internal.runtime.regexp.joni.Lexer=var1458, r0=var3945, r1=var757, null_type=var689, c0=var607, java.lang.Character=var1783, $r2=var3020, $r3=var1502}
;seq <java.lang.Character: java.lang.String toString(char)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.joni.Lexer;	r1 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$r2 = staticinvoke <java.lang.Character: java.lang.String toString(char)>(c0);	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("<%n>", $r2);	virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.joni.Lexer: void syntaxWarn(java.lang.String)>($r3);	return
;block_num 1
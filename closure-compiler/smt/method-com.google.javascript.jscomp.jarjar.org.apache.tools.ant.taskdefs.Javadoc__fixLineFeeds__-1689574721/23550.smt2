(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3385 0)
(declare-sort var870 0)
(declare-sort var1660 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1660_lineSeparator/-342590142 () String)
(declare-const null-var3385 var3385)
(declare-const null-String String)
(declare-const var627 var3385) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc 
(assert (not (= var627 null-var3385)))
(declare-const var1092 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1092 null-String)))
(assert true)
(define-const var3061 String (replace/2138489945 var1092 (cast-from-String-to-String "\r\n") (cast-from-String-to-String "\n"))) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\r\n", "\n") 
(define-const var350 String var1660_lineSeparator/-342590142) ; Statement: $r1 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
(define-const var426 String (replace/2138489945 var3061 (cast-from-String-to-String "\n") (cast-from-String-to-String var350))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\n", $r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1660_lineSeparator/-342590142=([], java.lang.String)}
; {var3385=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var627=r4, var1092=r0, var870=null_type, var3061=$r2, var1660=java.lang.System, var350=$r1, var426=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var3385, r4=var627, r0=var1092, null_type=var870, $r2=var3061, java.lang.System=var1660, $r1=var350, $r3=var426}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 2}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc;	r0 := @parameter0: java.lang.String;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\r\n", "\n");	$r1 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\n", $r1);	return $r3
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1432 0)
(declare-sort var233 0)
(declare-sort var2135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_join/1594745010 (String var2135) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var233-to-var2135 (var233) var2135)
(declare-const null-var1432 var1432)
(declare-const null-var233 var233)
(declare-const var866 var1432) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage 
(assert (not (= var866 null-var1432)))
(declare-const var2985 var233) ; Statement: r0 := @parameter0: java.util.Vector 
(assert (not (= var2985 null-var233)))
(define-const var883 String (String_join/1594745010 (cast-from-String-to-String ", ") (cast-from-var233-to-var2135 var2985))) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var233-to-var2135=([java.util.Vector], java.lang.Iterable)}
; {var1432=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, var866=r2, var233=java.util.Vector, var2985=r0, var2135=java.lang.Iterable, var883=$r1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage=var1432, r2=var866, java.util.Vector=var233, r0=var2985, java.lang.Iterable=var2135, $r1=var883}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage;	r0 := @parameter0: java.util.Vector;	$r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", r0);	return $r1
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3565 0)
(declare-sort var1550 0)
(declare-sort var1022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun values/146580643 (var3565) var1550)
(declare-fun isEmpty/633059479 (var1550) Bool)
(declare-fun String_join/1594745010 (String var1022) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var1550-to-var1022 (var1550) var1022)
(declare-const null-var3565 var3565)
(declare-const var1553 var3565) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute 
(assert (not (= var1553 null-var3565)))
(define-const var409 var1550 (values/146580643 var1553)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.util.Vector values> 
(assert true)
(define-const var1376 Bool (isEmpty/633059479 var409)) ; Statement: $z0 = virtualinvoke $r1.<java.util.Vector: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.util.Vector values> 
(assert (= (ite var1376 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2796 var1550 (values/146580643 var1553)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.util.Vector values> 
(define-const var3624 String (String_join/1594745010 (cast-from-String-to-String " ") (cast-from-var1550-to-var1022 var2796))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(" ", $r2) 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {values/146580643=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute], java.util.Vector), isEmpty/633059479=([java.util.Vector], boolean), String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var1550-to-var1022=([java.util.Vector], java.lang.Iterable)}
; {var3565=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute, var1553=r0, var1550=java.util.Vector, var409=$r1, var1376=$z0, var2796=$r2, var1022=java.lang.Iterable, var3624=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute=var3565, r0=var1553, java.util.Vector=var1550, $r1=var409, $z0=var1376, $r2=var2796, java.lang.Iterable=var1022, $r3=var3624}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.util.Vector values>;	$z0 = virtualinvoke $r1.<java.util.Vector: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.util.Vector values>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.util.Vector values>;	$r3 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(" ", $r2);	return $r3
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun qualifiedName/1699701859 (var592) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var592 var592)
(declare-const var2784 var592) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname 
(assert (not (= var2784 null-var592)))
(define-const var2953 String (qualifiedName/1699701859 var2784)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String qualifiedName> 
(assert true)
(define-const var2355 String (replace/1524665721 var2953 46 95)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {qualifiedName/1699701859=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var592=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname, var2784=r0, var2953=$r1, var2355=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname=var592, r0=var2784, $r1=var2953, $r2=var2355}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String qualifiedName>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	return $r2
;block_num 1
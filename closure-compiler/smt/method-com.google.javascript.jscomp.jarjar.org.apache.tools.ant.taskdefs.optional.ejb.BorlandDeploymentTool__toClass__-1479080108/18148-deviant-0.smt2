(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1063 0)
(declare-sort var1149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var1063 var1063)
(declare-const null-String String)
(declare-const var3107 var1063) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool 
(assert (not (= var3107 null-var1063)))
(declare-const var3458 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3458 null-String)))
(assert true)
(define-const var3330 Int (lastIndexOf/-618837785 var3458 ".class")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(".class") 
(assert (not (and true (and (>= 0 0) (>= (str.len var3458) var3330) (>= var3330 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var1063=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool, var3107=r4, var3458=r0, var1149=null_type, var3330=$i0, var2380=$r1, var1769=$r2, var2662=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool=var1063, r4=var3107, r0=var3458, null_type=var1149, $i0=var3330, $r1=var2380, $r2=var1769, $r3=var2662}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 2}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(".class");	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(92, 46);	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	return $r3
;block_num 1
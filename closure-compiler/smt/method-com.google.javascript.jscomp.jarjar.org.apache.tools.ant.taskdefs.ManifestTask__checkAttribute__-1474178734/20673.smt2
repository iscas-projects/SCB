(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2196 0)
(declare-sort var794 0)
(declare-sort var673 0)
(declare-sort var758 0)
(declare-sort var2280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1484222478 (var794) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var673-init () var673)
(declare-fun arr-var758-init () (Array Int var758))
(declare-fun var2280_valueOf/-1186540555 (Int) var2280)
(declare-fun cast-from-var2280-to-var758 (var2280) var758)
(declare-fun <init>/1887414589 (var673 String (Array Int var758)) void)
(declare-const null-var2196 var2196)
(declare-const null-var794 var794)
(declare-const null-__Array__Int__var758__ (Array Int var758))
(declare-const var392 var2196) ; Statement: r9 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestTask 
(assert (not (= var392 null-var2196)))
(declare-const var346 var794) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute 
(assert (not (= var346 null-var794)))
(assert true)
(define-const var1161 String (getName/-1484222478 var346)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.lang.String getName()>() 
(assert (and true (and (> (str.len var1161) 0) (<= 0 0))))
(define-const var2860 Int (charAt/698050440 var1161 0)) ; Statement: c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(define-const var2195 Int (cast-from-Int-to-Int var2860)) ; Statement: $i5 = (int) c2 
 ; Statement: if $i5 == 45 goto $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (= var2195 45)) ; Cond: $i5 == 45 
(define-const var685 var673 var673-init) ; Statement: $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var641 (Array Int var758) arr-var758-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(define-const var2582 var2280 (var2280_valueOf/-1186540555 var2860)) ; Statement: $r4 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(c2) 
(declare-const var641!1 (Array Int var758))
(assert (not (= var641!1 null-__Array__Int__var758__)))
(assert (= (select var641!1 0) (cast-from-var2280-to-var758 var2582))) ; Statement: $r3[0] = $r4 
(assert true)
;(assert (<init>/1887414589 var685 "Manifest attribute names must not start with \u0027%c\u0027." var641!1)) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Object[])>("Manifest attribute names must not start with \'%c\'.", $r3) 

(declare-const var685!1 var673)
(declare-const var2697 String)
(declare-const var641!2 (Array Int var758))
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1484222478=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var673-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), arr-var758-init=([], java.lang.Object[]), var2280_valueOf/-1186540555=([char], java.lang.Character), cast-from-var2280-to-var758=([java.lang.Character], java.lang.Object), <init>/1887414589=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Object[]], void)}
; {var2196=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestTask, var392=r9, var794=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute, var346=r0, var1161=r1, var2860=c2, var2195=$i5, var673=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var685=$r10, var758=java.lang.Object, var641=$r3, var2280=java.lang.Character, var2582=$r4, var2697="Manifest attribute names must not start with \'%c\'."}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestTask=var2196, r9=var392, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute=var794, r0=var346, r1=var1161, c2=var2860, $i5=var2195, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var673, $r10=var685, java.lang.Object=var758, $r3=var641, java.lang.Character=var2280, $r4=var2582, "Manifest attribute names must not start with \'%c\'."=var2697}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r9 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestTask;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.lang.String getName()>();	c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$i5 = (int) c2;	if $i5 == 45 goto $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r3 = newarray (java.lang.Object)[1];	$r4 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(c2);	$r3[0] = $r4;	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Object[])>("Manifest attribute names must not start with \'%c\'.", $r3);	throw $r10
;block_num 2
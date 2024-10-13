(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2670 0)
(declare-sort var893 0)
(declare-sort var3378 0)
(declare-sort var3213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var3378) String)
(declare-fun getAttribute/396900717 (var2670 String) var3213)
(declare-const null-var2670 var2670)
(declare-const null-String String)
(declare-const var3378-ENGLISH var3378)
(declare-const null-var3213 var3213)
(declare-const var2027 var2670) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section 
(assert (not (= var2027 null-var2670)))
(declare-const var1322 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1322 null-String)))
(define-const var3689 var3378 var3378-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var599 String (toLowerCase/1946809429 var1322 var3689)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
(define-const var825 var3213 (getAttribute/396900717 var2027 var599)) ; Statement: r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute getAttribute(java.lang.String)>($r3) 
 ; Statement: if r4 != null goto $r5 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.lang.String getValue()>() 
(assert (not (not (= var825 null-var3213)))) ; Negate: Cond: r4 != null  
(define-const var3618 String null-String) ; Statement: $r5 = null 
 ; Statement: goto [?= return $r5] 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), getAttribute/396900717=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section, java.lang.String], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute)}
; {var2670=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section, var2027=r0, var1322=r1, var893=null_type, var3378=java.util.Locale, var3689=$r2, var599=$r3, var3213=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute, var825=r4, var3618=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section=var2670, r0=var2027, r1=var1322, null_type=var893, java.util.Locale=var3378, $r2=var3689, $r3=var599, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute=var3213, r4=var825, $r5=var3618}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section;	r1 := @parameter0: java.lang.String;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute getAttribute(java.lang.String)>($r3);	if r4 != null goto $r5 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.lang.String getValue()>();	$r5 = null;	goto [?= return $r5];	return $r5
;block_num 3
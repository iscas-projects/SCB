(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1450 0)
(declare-sort var3705 0)
(declare-sort var2813 0)
(declare-sort var1945 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var2813) String)
(declare-fun getAttribute/396900717 (var1450 String) var1945)
(declare-fun getValue/-2015680180 (var1945) String)
(declare-const null-var1450 var1450)
(declare-const null-String String)
(declare-const var2813-ENGLISH var2813)
(declare-const null-var1945 var1945)
(declare-const var2369 var1450) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section 
(assert (not (= var2369 null-var1450)))
(declare-const var2326 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2326 null-String)))
(define-const var16 var2813 var2813-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1235 String (toLowerCase/1946809429 var2326 var16)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
(define-const var272 var1945 (getAttribute/396900717 var2369 var1235)) ; Statement: r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute getAttribute(java.lang.String)>($r3) 
 ; Statement: if r4 != null goto $r5 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.lang.String getValue()>() 
(assert (not (= var272 null-var1945))) ; Cond: r4 != null 
(assert true)
(define-const var1051 String (getValue/-2015680180 var272)) ; Statement: $r5 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.lang.String getValue()>() 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), getAttribute/396900717=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section, java.lang.String], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute), getValue/-2015680180=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute], java.lang.String)}
; {var1450=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section, var2369=r0, var2326=r1, var3705=null_type, var2813=java.util.Locale, var16=$r2, var1235=$r3, var1945=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute, var272=r4, var1051=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section=var1450, r0=var2369, r1=var2326, null_type=var3705, java.util.Locale=var2813, $r2=var16, $r3=var1235, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute=var1945, r4=var272, $r5=var1051}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section;	r1 := @parameter0: java.lang.String;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute getAttribute(java.lang.String)>($r3);	if r4 != null goto $r5 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.lang.String getValue()>();	$r5 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.lang.String getValue()>();	return $r5
;block_num 3
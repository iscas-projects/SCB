(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1750 0)
(declare-sort var1000 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun containsWhitespace/390309802 (var1750 String) Bool)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun quoteString/1786494304 (var1750 String Int) String)
(declare-const null-var1750 var1750)
(declare-const null-String String)
(declare-const var2629 var1750) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc 
(assert (not (= var2629 null-var1750)))
(declare-const var1473 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1473 null-String)))
(assert true)
(define-const var1014 Bool (containsWhitespace/390309802 var2629 var1473)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: boolean containsWhitespace(java.lang.String)>(r1) 
 ; Statement: if $z0 != 0 goto $z3 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'") 
(assert (not (= (ite var1014 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var887 Bool (contains/1009244746 var1473 (cast-from-String-to-String "\u0027"))) ; Statement: $z3 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'") 
 ; Statement: if $z3 != 0 goto $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String quoteString(java.lang.String,char)>(r1, 34) 
(assert (not (= (ite var887 1 0) 0))) ; Cond: $z3 != 0 
(assert true)
(define-const var3350 String (quoteString/1786494304 var2629 var1473 34)) ; Statement: $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String quoteString(java.lang.String,char)>(r1, 34) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {containsWhitespace/390309802=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, java.lang.String], boolean), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), quoteString/1786494304=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, java.lang.String, char], java.lang.String)}
; {var1750=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var2629=r0, var1473=r1, var1000=null_type, var1014=$z0, var887=$z3, var3350=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var1750, r0=var2629, r1=var1473, null_type=var1000, $z0=var1014, $z3=var887, $r2=var3350}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc;	r1 := @parameter0: java.lang.String;	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: boolean containsWhitespace(java.lang.String)>(r1);	if $z0 != 0 goto $z3 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'");	$z3 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'");	if $z3 != 0 goto $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String quoteString(java.lang.String,char)>(r1, 34);	$r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String quoteString(java.lang.String,char)>(r1, 34);	return $r2
;block_num 3
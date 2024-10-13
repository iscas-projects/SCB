(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3403 0)
(declare-sort var2340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun containsWhitespace/390309802 (var3403 String) Bool)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun quoteString/1786494304 (var3403 String Int) String)
(declare-const null-var3403 var3403)
(declare-const null-String String)
(declare-const var2027 var3403) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc 
(assert (not (= var2027 null-var3403)))
(declare-const var2625 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2625 null-String)))
(assert true)
(define-const var1298 Bool (containsWhitespace/390309802 var2027 var2625)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: boolean containsWhitespace(java.lang.String)>(r1) 
 ; Statement: if $z0 != 0 goto $z3 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'") 
(assert (not (= (ite var1298 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var221 Bool (contains/1009244746 var2625 (cast-from-String-to-String "\u0027"))) ; Statement: $z3 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'") 
 ; Statement: if $z3 != 0 goto $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String quoteString(java.lang.String,char)>(r1, 34) 
(assert (not (not (= (ite var221 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(assert true)
(define-const var650 String (quoteString/1786494304 var2027 var2625 39)) ; Statement: $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String quoteString(java.lang.String,char)>(r1, 39) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {containsWhitespace/390309802=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, java.lang.String], boolean), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), quoteString/1786494304=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, java.lang.String, char], java.lang.String)}
; {var3403=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var2027=r0, var2625=r1, var2340=null_type, var1298=$z0, var221=$z3, var650=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var3403, r0=var2027, r1=var2625, null_type=var2340, $z0=var1298, $z3=var221, $r3=var650}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc;	r1 := @parameter0: java.lang.String;	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: boolean containsWhitespace(java.lang.String)>(r1);	if $z0 != 0 goto $z3 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'");	$z3 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'");	if $z3 != 0 goto $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String quoteString(java.lang.String,char)>(r1, 34);	$r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String quoteString(java.lang.String,char)>(r1, 39);	return $r3
;block_num 3
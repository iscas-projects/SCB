(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun characters/864334994 (var3527) String)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-const null-var3527 var3527)
(declare-const null-String String)
(declare-const var3116 var3527) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable 
(assert (not (= var3116 null-var3527)))
(define-const var3798 String (characters/864334994 var3116)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer characters> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer characters> 
(assert (not (not (= var3798 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2924 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var2924 0)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>(int)>(0) 

(declare-const var2924!1 String)
(declare-const var1818 Int)
 ; Statement: goto [?= return $r2] 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {characters/864334994=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable], java.lang.StringBuffer), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void)}
; {var3527=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, var3116=r0, var3798=$r1, var2924=$r2, var1818=0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable=var3527, r0=var3116, $r1=var3798, $r2=var2924, 0=var1818}
;seq <java.lang.StringBuffer: void <init>(int)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer characters>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer characters>;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>(int)>(0);	goto [?= return $r2];	return $r2
;block_num 3
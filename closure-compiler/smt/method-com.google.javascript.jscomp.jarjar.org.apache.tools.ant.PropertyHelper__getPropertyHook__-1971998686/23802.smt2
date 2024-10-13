(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1668 0)
(declare-sort var1421 0)
(declare-sort var3374 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNext/-789137122 (var1668) var1668)
(declare-fun project/-1817260062 (var1668) var3374)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1668 var1668)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3374 var3374)
(declare-const var2235 var1668) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper 
(assert (not (= var2235 null-var1668)))
(declare-const var3440 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3440 null-String)))
(declare-const var353 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var353 null-String)))
(declare-const var1814 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1814 null-Bool)))
(assert true)
(define-const var2783 var1668 (getNext/-789137122 var2235)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper getNext()>() 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
(assert (= var2783 null-var1668)) ; Cond: $r1 == null 
(define-const var2910 var3374 (project/-1817260062 var2235)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
 ; Statement: if $r2 == null goto return null 
(assert (not (= var2910 null-var3374))) ; Negate: Cond: $r2 == null  
(assert true)
(define-const var3022 Bool (startsWith/-1785782452 var353 "toString:")) ; Statement: $z0 = virtualinvoke r7.<java.lang.String: boolean startsWith(java.lang.String)>("toString:") 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var3022 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getNext/-789137122=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper), project/-1817260062=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1668=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper, var2235=r0, var3440=r5, var1421=null_type, var353=r7, var1814=z1, var2783=$r1, var3374=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2910=$r2, var3022=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper=var1668, r0=var2235, r5=var3440, null_type=var1421, r7=var353, z1=var1814, $r1=var2783, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3374, $r2=var2910, $z0=var3022}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper;	r5 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper getNext()>();	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	if $r2 == null goto return null;	$z0 = virtualinvoke r7.<java.lang.String: boolean startsWith(java.lang.String)>("toString:");	if $z0 == 0 goto return null;	return null
;block_num 4
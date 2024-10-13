(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1404 0)
(declare-sort var1537 0)
(declare-sort var695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var695_resolveBackSlash/-1445166822 (String) String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun delims/1553901209 (var1404) (Array Int Int))
(declare-const null-var1404 var1404)
(declare-const null-String String)
(declare-const var1033 var1404) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringTokenizer 
(assert (not (= var1033 null-var1404)))
(declare-const var2324 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2324 null-String)))
(define-const var2839 String (var695_resolveBackSlash/-1445166822 var2324)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils: java.lang.String resolveBackSlash(java.lang.String)>(r1) 
(assert true)
(define-const var2137 (Array Int Int) (toCharArray/415275702 var2839)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
(declare-const var1033!1 var1404)
(assert (not (= var1033!1 null-var1404)))
(assert (= (delims/1553901209 var1033!1) var2137)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringTokenizer: char[] delims> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var695_resolveBackSlash/-1445166822=([java.lang.String], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), delims/1553901209=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringTokenizer], char[])}
; {var1404=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringTokenizer, var1033=r0, var2324=r1, var1537=null_type, var695=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils, var2839=$r2, var2137=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringTokenizer=var1404, r0=var1033, r1=var2324, null_type=var1537, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils=var695, $r2=var2839, $r3=var2137}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringTokenizer;	r1 := @parameter0: java.lang.String;	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils: java.lang.String resolveBackSlash(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringTokenizer: char[] delims> = $r3;	return
;block_num 1
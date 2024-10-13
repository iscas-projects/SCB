(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3651 0)
(declare-sort var3632 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun to/1601745531 (var3651) (Array Int Int))
(declare-const null-var3651 var3651)
(declare-const null-String String)
(declare-const var2455 var3651) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper 
(assert (not (= var2455 null-var3651)))
(declare-const var3492 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3492 null-String)))
 ; Statement: if r0 != null goto $r2 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(assert (not (= var3492 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var484 (Array Int Int) (toCharArray/415275702 var3492)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(declare-const var2455!1 var3651)
(assert (not (= var2455!1 null-var3651)))
(assert (= (to/1601745531 var2455!1) var484)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: char[] 'to'> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), to/1601745531=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper], char[])}
; {var3651=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper, var2455=r1, var3492=r0, var3632=null_type, var484=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper=var3651, r1=var2455, r0=var3492, null_type=var3632, $r2=var484}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r2 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$r2 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.RegexpPatternMapper: char[] 'to'> = $r2;	return
;block_num 2
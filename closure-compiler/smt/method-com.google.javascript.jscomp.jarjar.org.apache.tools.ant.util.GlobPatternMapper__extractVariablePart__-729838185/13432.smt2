(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3710 0)
(declare-sort var3519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefixLength/2090461996 (var3710) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun postfixLength/2090461996 (var3710) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3710 var3710)
(declare-const null-String String)
(declare-const var3504 var3710) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper 
(assert (not (= var3504 null-var3710)))
(declare-const var2638 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2638 null-String)))
(define-const var3107 Int (prefixLength/2090461996 var3504)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper: int prefixLength> 
(assert true)
(define-const var3086 Int (length/-134980193 var2638)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3993 Int (postfixLength/2090461996 var3504)) ; Statement: $i1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper: int postfixLength> 
(define-const var3160 Int (- var3086 var3993)) ; Statement: $i3 = $i2 - $i1 
(assert (and true (and (>= var3107 0) (>= (str.len var2638) var3160) (>= var3160 var3107))))
(define-const var3321 String (substring/-1240304868 var2638 var3107 var3160)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i0, $i3) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {prefixLength/2090461996=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper], int), length/-134980193=([java.lang.String], int), postfixLength/2090461996=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3710=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper, var3504=r1, var2638=r0, var3519=null_type, var3107=$i0, var3086=$i2, var3993=$i1, var3160=$i3, var3321=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper=var3710, r1=var3504, r0=var2638, null_type=var3519, $i0=var3107, $i2=var3086, $i1=var3993, $i3=var3160, $r2=var3321}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper;	r0 := @parameter0: java.lang.String;	$i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper: int prefixLength>;	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper: int postfixLength>;	$i3 = $i2 - $i1;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i0, $i3);	return $r2
;block_num 1
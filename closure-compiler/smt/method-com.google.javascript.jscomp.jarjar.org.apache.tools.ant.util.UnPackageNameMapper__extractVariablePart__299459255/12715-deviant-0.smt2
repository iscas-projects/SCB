(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3584 0)
(declare-sort var663 0)
(declare-sort var1651 0)
(declare-sort var2470 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefixLength/2090461996 (var1651) Int)
(declare-fun cast-from-var3584-to-var1651 (var3584) var1651)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun postfixLength/2090461996 (var1651) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var3584 var3584)
(declare-const null-String String)
(declare-const var2470-separatorChar Int)
(declare-const var1471 var3584) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UnPackageNameMapper 
(assert (not (= var1471 null-var3584)))
(declare-const var3015 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3015 null-String)))
(define-const var1924 Int (prefixLength/2090461996 (cast-from-var3584-to-var1651 var1471))) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UnPackageNameMapper: int prefixLength> 
(assert true)
(define-const var272 Int (length/-134980193 var3015)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var101 Int (postfixLength/2090461996 (cast-from-var3584-to-var1651 var1471))) ; Statement: $i1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UnPackageNameMapper: int postfixLength> 
(define-const var339 Int (- var272 var101)) ; Statement: $i3 = $i2 - $i1 
(assert (not (and true (and (>= var1924 0) (>= (str.len var3015) var339) (>= var339 var1924)))))
(check-sat)
(get-model)
(get-unsat-core)
; {prefixLength/2090461996=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper], int), cast-from-var3584-to-var1651=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UnPackageNameMapper], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper), length/-134980193=([java.lang.String], int), postfixLength/2090461996=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var3584=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UnPackageNameMapper, var1471=r1, var3015=r0, var663=null_type, var1651=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper, var1924=$i0, var272=$i2, var101=$i1, var339=$i3, var388=r2, var2470=java.io.File, var3135=$c4, var1449=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UnPackageNameMapper=var3584, r1=var1471, r0=var3015, null_type=var663, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper=var1651, $i0=var1924, $i2=var272, $i1=var101, $i3=var339, r2=var388, java.io.File=var2470, $c4=var3135, $r3=var1449}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UnPackageNameMapper;	r0 := @parameter0: java.lang.String;	$i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UnPackageNameMapper: int prefixLength>;	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UnPackageNameMapper: int postfixLength>;	$i3 = $i2 - $i1;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i0, $i3);	$c4 = <java.io.File: char separatorChar>;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(46, $c4);	return $r3
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3896 0)
(declare-sort var3281 0)
(declare-sort var779 0)
(declare-sort var3508 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefixLength/2090461996 (var779) Int)
(declare-fun cast-from-var3896-to-var779 (var3896) var779)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun postfixLength/2090461996 (var779) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun getHandleDirSep/-448991300 (var779) Bool)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var3896 var3896)
(declare-const null-String String)
(declare-const var3508-separatorChar Int)
(declare-const var1191 var3896) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PackageNameMapper 
(assert (not (= var1191 null-var3896)))
(declare-const var1703 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1703 null-String)))
(define-const var1877 Int (prefixLength/2090461996 (cast-from-var3896-to-var779 var1191))) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PackageNameMapper: int prefixLength> 
(assert true)
(define-const var247 Int (length/-134980193 var1703)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var352 Int (postfixLength/2090461996 (cast-from-var3896-to-var779 var1191))) ; Statement: $i1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PackageNameMapper: int postfixLength> 
(define-const var2923 Int (- var247 var352)) ; Statement: $i3 = $i2 - $i1 
(assert (not (and true (and (>= var1877 0) (>= (str.len var1703) var2923) (>= var2923 var1877)))))
(check-sat)
(get-model)
(get-unsat-core)
; {prefixLength/2090461996=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper], int), cast-from-var3896-to-var779=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PackageNameMapper], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper), length/-134980193=([java.lang.String], int), postfixLength/2090461996=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), getHandleDirSep/-448991300=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper], boolean), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var3896=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PackageNameMapper, var1191=r1, var1703=r0, var3281=null_type, var779=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper, var1877=$i0, var247=$i2, var352=$i1, var2923=$i3, var204=r4, var750=$z0, var3508=java.io.File, var1927=$c4, var772=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PackageNameMapper=var3896, r1=var1191, r0=var1703, null_type=var3281, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.GlobPatternMapper=var779, $i0=var1877, $i2=var247, $i1=var352, $i3=var2923, r4=var204, $z0=var750, java.io.File=var3508, $c4=var1927, $r2=var772}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PackageNameMapper;	r0 := @parameter0: java.lang.String;	$i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PackageNameMapper: int prefixLength>;	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PackageNameMapper: int postfixLength>;	$i3 = $i2 - $i1;	r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i0, $i3);	$z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PackageNameMapper: boolean getHandleDirSep()>();	if $z0 == 0 goto $c4 = <java.io.File: char separatorChar>;	$c4 = <java.io.File: char separatorChar>;	$r2 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>($c4, 46);	return $r2
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var31 0)
(declare-sort var3445 0)
(declare-sort var1936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInitialized/874339711 (var3445) Bool)
(declare-fun cast-from-var31-to-var3445 (var31) var3445)
(declare-fun line/505999694 (var31) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var31 var31)
(declare-const null-String String)
(declare-const var3969 var31) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp 
(assert (not (= var3969 null-var31)))
(assert true)
(define-const var25 Bool (getInitialized/874339711 (cast-from-var31-to-var3445 var3969))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: boolean getInitialized()>() 
 ; Statement: if $z0 != 0 goto i3 = -1 
(assert (not (= (ite var25 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1509 Int (- 1)) ; Statement: i3 = -1 
(define-const var620 String (line/505999694 var3969)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line> 
 ; Statement: if $r1 == null goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String readLine()>() 
(assert (not (= var620 null-String))) ; Negate: Cond: $r1 == null  
(define-const var2684 String (line/505999694 var3969)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line> 
(assert (and true (and (> (str.len var2684) 0) (<= 0 0))))
(define-const var1509!1 Int (charAt/698050440 var2684 0)) ; Statement: i3 = virtualinvoke $r13.<java.lang.String: char charAt(int)>(0) 
(define-const var40 String (line/505999694 var3969)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line> 
(assert true)
(define-const var2846 Int (length/-134980193 var40)) ; Statement: $i2 = virtualinvoke $r14.<java.lang.String: int length()>() 
 ; Statement: if $i2 != 1 goto $r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line> 
(assert (not (not (= var2846 1)))) ; Negate: Cond: $i2 != 1  
(declare-const var3969!1 var31)
(assert (not (= var3969!1 null-var31)))
(assert (= (line/505999694 var3969!1) null-String)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line> = null 
 ; Statement: goto [?= return i3] 
(assert true) ; Non Conditional
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {getInitialized/874339711=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader], boolean), cast-from-var31-to-var3445=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader), line/505999694=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp], java.lang.String), charAt/698050440=([java.lang.String, int], char), length/-134980193=([java.lang.String], int)}
; {var31=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp, var3969=r0, var3445=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader, var25=$z0, var1509=i3, var620=$r1, var1936=null_type, var2684=$r13, var40=$r14, var2846=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp=var31, r0=var3969, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader=var3445, $z0=var25, i3=var1509, $r1=var620, null_type=var1936, $r13=var2684, $r14=var40, $i2=var2846}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: boolean getInitialized()>();	if $z0 != 0 goto i3 = -1;	i3 = -1;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line>;	if $r1 == null goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String readLine()>();	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line>;	i3 = virtualinvoke $r13.<java.lang.String: char charAt(int)>(0);	$r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line>;	$i2 = virtualinvoke $r14.<java.lang.String: int length()>();	if $i2 != 1 goto $r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line>;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line> = null;	goto [?= return i3];	return i3
;block_num 5
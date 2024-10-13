(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3193 0)
(declare-sort var2271 0)
(declare-sort var2884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInitialized/874339711 (var2271) Bool)
(declare-fun cast-from-var3193-to-var2271 (var3193) var2271)
(declare-fun line/505999694 (var3193) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var3193 var3193)
(declare-const null-String String)
(declare-const var3221 var3193) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp 
(assert (not (= var3221 null-var3193)))
(assert true)
(define-const var2474 Bool (getInitialized/874339711 (cast-from-var3193-to-var2271 var3221))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: boolean getInitialized()>() 
 ; Statement: if $z0 != 0 goto i3 = -1 
(assert (not (= (ite var2474 1 0) 0))) ; Cond: $z0 != 0 
(define-const var704 Int (- 1)) ; Statement: i3 = -1 
(define-const var723 String (line/505999694 var3221)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line> 
 ; Statement: if $r1 == null goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String readLine()>() 
(assert (not (= var723 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3790 String (line/505999694 var3221)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line> 
(assert (and true (and (> (str.len var3790) 0) (<= 0 0))))
(define-const var704!1 Int (charAt/698050440 var3790 0)) ; Statement: i3 = virtualinvoke $r13.<java.lang.String: char charAt(int)>(0) 
(define-const var1471 String (line/505999694 var3221)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line> 
(assert true)
(define-const var1009 Int (length/-134980193 var1471)) ; Statement: $i2 = virtualinvoke $r14.<java.lang.String: int length()>() 
 ; Statement: if $i2 != 1 goto $r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line> 
(assert (not (= var1009 1))) ; Cond: $i2 != 1 
(define-const var552 String (line/505999694 var3221)) ; Statement: $r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line> 
(assert (and true (and (>= 1 0) (>= (str.len var552) 1))))
(define-const var1652 String (substring/850833817 var552 1)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.String: java.lang.String substring(int)>(1) 
(declare-const var3221!1 var3193)
(assert (not (= var3221!1 null-var3193)))
(assert (= (line/505999694 var3221!1) var1652)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line> = $r16 
 ; Statement: goto [?= return i3] 
(assert true) ; Non Conditional
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {getInitialized/874339711=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader], boolean), cast-from-var3193-to-var2271=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader), line/505999694=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp], java.lang.String), charAt/698050440=([java.lang.String, int], char), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3193=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp, var3221=r0, var2271=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader, var2474=$z0, var704=i3, var723=$r1, var2884=null_type, var3790=$r13, var1471=$r14, var1009=$i2, var552=$r15, var1652=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp=var3193, r0=var3221, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader=var2271, $z0=var2474, i3=var704, $r1=var723, null_type=var2884, $r13=var3790, $r14=var1471, $i2=var1009, $r15=var552, $r16=var1652}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: boolean getInitialized()>();	if $z0 != 0 goto i3 = -1;	i3 = -1;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line>;	if $r1 == null goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String readLine()>();	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line>;	i3 = virtualinvoke $r13.<java.lang.String: char charAt(int)>(0);	$r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line>;	$i2 = virtualinvoke $r14.<java.lang.String: int length()>();	if $i2 != 1 goto $r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line>;	$r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line>;	$r16 = virtualinvoke $r15.<java.lang.String: java.lang.String substring(int)>(1);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContainsRegExp: java.lang.String line> = $r16;	goto [?= return i3];	return i3
;block_num 5
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3678 0)
(declare-sort var2618 0)
(declare-sort var3922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInitialized/874339711 (var2618) Bool)
(declare-fun cast-from-var3678-to-var2618 (var3678) var2618)
(declare-fun line/-1449509883 (var3678) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3678 var3678)
(declare-const null-String String)
(declare-const var2655 var3678) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains 
(assert (not (= var2655 null-var3678)))
(assert true)
(define-const var2654 Bool (getInitialized/874339711 (cast-from-var3678-to-var2618 var2655))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: boolean getInitialized()>() 
 ; Statement: if $z0 != 0 goto i3 = -1 
(assert (not (= (ite var2654 1 0) 0))) ; Cond: $z0 != 0 
(define-const var17 Int (- 1)) ; Statement: i3 = -1 
(define-const var182 String (line/-1449509883 var2655)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.util.Vector contains> 
(assert (not (= var182 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3292 String (line/-1449509883 var2655)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line> 
(assert (and true (and (> (str.len var3292) 0) (<= 0 0))))
(define-const var17!1 Int (charAt/698050440 var3292 0)) ; Statement: i3 = virtualinvoke $r11.<java.lang.String: char charAt(int)>(0) 
(define-const var2137 String (line/-1449509883 var2655)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line> 
(assert true)
(define-const var550 Int (length/-134980193 var2137)) ; Statement: $i2 = virtualinvoke $r12.<java.lang.String: int length()>() 
 ; Statement: if $i2 != 1 goto $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line> 
(assert (not (not (= var550 1)))) ; Negate: Cond: $i2 != 1  
(declare-const var2655!1 var3678)
(assert (not (= var2655!1 null-var3678)))
(assert (= (line/-1449509883 var2655!1) null-String)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line> = null 
 ; Statement: goto [?= return i3] 
(assert true) ; Non Conditional
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {getInitialized/874339711=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader], boolean), cast-from-var3678-to-var2618=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader), line/-1449509883=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains], java.lang.String), charAt/698050440=([java.lang.String, int], char), length/-134980193=([java.lang.String], int)}
; {var3678=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains, var2655=r0, var2618=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader, var2654=$z0, var17=i3, var182=$r1, var3922=null_type, var3292=$r11, var2137=$r12, var550=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains=var3678, r0=var2655, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader=var2618, $z0=var2654, i3=var17, $r1=var182, null_type=var3922, $r11=var3292, $r12=var2137, $i2=var550}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: boolean getInitialized()>();	if $z0 != 0 goto i3 = -1;	i3 = -1;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line>;	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.util.Vector contains>;	$r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line>;	i3 = virtualinvoke $r11.<java.lang.String: char charAt(int)>(0);	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line>;	$i2 = virtualinvoke $r12.<java.lang.String: int length()>();	if $i2 != 1 goto $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line>;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line> = null;	goto [?= return i3];	return i3
;block_num 5
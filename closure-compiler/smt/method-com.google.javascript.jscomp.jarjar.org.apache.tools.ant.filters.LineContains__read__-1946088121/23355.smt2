(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1496 0)
(declare-sort var1701 0)
(declare-sort var1717 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInitialized/874339711 (var1701) Bool)
(declare-fun cast-from-var1496-to-var1701 (var1496) var1701)
(declare-fun line/-1449509883 (var1496) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var1496 var1496)
(declare-const null-String String)
(declare-const var609 var1496) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains 
(assert (not (= var609 null-var1496)))
(assert true)
(define-const var857 Bool (getInitialized/874339711 (cast-from-var1496-to-var1701 var609))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: boolean getInitialized()>() 
 ; Statement: if $z0 != 0 goto i3 = -1 
(assert (not (= (ite var857 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2689 Int (- 1)) ; Statement: i3 = -1 
(define-const var2884 String (line/-1449509883 var609)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.util.Vector contains> 
(assert (not (= var2884 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3482 String (line/-1449509883 var609)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line> 
(assert (and true (and (> (str.len var3482) 0) (<= 0 0))))
(define-const var2689!1 Int (charAt/698050440 var3482 0)) ; Statement: i3 = virtualinvoke $r11.<java.lang.String: char charAt(int)>(0) 
(define-const var268 String (line/-1449509883 var609)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line> 
(assert true)
(define-const var3471 Int (length/-134980193 var268)) ; Statement: $i2 = virtualinvoke $r12.<java.lang.String: int length()>() 
 ; Statement: if $i2 != 1 goto $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line> 
(assert (not (= var3471 1))) ; Cond: $i2 != 1 
(define-const var1147 String (line/-1449509883 var609)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line> 
(assert (and true (and (>= 1 0) (>= (str.len var1147) 1))))
(define-const var876 String (substring/850833817 var1147 1)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.String: java.lang.String substring(int)>(1) 
(declare-const var609!1 var1496)
(assert (not (= var609!1 null-var1496)))
(assert (= (line/-1449509883 var609!1) var876)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line> = $r14 
 ; Statement: goto [?= return i3] 
(assert true) ; Non Conditional
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {getInitialized/874339711=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader], boolean), cast-from-var1496-to-var1701=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader), line/-1449509883=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains], java.lang.String), charAt/698050440=([java.lang.String, int], char), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1496=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains, var609=r0, var1701=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader, var857=$z0, var2689=i3, var2884=$r1, var1717=null_type, var3482=$r11, var268=$r12, var3471=$i2, var1147=$r13, var876=$r14}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains=var1496, r0=var609, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader=var1701, $z0=var857, i3=var2689, $r1=var2884, null_type=var1717, $r11=var3482, $r12=var268, $i2=var3471, $r13=var1147, $r14=var876}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: boolean getInitialized()>();	if $z0 != 0 goto i3 = -1;	i3 = -1;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line>;	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.util.Vector contains>;	$r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line>;	i3 = virtualinvoke $r11.<java.lang.String: char charAt(int)>(0);	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line>;	$i2 = virtualinvoke $r12.<java.lang.String: int length()>();	if $i2 != 1 goto $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line>;	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line>;	$r14 = virtualinvoke $r13.<java.lang.String: java.lang.String substring(int)>(1);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.LineContains: java.lang.String line> = $r14;	goto [?= return i3];	return i3
;block_num 5
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3352 0)
(declare-sort var2865 0)
(declare-sort var3006 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInitialized/874339711 (var2865) Bool)
(declare-fun cast-from-var3352-to-var2865 (var3352) var2865)
(declare-fun line/-624025938 (var3352) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var3352 var3352)
(declare-const null-String String)
(declare-const var319 var3352) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments 
(assert (not (= var319 null-var3352)))
(assert true)
(define-const var3109 Bool (getInitialized/874339711 (cast-from-var3352-to-var2865 var319))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: boolean getInitialized()>() 
 ; Statement: if $z0 != 0 goto i3 = -1 
(assert (not (= (ite var3109 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3373 Int (- 1)) ; Statement: i3 = -1 
(define-const var2410 String (line/-624025938 var319)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line> 
 ; Statement: if $r1 == null goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String readLine()>() 
(assert (not (= var2410 null-String))) ; Negate: Cond: $r1 == null  
(define-const var2425 String (line/-624025938 var319)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line> 
(assert (and true (and (> (str.len var2425) 0) (<= 0 0))))
(define-const var3373!1 Int (charAt/698050440 var2425 0)) ; Statement: i3 = virtualinvoke $r12.<java.lang.String: char charAt(int)>(0) 
(define-const var424 String (line/-624025938 var319)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line> 
(assert true)
(define-const var408 Int (length/-134980193 var424)) ; Statement: $i2 = virtualinvoke $r13.<java.lang.String: int length()>() 
 ; Statement: if $i2 != 1 goto $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line> 
(assert (not (= var408 1))) ; Cond: $i2 != 1 
(define-const var1981 String (line/-624025938 var319)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line> 
(assert (and true (and (>= 1 0) (>= (str.len var1981) 1))))
(define-const var1512 String (substring/850833817 var1981 1)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.String: java.lang.String substring(int)>(1) 
(declare-const var319!1 var3352)
(assert (not (= var319!1 null-var3352)))
(assert (= (line/-624025938 var319!1) var1512)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line> = $r15 
 ; Statement: goto [?= return i3] 
(assert true) ; Non Conditional
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {getInitialized/874339711=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader], boolean), cast-from-var3352-to-var2865=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader), line/-624025938=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments], java.lang.String), charAt/698050440=([java.lang.String, int], char), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3352=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments, var319=r0, var2865=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader, var3109=$z0, var3373=i3, var2410=$r1, var3006=null_type, var2425=$r12, var424=$r13, var408=$i2, var1981=$r14, var1512=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments=var3352, r0=var319, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader=var2865, $z0=var3109, i3=var3373, $r1=var2410, null_type=var3006, $r12=var2425, $r13=var424, $i2=var408, $r14=var1981, $r15=var1512}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: boolean getInitialized()>();	if $z0 != 0 goto i3 = -1;	i3 = -1;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line>;	if $r1 == null goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String readLine()>();	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line>;	i3 = virtualinvoke $r12.<java.lang.String: char charAt(int)>(0);	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line>;	$i2 = virtualinvoke $r13.<java.lang.String: int length()>();	if $i2 != 1 goto $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line>;	$r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line>;	$r15 = virtualinvoke $r14.<java.lang.String: java.lang.String substring(int)>(1);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line> = $r15;	goto [?= return i3];	return i3
;block_num 5
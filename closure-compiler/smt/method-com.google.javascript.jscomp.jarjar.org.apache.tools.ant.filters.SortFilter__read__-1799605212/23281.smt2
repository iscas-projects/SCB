(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2038 0)
(declare-sort var182 0)
(declare-sort var3369 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInitialized/874339711 (var182) Bool)
(declare-fun cast-from-var2038-to-var182 (var2038) var182)
(declare-fun line/3715336 (var2038) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2038 var2038)
(declare-const null-String String)
(declare-const var1190 var2038) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter 
(assert (not (= var1190 null-var2038)))
(assert true)
(define-const var2591 Bool (getInitialized/874339711 (cast-from-var2038-to-var182 var1190))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: boolean getInitialized()>() 
 ; Statement: if $z0 != 0 goto i2 = -1 
(assert (not (= (ite var2591 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1290 Int (- 1)) ; Statement: i2 = -1 
(define-const var572 String (line/3715336 var1190)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.util.List lines> 
(assert (not (= var572 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3382 String (line/3715336 var1190)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line> 
(assert (and true (and (> (str.len var3382) 0) (<= 0 0))))
(define-const var1290!1 Int (charAt/698050440 var3382 0)) ; Statement: i2 = virtualinvoke $r16.<java.lang.String: char charAt(int)>(0) 
(define-const var2037 String (line/3715336 var1190)) ; Statement: $r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line> 
(assert true)
(define-const var3472 Int (length/-134980193 var2037)) ; Statement: $i1 = virtualinvoke $r17.<java.lang.String: int length()>() 
 ; Statement: if $i1 != 1 goto $r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line> 
(assert (not (= var3472 1))) ; Cond: $i1 != 1 
(define-const var665 String (line/3715336 var1190)) ; Statement: $r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line> 
(assert (and true (and (>= 1 0) (>= (str.len var665) 1))))
(define-const var2419 String (substring/850833817 var665 1)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.String: java.lang.String substring(int)>(1) 
(declare-const var1190!1 var2038)
(assert (not (= var1190!1 null-var2038)))
(assert (= (line/3715336 var1190!1) var2419)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line> = $r19 
 ; Statement: goto [?= return i2] 
(assert true) ; Non Conditional
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {getInitialized/874339711=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader], boolean), cast-from-var2038-to-var182=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader), line/3715336=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter], java.lang.String), charAt/698050440=([java.lang.String, int], char), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2038=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter, var1190=r0, var182=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader, var2591=$z0, var1290=i2, var572=$r1, var3369=null_type, var3382=$r16, var2037=$r17, var3472=$i1, var665=$r18, var2419=$r19}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter=var2038, r0=var1190, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader=var182, $z0=var2591, i2=var1290, $r1=var572, null_type=var3369, $r16=var3382, $r17=var2037, $i1=var3472, $r18=var665, $r19=var2419}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: boolean getInitialized()>();	if $z0 != 0 goto i2 = -1;	i2 = -1;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line>;	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.util.List lines>;	$r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line>;	i2 = virtualinvoke $r16.<java.lang.String: char charAt(int)>(0);	$r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line>;	$i1 = virtualinvoke $r17.<java.lang.String: int length()>();	if $i1 != 1 goto $r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line>;	$r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line>;	$r19 = virtualinvoke $r18.<java.lang.String: java.lang.String substring(int)>(1);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line> = $r19;	goto [?= return i2];	return i2
;block_num 5
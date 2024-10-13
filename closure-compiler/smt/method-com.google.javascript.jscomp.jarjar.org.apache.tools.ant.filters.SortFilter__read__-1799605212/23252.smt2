(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2716 0)
(declare-sort var3701 0)
(declare-sort var34 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInitialized/874339711 (var3701) Bool)
(declare-fun cast-from-var2716-to-var3701 (var2716) var3701)
(declare-fun line/3715336 (var2716) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2716 var2716)
(declare-const null-String String)
(declare-const var540 var2716) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter 
(assert (not (= var540 null-var2716)))
(assert true)
(define-const var1991 Bool (getInitialized/874339711 (cast-from-var2716-to-var3701 var540))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: boolean getInitialized()>() 
 ; Statement: if $z0 != 0 goto i2 = -1 
(assert (not (= (ite var1991 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3176 Int (- 1)) ; Statement: i2 = -1 
(define-const var3045 String (line/3715336 var540)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.util.List lines> 
(assert (not (= var3045 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1276 String (line/3715336 var540)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line> 
(assert (and true (and (> (str.len var1276) 0) (<= 0 0))))
(define-const var3176!1 Int (charAt/698050440 var1276 0)) ; Statement: i2 = virtualinvoke $r16.<java.lang.String: char charAt(int)>(0) 
(define-const var1375 String (line/3715336 var540)) ; Statement: $r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line> 
(assert true)
(define-const var1332 Int (length/-134980193 var1375)) ; Statement: $i1 = virtualinvoke $r17.<java.lang.String: int length()>() 
 ; Statement: if $i1 != 1 goto $r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line> 
(assert (not (not (= var1332 1)))) ; Negate: Cond: $i1 != 1  
(declare-const var540!1 var2716)
(assert (not (= var540!1 null-var2716)))
(assert (= (line/3715336 var540!1) null-String)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line> = null 
 ; Statement: goto [?= return i2] 
(assert true) ; Non Conditional
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {getInitialized/874339711=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader], boolean), cast-from-var2716-to-var3701=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader), line/3715336=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter], java.lang.String), charAt/698050440=([java.lang.String, int], char), length/-134980193=([java.lang.String], int)}
; {var2716=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter, var540=r0, var3701=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader, var1991=$z0, var3176=i2, var3045=$r1, var34=null_type, var1276=$r16, var1375=$r17, var1332=$i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter=var2716, r0=var540, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader=var3701, $z0=var1991, i2=var3176, $r1=var3045, null_type=var34, $r16=var1276, $r17=var1375, $i1=var1332}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: boolean getInitialized()>();	if $z0 != 0 goto i2 = -1;	i2 = -1;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line>;	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.util.List lines>;	$r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line>;	i2 = virtualinvoke $r16.<java.lang.String: char charAt(int)>(0);	$r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line>;	$i1 = virtualinvoke $r17.<java.lang.String: int length()>();	if $i1 != 1 goto $r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line>;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SortFilter: java.lang.String line> = null;	goto [?= return i2];	return i2
;block_num 5
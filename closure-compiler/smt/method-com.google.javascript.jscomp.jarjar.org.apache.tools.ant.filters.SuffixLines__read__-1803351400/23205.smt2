(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var814 0)
(declare-sort var966 0)
(declare-sort var2782 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInitialized/874339711 (var966) Bool)
(declare-fun cast-from-var814-to-var966 (var814) var966)
(declare-fun queuedData/1918593564 (var814) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var814 var814)
(declare-const null-String String)
(declare-const var2412 var814) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines 
(assert (not (= var2412 null-var814)))
(assert true)
(define-const var2189 Bool (getInitialized/874339711 (cast-from-var814-to-var966 var2412))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: boolean getInitialized()>() 
 ; Statement: if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData> 
(assert (not (= (ite var2189 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2417 String (queuedData/1918593564 var2412)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData> 
 ; Statement: if $r1 == null goto $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData> 
(assert (= var2417 null-String)) ; Cond: $r1 == null 
(define-const var1897 String (queuedData/1918593564 var2412)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData> 
 ; Statement: if $r12 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData> 
(assert (not (= var1897 null-String))) ; Cond: $r12 != null 
(define-const var3865 String (queuedData/1918593564 var2412)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData> 
(assert (and true (and (> (str.len var3865) 0) (<= 0 0))))
(define-const var1349 Int (charAt/698050440 var3865 0)) ; Statement: i0 = virtualinvoke $r2.<java.lang.String: char charAt(int)>(0) 
(define-const var3637 String (queuedData/1918593564 var2412)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData> 
(assert (and true (and (>= 1 0) (>= (str.len var3637) 1))))
(define-const var3734 String (substring/850833817 var3637 1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int)>(1) 
(declare-const var2412!1 var814)
(assert (not (= var2412!1 null-var814)))
(assert (= (queuedData/1918593564 var2412!1) var3734)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData> = $r4 
(define-const var1052 String (queuedData/1918593564 var2412!1)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData> 
(assert true)
(define-const var3443 Bool (isEmpty/-1285796103 var1052)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto return i0 
(assert (= (ite var3443 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getInitialized/874339711=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader], boolean), cast-from-var814-to-var966=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader), queuedData/1918593564=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines], java.lang.String), charAt/698050440=([java.lang.String, int], char), substring/850833817=([java.lang.String, int], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var814=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines, var2412=r0, var966=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader, var2189=$z0, var2417=$r1, var2782=null_type, var1897=$r12, var3865=$r2, var1349=i0, var3637=$r3, var3734=$r4, var1052=$r5, var3443=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines=var814, r0=var2412, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader=var966, $z0=var2189, $r1=var2417, null_type=var2782, $r12=var1897, $r2=var3865, i0=var1349, $r3=var3637, $r4=var3734, $r5=var1052, $z1=var3443}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: boolean getInitialized()>();	if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData>;	if $r1 == null goto $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData>;	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData>;	if $r12 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData>;	i0 = virtualinvoke $r2.<java.lang.String: char charAt(int)>(0);	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int)>(1);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData> = $r4;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.SuffixLines: java.lang.String queuedData>;	$z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto return i0;	return i0
;block_num 5
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3055 0)
(declare-sort var2476 0)
(declare-sort var1692 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInitialized/874339711 (var2476) Bool)
(declare-fun cast-from-var3055-to-var2476 (var3055) var2476)
(declare-fun queuedData/1116508027 (var3055) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3055 var3055)
(declare-const null-String String)
(declare-const var32 var3055) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines 
(assert (not (= var32 null-var3055)))
(assert true)
(define-const var1987 Bool (getInitialized/874339711 (cast-from-var3055-to-var2476 var32))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: boolean getInitialized()>() 
 ; Statement: if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData> 
(assert (not (= (ite var1987 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1073 String (queuedData/1116508027 var32)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData> 
 ; Statement: if $r1 == null goto $r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData> 
(assert (= var1073 null-String)) ; Cond: $r1 == null 
(define-const var2499 String (queuedData/1116508027 var32)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData> 
 ; Statement: if $r16 == null goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String readLine()>() 
(assert (not (= var2499 null-String))) ; Negate: Cond: $r16 == null  
(define-const var1951 String (queuedData/1116508027 var32)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData> 
(assert (and true (and (> (str.len var1951) 0) (<= 0 0))))
(define-const var773 Int (charAt/698050440 var1951 0)) ; Statement: s1 = virtualinvoke $r11.<java.lang.String: char charAt(int)>(0) 
(define-const var885 String (queuedData/1116508027 var32)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData> 
(assert (and true (and (>= 1 0) (>= (str.len var885) 1))))
(define-const var3275 String (substring/850833817 var885 1)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.String: java.lang.String substring(int)>(1) 
(declare-const var32!1 var3055)
(assert (not (= var32!1 null-var3055)))
(assert (= (queuedData/1116508027 var32!1) var3275)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData> = $r13 
(define-const var1376 String (queuedData/1116508027 var32!1)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData> 
(assert true)
(define-const var770 Bool (isEmpty/-1285796103 var1376)) ; Statement: $z1 = virtualinvoke $r14.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto return s1 
(assert (= (ite var770 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return s1 
(check-sat)
(get-model)
(get-unsat-core)
; {getInitialized/874339711=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader], boolean), cast-from-var3055-to-var2476=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader), queuedData/1116508027=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines], java.lang.String), charAt/698050440=([java.lang.String, int], char), substring/850833817=([java.lang.String, int], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3055=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines, var32=r0, var2476=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader, var1987=$z0, var1073=$r1, var1692=null_type, var2499=$r16, var1951=$r11, var773=s1, var885=$r12, var3275=$r13, var1376=$r14, var770=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines=var3055, r0=var32, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader=var2476, $z0=var1987, $r1=var1073, null_type=var1692, $r16=var2499, $r11=var1951, s1=var773, $r12=var885, $r13=var3275, $r14=var1376, $z1=var770}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: boolean getInitialized()>();	if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData>;	if $r1 == null goto $r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData>;	$r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData>;	if $r16 == null goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String readLine()>();	$r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData>;	s1 = virtualinvoke $r11.<java.lang.String: char charAt(int)>(0);	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData>;	$r13 = virtualinvoke $r12.<java.lang.String: java.lang.String substring(int)>(1);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData> = $r13;	$r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.PrefixLines: java.lang.String queuedData>;	$z1 = virtualinvoke $r14.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto return s1;	return s1
;block_num 5
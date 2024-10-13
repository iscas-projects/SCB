(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var236 0)
(declare-sort var1956 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/1089979513 (var236) void)
(declare-fun substring/-1919705316 (var236) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun resource/-1919705316 (var236) var1956)
(declare-fun getSize/1695233118 (var1956) Int)
(declare-const null-var236 var236)
(declare-const var2022 var236) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains 
(assert (not (= var2022 null-var236)))
(assert true)
;(assert (validate/1089979513 var2022)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: void validate()>() 

(declare-const var2022!1 var236)
(define-const var1686 String (substring/-1919705316 var2022!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: java.lang.String substring> 
(assert true)
(define-const var1278 Bool (isEmpty/-1285796103 var1686)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource resource> 
(assert (= (ite var1278 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1507 var1956 (resource/-1919705316 var2022!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource resource> 
(assert true)
(define-const var700 Int (getSize/1695233118 var1507)) ; Statement: $l0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: long getSize()>() 
(define-const var1835 Int (ite (> var700 0) 1 (ite (< var700 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 != 0 goto $r3 = new java.io.BufferedReader 
(assert (not (not (= var1835 0)))) ; Negate: Cond: $b1 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/1089979513=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains], void), substring/-1919705316=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), resource/-1919705316=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), getSize/1695233118=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], long)}
; {var236=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains, var2022=r0, var1686=$r1, var1278=$z0, var1956=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var1507=$r2, var700=$l0, var1835=$b1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains=var236, r0=var2022, $r1=var1686, $z0=var1278, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var1956, $r2=var1507, $l0=var700, $b1=var1835}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: void validate()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: java.lang.String substring>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource resource>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource resource>;	$l0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: long getSize()>();	$b1 = $l0 cmp 0L;	if $b1 != 0 goto $r3 = new java.io.BufferedReader;	return 0
;block_num 3
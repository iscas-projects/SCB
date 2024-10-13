(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3914 0)
(declare-sort var950 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1314741259 (var950) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var3914 var3914)
(declare-const null-var950 var950)
(declare-const var2460 var3914) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack 
(assert (not (= var2460 null-var3914)))
(declare-const var698 var950) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var698 null-var950)))
(assert true)
(define-const var416 String (getName/1314741259 var698)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>() 
(assert true)
(define-const var3353 Int (lastIndexOf/-1292097097 var416 47)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(47) 
 ; Statement: if i0 >= 0 goto $i1 = i0 + 1 
(assert (>= var3353 0)) ; Cond: i0 >= 0 
(define-const var3117 Int (+ var3353 1)) ; Statement: $i1 = i0 + 1 
(assert (not (and true (and (>= var3117 0) (>= (str.len var416) var3117)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1314741259=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3914=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack, var2460=r2, var950=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var698=r0, var416=r1, var3353=i0, var3117=$i1, var3988=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack=var3914, r2=var2460, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var950, r0=var698, r1=var416, i0=var3353, $i1=var3117, $r3=var3988}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>();	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(47);	if i0 >= 0 goto $i1 = i0 + 1;	$i1 = i0 + 1;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i1);	return $r3
;block_num 3
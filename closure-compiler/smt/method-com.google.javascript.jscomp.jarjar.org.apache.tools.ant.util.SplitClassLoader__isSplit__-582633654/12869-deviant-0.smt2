(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1241 0)
(declare-sort var2527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun splitClasses/2006981118 (var1241) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var1241 var1241)
(declare-const null-String String)
(declare-const var1798 var1241) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SplitClassLoader 
(assert (not (= var1798 null-var1241)))
(declare-const var1215 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1215 null-String)))
(assert true)
(define-const var775 Int (lastIndexOf/-1292097097 var1215 46)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var740 Int (+ var775 1)) ; Statement: $i1 = $i0 + 1 
(assert (not (and true (and (>= var740 0) (>= (str.len var1215) var740)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String), splitClasses/2006981118=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SplitClassLoader], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var1241=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SplitClassLoader, var1798=r2, var1215=r0, var2527=null_type, var775=$i0, var740=$i1, var759=r1, var2902=r3, var3338=i2, var3134=i3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SplitClassLoader=var1241, r2=var1798, r0=var1215, null_type=var2527, $i0=var775, $i1=var740, r1=var759, r3=var2902, i2=var3338, i3=var3134}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SplitClassLoader;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i1 = $i0 + 1;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SplitClassLoader: java.lang.String[] splitClasses>;	i2 = lengthof r3;	i3 = 0;	if i3 >= i2 goto return 0;	return 0
;block_num 3
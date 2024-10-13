(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3584 0)
(declare-sort var3188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun findFirstSeparator/-1595945458 (var3584 String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun name/-2080466165 (var3584) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun setValue/594668828 (var3584 String) void)
(declare-fun stripStart/1205947337 (var3584 String String) String)
(declare-const null-var3584 var3584)
(declare-const null-String String)
(declare-const var1441 var3584) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair 
(assert (not (= var1441 null-var3584)))
(declare-const var3074 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3074 null-String)))
(assert true)
(define-const var1704 Int (findFirstSeparator/-1595945458 var1441 var3074)) ; Statement: i0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: int findFirstSeparator(java.lang.String)>(r1) 
(define-const var3718 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= var1704 var3718))) ; Cond: i0 != $i3 
(assert (not (and true (and (>= 0 0) (>= (str.len var3074) var1704) (>= var1704 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {findFirstSeparator/-1595945458=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair, java.lang.String], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), name/-2080466165=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), setValue/594668828=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair, java.lang.String], void), stripStart/1205947337=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair, java.lang.String, java.lang.String], java.lang.String)}
; {var3584=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair, var1441=r0, var3074=r1, var3188=null_type, var1704=i0, var3718=$i3, var2348=$r2, var754=$i1, var1707=$r3, var3295=$r4, var3917=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair=var3584, r0=var1441, r1=var3074, null_type=var3188, i0=var1704, $i3=var3718, $r2=var2348, $i1=var754, $r3=var1707, $r4=var3295, $r5=var3917}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair;	r1 := @parameter0: java.lang.String;	i0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: int findFirstSeparator(java.lang.String)>(r1);	$i3 = (int) -1;	if i0 != $i3 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: java.lang.String name> = $r2;	$i1 = i0 + 1;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i1);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: void setValue(java.lang.String)>($r3);	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: java.lang.String name>;	$r5 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: java.lang.String stripStart(java.lang.String,java.lang.String)>($r4, " \t\f");	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: java.lang.String name> = $r5;	return
;block_num 3
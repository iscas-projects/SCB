(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2140 0)
(declare-sort var2188 0)
(declare-sort var2455 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$result/1129927108 (var2140) var2188)
(declare-fun val$s/1129927108 (var2140) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var2188_add/328494887 (var2188 var2455) Bool)
(declare-fun cast-from-String-to-var2455 (String) var2455)
(declare-const null-var2140 var2140)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2824 var2140) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$5 
(assert (not (= var2824 null-var2140)))
(declare-const var1470 (Array Int Int)) ; Statement: r1 := @parameter0: int[] 
(assert (not (= var1470 null-__Array__Int__Int__)))
(define-const var2342 var2188 (val$result/1129927108 var2824)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$5: java.util.List val$result> 
(define-const var231 String (val$s/1129927108 var2824)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$5: java.lang.String val$s> 
(define-const var3690 Int (select var1470 0)) ; Statement: $i1 = r1[0] 
(define-const var2646 Int (select var1470 1)) ; Statement: $i0 = r1[1] 
(assert (not (and true (and (>= var3690 0) (>= (str.len var231) var2646) (>= var2646 var3690)))))
(check-sat)
(get-model)
(get-unsat-core)
; {val$result/1129927108=([com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$5], java.util.List), val$s/1129927108=([com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$5], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var2188_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2455=([java.lang.String], java.lang.Object)}
; {var2140=com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$5, var2824=r0, var1470=r1, var2188=java.util.List, var2342=$r3, var231=$r2, var3690=$i1, var2646=$i0, var3339=$r4, var2455=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$5=var2140, r0=var2824, r1=var1470, java.util.List=var2188, $r3=var2342, $r2=var231, $i1=var3690, $i0=var2646, $r4=var3339, java.lang.Object=var2455}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$5;	r1 := @parameter0: int[];	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$5: java.util.List val$result>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$5: java.lang.String val$s>;	$i1 = r1[0];	$i0 = r1[1];	$r4 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>($i1, $i0);	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>($r4);	return
;block_num 1
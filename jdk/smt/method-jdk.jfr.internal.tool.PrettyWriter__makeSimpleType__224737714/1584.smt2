(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var720 0)
(declare-sort var3425 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var720 var720)
(declare-const null-String String)
(declare-const var2370 var720) ; Statement: r2 := @this: jdk.jfr.internal.tool.PrettyWriter 
(assert (not (= var2370 null-var720)))
(declare-const var3022 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3022 null-String)))
(assert true)
(define-const var2056 Int (lastIndexOf/-618837785 var3022 ".")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(".") 
(define-const var3074 Int (+ var2056 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var3074 0) (>= (str.len var3022) var3074))))
(define-const var2624 String (substring/850833817 var3022 var3074)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var720=jdk.jfr.internal.tool.PrettyWriter, var2370=r2, var3022=r0, var3425=null_type, var2056=i0, var3074=$i1, var2624=$r1}
; {jdk.jfr.internal.tool.PrettyWriter=var720, r2=var2370, r0=var3022, null_type=var3425, i0=var2056, $i1=var3074, $r1=var2624}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r2 := @this: jdk.jfr.internal.tool.PrettyWriter;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(".");	$i1 = i0 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	return $r1
;block_num 1
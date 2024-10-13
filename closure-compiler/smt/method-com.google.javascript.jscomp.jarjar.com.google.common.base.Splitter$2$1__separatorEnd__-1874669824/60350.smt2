(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2007 0)
(declare-sort var1103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-204179501 (var2007) var1103)
(declare-fun val$separator/-1832612666 (var1103) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2007 var2007)
(declare-const null-Int Int)
(declare-const var1623 var2007) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1 
(assert (not (= var1623 null-var2007)))
(declare-const var3493 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3493 null-Int)))
(define-const var1807 var1103 (this$0/-204179501 var1623)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2 this$0> 
(define-const var2619 String (val$separator/-1832612666 var1807)) ; Statement: $r2 = $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2: java.lang.String val$separator> 
(assert true)
(define-const var790 Int (length/-134980193 var2619)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var1867 Int (+ var3493 var790)) ; Statement: $i2 = i0 + $i1 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-204179501=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2), val$separator/-1832612666=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2007=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1, var1623=r0, var3493=i0, var1103=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2, var1807=$r1, var2619=$r2, var790=$i1, var1867=$i2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1=var2007, r0=var1623, i0=var3493, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2=var1103, $r1=var1807, $r2=var2619, $i1=var790, $i2=var1867}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1;	i0 := @parameter0: int;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2 this$0>;	$r2 = $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2: java.lang.String val$separator>;	$i1 = virtualinvoke $r2.<java.lang.String: int length()>();	$i2 = i0 + $i1;	return $i2
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3804 0)
(declare-sort var625 0)
(declare-sort var1742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-204177579 (var3804) var625)
(declare-fun val$length/-1832612664 (var625) Int)
(declare-fun toSplit/15096330 (var1742) String)
(declare-fun cast-from-var3804-to-var1742 (var3804) var1742)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var3804 var3804)
(declare-const null-Int Int)
(declare-const var521 var3804) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1 
(assert (not (= var521 null-var3804)))
(declare-const var3959 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3959 null-Int)))
(define-const var1472 var625 (this$0/-204177579 var521)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4 this$0> 
(define-const var3390 Int (val$length/-1832612664 var1472)) ; Statement: $i1 = $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4: int val$length> 
(define-const var3671 Int (+ var3959 var3390)) ; Statement: i2 = i0 + $i1 
(define-const var2660 String (toSplit/15096330 (cast-from-var3804-to-var1742 var521))) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1: java.lang.CharSequence toSplit> 
(define-const var2841 Int (String_length/-667254855 var2660)) ; Statement: $i3 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if i2 >= $i3 goto $i6 = (int) -1 
(assert (not (>= var3671 var2841))) ; Negate: Cond: i2 >= $i3  
(define-const var3137 Int var3671) ; Statement: $i4 = i2 
 ; Statement: goto [?= return $i4] 
(assert true) ; Non Conditional
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-204177579=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4), val$length/-1832612664=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4], int), toSplit/15096330=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$SplittingIterator], java.lang.CharSequence), cast-from-var3804-to-var1742=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$SplittingIterator), String_length/-667254855=([java.lang.CharSequence], int)}
; {var3804=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1, var521=r0, var3959=i0, var625=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4, var1472=$r1, var3390=$i1, var3671=i2, var1742=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$SplittingIterator, var2660=$r2, var2841=$i3, var3137=$i4}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1=var3804, r0=var521, i0=var3959, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4=var625, $r1=var1472, $i1=var3390, i2=var3671, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$SplittingIterator=var1742, $r2=var2660, $i3=var2841, $i4=var3137}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1;	i0 := @parameter0: int;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4 this$0>;	$i1 = $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4: int val$length>;	i2 = i0 + $i1;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1: java.lang.CharSequence toSplit>;	$i3 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if i2 >= $i3 goto $i6 = (int) -1;	$i4 = i2;	goto [?= return $i4];	return $i4
;block_num 3
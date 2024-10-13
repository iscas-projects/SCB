(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var345 0)
(declare-sort var3732 0)
(declare-sort var1793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/117970391 (var345) Int)
(declare-fun val$pattern/117970391 (var345) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3732_checkState/1431124798 (Bool) void)
(declare-fun limit/117970391 (var345) Int)
(declare-fun var1793-init () var1793)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/875830710 (var1793 String) void)
(declare-const null-var345 var345)
(declare-const var2290 var345) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var2290 null-var345)))
(define-const var3760 Int (pos/117970391 var2290)) ; Statement: i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1818 String (val$pattern/117970391 var2290)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var944 Int (pos/117970391 var2290)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var516 Int (+ var944 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var2290!1 var345)
(assert (not (= var2290!1 null-var345)))
(assert (= (pos/117970391 var2290!1) var516)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i2 
(assert (not (and true (and (> (str.len var1818) var944) (<= 0 var944)))))
(check-sat)
(get-model)
(get-unsat-core)
; {pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3732_checkState/1431124798=([boolean], void), limit/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), var1793-init=([], java.lang.IllegalArgumentException), substring/850833817=([java.lang.String, int], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var345=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var2290=r0, var3760=i0, var1818=$r1, var944=$i1, var516=$i2, var2816=$c3, var1650=$i16, var1110=$z0, var3732=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2720=i14, var1854=$i15, var1757=$i4, var1793=java.lang.IllegalArgumentException, var621=$r12, var2745=$r8, var2743=$r9, var2080=$r10}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var345, r0=var2290, i0=var3760, $r1=var1818, $i1=var944, $i2=var516, $c3=var2816, $i16=var1650, $z0=var1110, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3732, i14=var2720, $i15=var1854, $i4=var1757, java.lang.IllegalArgumentException=var1793, $r12=var621, $r8=var2745, $r9=var2743, $r10=var2080}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i2 = $i1 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i2;	$c3 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i1);	$i16 = (int) $c3;	if $i16 != 123 goto $z0 = 0;	$z0 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	i14 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i15 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if i14 >= $i15 goto $i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	$i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if i14 != $i4 goto $i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$r12 = new java.lang.IllegalArgumentException;	$r8 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i0);	$r10 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r9) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Malformed unicode escape: expected \'}\' after \u0001");	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r12
;block_num 6
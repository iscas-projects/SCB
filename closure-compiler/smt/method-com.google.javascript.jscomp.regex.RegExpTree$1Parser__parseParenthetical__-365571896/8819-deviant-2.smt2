(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1613 0)
(declare-sort var1928 0)
(declare-sort var3956 0)
(declare-sort var2698 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$pattern/117970391 (var1613) String)
(declare-fun pos/117970391 (var1613) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1928_checkState/1431124798 (Bool) void)
(declare-fun limit/117970391 (var1613) Int)
(declare-fun var2698-init () var2698)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/875830710 (var2698 String) void)
(declare-const null-var1613 var1613)
(declare-const null-String String)
(declare-const var902 var1613) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var902 null-var1613)))
(define-const var68 String (val$pattern/117970391 var902)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var272 Int (pos/117970391 var902)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (and true (and (> (str.len var68) var272) (<= 0 var272))))
(define-const var1190 Int (charAt/698050440 var68 var272)) ; Statement: $c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0) 
(define-const var3777 Int (cast-from-Int-to-Int var1190)) ; Statement: $i51 = (int) $c1 
 ; Statement: if $i51 != 40 goto $z0 = 0 
(assert (not (= var3777 40))) ; Cond: $i51 != 40 
(define-const var3776 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
;(assert (var1928_checkState/1431124798 var3776)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var3776!1 Bool)
(define-const var1721 Int (pos/117970391 var902)) ; Statement: $i47 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var3257 Int (pos/117970391 var902)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var3425 Int (+ var3257 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var902!1 var1613)
(assert (not (= var902!1 null-var1613)))
(assert (= (pos/117970391 var902!1) var3425)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3 
(define-const var2133 String null-String) ; Statement: r34 = null 
(define-const var3191 Int (pos/117970391 var902!1)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var2655 Int (limit/117970391 var902!1)) ; Statement: $i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i5 >= $i4 goto r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING> 
(assert (not (>= var3191 var2655))) ; Negate: Cond: $i5 >= $i4  
(define-const var1142 String (val$pattern/117970391 var902!1)) ; Statement: $r20 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var1843 Int (pos/117970391 var902!1)) ; Statement: $i16 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (and true (and (> (str.len var1142) var1843) (<= 0 var1843))))
(define-const var830 Int (charAt/698050440 var1142 var1843)) ; Statement: $c17 = virtualinvoke $r20.<java.lang.String: char charAt(int)>($i16) 
(define-const var2248 Int (cast-from-Int-to-Int var830)) ; Statement: $i52 = (int) $c17 
 ; Statement: if $i52 != 63 goto r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING> 
(assert (not (not (= var2248 63)))) ; Negate: Cond: $i52 != 63  
(define-const var421 Int (pos/117970391 var902!1)) ; Statement: $i18 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var3495 Int (+ var421 1)) ; Statement: $i20 = $i18 + 1 
(define-const var3164 Int (limit/117970391 var902!1)) ; Statement: $i19 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i20 >= $i19 goto $r38 = new java.lang.IllegalArgumentException 
(assert (>= var3495 var3164)) ; Cond: $i20 >= $i19 
(define-const var2088 var2698 var2698-init) ; Statement: $r38 = new java.lang.IllegalArgumentException 
(define-const var2050 String (val$pattern/117970391 var902!1)) ; Statement: $r22 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(assert (not (and true (and (>= var1721 0) (>= (str.len var2050) var1721)))))
(check-sat)
(get-model)
(get-unsat-core)
; {val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1928_checkState/1431124798=([boolean], void), limit/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), var2698-init=([], java.lang.IllegalArgumentException), substring/850833817=([java.lang.String, int], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1613=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var902=r0, var68=$r1, var272=$i0, var1190=$c1, var3777=$i51, var3776=$z0, var1928=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1721=$i47, var3257=$i2, var3425=$i3, var3956=null_type, var2133=r34, var3191=$i5, var2655=$i4, var1142=$r20, var1843=$i16, var830=$c17, var2248=$i52, var421=$i18, var3495=$i20, var3164=$i19, var2698=java.lang.IllegalArgumentException, var2088=$r38, var2050=$r22, var3685=$r23, var3833=$r24}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var1613, r0=var902, $r1=var68, $i0=var272, $c1=var1190, $i51=var3777, $z0=var3776, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1928, $i47=var1721, $i2=var3257, $i3=var3425, null_type=var3956, r34=var2133, $i5=var3191, $i4=var2655, $r20=var1142, $i16=var1843, $c17=var830, $i52=var2248, $i18=var421, $i20=var3495, $i19=var3164, java.lang.IllegalArgumentException=var2698, $r38=var2088, $r22=var2050, $r23=var3685, $r24=var3833}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i51 = (int) $c1;	if $i51 != 40 goto $z0 = 0;	$z0 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	$i47 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i3 = $i2 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3;	r34 = null;	$i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i5 >= $i4 goto r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING>;	$r20 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i16 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$c17 = virtualinvoke $r20.<java.lang.String: char charAt(int)>($i16);	$i52 = (int) $c17;	if $i52 != 63 goto r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING>;	$i18 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i20 = $i18 + 1;	$i19 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i20 >= $i19 goto $r38 = new java.lang.IllegalArgumentException;	$r38 = new java.lang.IllegalArgumentException;	$r22 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$r23 = virtualinvoke $r22.<java.lang.String: java.lang.String substring(int)>($i47);	$r24 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r23) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Malformed parenthetical: \u0001");	specialinvoke $r38.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r24);	throw $r38
;block_num 6
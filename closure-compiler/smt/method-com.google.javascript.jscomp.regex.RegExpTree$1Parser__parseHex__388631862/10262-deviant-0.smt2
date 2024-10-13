(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2252 0)
(declare-sort var2633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/117970391 (var2252) Int)
(declare-fun limit/117970391 (var2252) Int)
(declare-fun var2633-init () var2633)
(declare-fun val$pattern/117970391 (var2252) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/875830710 (var2633 String) void)
(declare-const null-var2252 var2252)
(declare-const null-Int Int)
(declare-const var1300 var2252) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var1300 null-var2252)))
(declare-const var3340 Int) ; Statement: i10 := @parameter0: int 
(assert (not (= var3340 null-Int)))
(define-const var3917 Int (pos/117970391 var1300)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var986 Int (+ var3917 var3340)) ; Statement: $i2 = $i0 + i10 
(define-const var3730 Int (limit/117970391 var1300)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i2 <= $i1 goto (branch) 
(assert (not (<= var986 var3730))) ; Negate: Cond: $i2 <= $i1  
(define-const var482 var2633 var2633-init) ; Statement: $r13 = new java.lang.IllegalArgumentException 
(define-const var937 String (val$pattern/117970391 var1300)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var1058 Int (pos/117970391 var1300)) ; Statement: $i9 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (not (and true (and (>= var1058 0) (>= (str.len var937) var1058)))))
(check-sat)
(get-model)
(get-unsat-core)
; {pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), limit/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), var2633-init=([], java.lang.IllegalArgumentException), val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2252=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var1300=r0, var3340=i10, var3917=$i0, var986=$i2, var3730=$i1, var2633=java.lang.IllegalArgumentException, var482=$r13, var937=$r10, var1058=$i9, var3682=$r11, var1199=$r12}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var2252, r0=var1300, i10=var3340, $i0=var3917, $i2=var986, $i1=var3730, java.lang.IllegalArgumentException=var2633, $r13=var482, $r10=var937, $i9=var1058, $r11=var3682, $r12=var1199}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	i10 := @parameter0: int;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i2 = $i0 + i10;	$i1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i2 <= $i1 goto (branch);	$r13 = new java.lang.IllegalArgumentException;	$r10 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i9 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$r11 = virtualinvoke $r10.<java.lang.String: java.lang.String substring(int)>($i9);	$r12 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Abbreviated hex escape \u0001");	specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r13
;block_num 2
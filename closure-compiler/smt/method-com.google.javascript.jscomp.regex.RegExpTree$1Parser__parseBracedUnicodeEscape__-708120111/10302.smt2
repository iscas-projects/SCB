(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var309 0)
(declare-sort var3793 0)
(declare-sort var469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/117970391 (var309) Int)
(declare-fun val$pattern/117970391 (var309) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3793_checkState/1431124798 (Bool) void)
(declare-fun limit/117970391 (var309) Int)
(declare-fun var469-init () var469)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/875830710 (var469 String) void)
(declare-const null-var309 var309)
(declare-const var2381 var309) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var2381 null-var309)))
(define-const var1794 Int (pos/117970391 var2381)) ; Statement: i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1534 String (val$pattern/117970391 var2381)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var1817 Int (pos/117970391 var2381)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var2568 Int (+ var1817 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var2381!1 var309)
(assert (not (= var2381!1 null-var309)))
(assert (= (pos/117970391 var2381!1) var2568)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i2 
(assert (and true (and (> (str.len var1534) var1817) (<= 0 var1817))))
(define-const var2155 Int (charAt/698050440 var1534 var1817)) ; Statement: $c3 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i1) 
(define-const var2809 Int (cast-from-Int-to-Int var2155)) ; Statement: $i16 = (int) $c3 
 ; Statement: if $i16 != 123 goto $z0 = 0 
(assert (not (not (= var2809 123)))) ; Negate: Cond: $i16 != 123  
(define-const var930 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0)] 
(assert true) ; Non Conditional
;(assert (var3793_checkState/1431124798 var930)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var930!1 Bool)
(define-const var2939 Int (pos/117970391 var2381!1)) ; Statement: i14 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert true) ; Non Conditional
(define-const var1385 Int (limit/117970391 var2381!1)) ; Statement: $i15 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if i14 >= $i15 goto $i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
(assert (>= var2939 var1385)) ; Cond: i14 >= $i15 
(define-const var775 Int (limit/117970391 var2381!1)) ; Statement: $i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if i14 != $i4 goto $i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (not (not (= var2939 var775)))) ; Negate: Cond: i14 != $i4  
(define-const var3109 var469 var469-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(define-const var1549 String (val$pattern/117970391 var2381!1)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(assert (and true (and (>= var1794 0) (>= (str.len var1549) var1794))))
(define-const var3560 String (substring/850833817 var1549 var1794)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i0) 
(define-const var158 String (str.++ "Malformed unicode escape: expected \u0027}\u0027 after \u0001" var3560)) ; Statement: $r10 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r9) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Malformed unicode escape: expected \'}\' after \u0001") 
(assert true)
;(assert (<init>/875830710 var3109 var158)) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var3109!1 var469)
(declare-const var158!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3793_checkState/1431124798=([boolean], void), limit/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), var469-init=([], java.lang.IllegalArgumentException), substring/850833817=([java.lang.String, int], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var309=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var2381=r0, var1794=i0, var1534=$r1, var1817=$i1, var2568=$i2, var2155=$c3, var2809=$i16, var930=$z0, var3793=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2939=i14, var1385=$i15, var775=$i4, var469=java.lang.IllegalArgumentException, var3109=$r12, var1549=$r8, var3560=$r9, var158=$r10}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var309, r0=var2381, i0=var1794, $r1=var1534, $i1=var1817, $i2=var2568, $c3=var2155, $i16=var2809, $z0=var930, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3793, i14=var2939, $i15=var1385, $i4=var775, java.lang.IllegalArgumentException=var469, $r12=var3109, $r8=var1549, $r9=var3560, $r10=var158}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i2 = $i1 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i2;	$c3 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i1);	$i16 = (int) $c3;	if $i16 != 123 goto $z0 = 0;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	i14 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i15 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if i14 >= $i15 goto $i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	$i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if i14 != $i4 goto $i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$r12 = new java.lang.IllegalArgumentException;	$r8 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i0);	$r10 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r9) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Malformed unicode escape: expected \'}\' after \u0001");	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r12
;block_num 6
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1888 0)
(declare-sort var686 0)
(declare-sort var354 0)
(declare-sort var2520 0)
(declare-sort var954 0)
(declare-sort var3821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$pattern/117970391 (var1888) String)
(declare-fun pos/117970391 (var1888) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var686_checkState/1431124798 (Bool) void)
(declare-fun limit/117970391 (var1888) Int)
(declare-fun parse/1248933696 (var1888) var954)
(declare-fun var3821-init () var3821)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/875830710 (var3821 String) void)
(declare-const null-var1888 var1888)
(declare-const null-String String)
(declare-const var2520-CAPTURING var2520)
(declare-const var1906 var1888) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var1906 null-var1888)))
(define-const var1331 String (val$pattern/117970391 var1906)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var1067 Int (pos/117970391 var1906)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (and true (and (> (str.len var1331) var1067) (<= 0 var1067))))
(define-const var3720 Int (charAt/698050440 var1331 var1067)) ; Statement: $c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0) 
(define-const var2928 Int (cast-from-Int-to-Int var3720)) ; Statement: $i51 = (int) $c1 
 ; Statement: if $i51 != 40 goto $z0 = 0 
(assert (not (= var2928 40))) ; Cond: $i51 != 40 
(define-const var527 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
;(assert (var686_checkState/1431124798 var527)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var527!1 Bool)
(define-const var3612 Int (pos/117970391 var1906)) ; Statement: $i47 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var3191 Int (pos/117970391 var1906)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var3444 Int (+ var3191 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var1906!1 var1888)
(assert (not (= var1906!1 null-var1888)))
(assert (= (pos/117970391 var1906!1) var3444)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3 
(define-const var2803 String null-String) ; Statement: r34 = null 
(define-const var773 Int (pos/117970391 var1906!1)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var474 Int (limit/117970391 var1906!1)) ; Statement: $i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i5 >= $i4 goto r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING> 
(assert (>= var773 var474)) ; Cond: $i5 >= $i4 
(define-const var368 var2520 var2520-CAPTURING) ; Statement: r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING> 
(assert true) ; Non Conditional
(assert true)
(define-const var2128 var954 (parse/1248933696 var1906!1)) ; Statement: $r36 = virtualinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: com.google.javascript.jscomp.regex.RegExpTree parse()>() 
(define-const var3958 Int (pos/117970391 var1906!1)) ; Statement: $i49 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var3859 Int (limit/117970391 var1906!1)) ; Statement: $i50 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i49 >= $i50 goto $r39 = new java.lang.IllegalArgumentException 
(assert (>= var3958 var3859)) ; Cond: $i49 >= $i50 
(define-const var3727 var3821 var3821-init) ; Statement: $r39 = new java.lang.IllegalArgumentException 
(define-const var3169 String (val$pattern/117970391 var1906!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(assert (and true (and (>= var3612 0) (>= (str.len var3169) var3612))))
(define-const var3286 String (substring/850833817 var3169 var3612)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int)>($i47) 
(define-const var3593 String (str.++ "Unclosed parenthetical group: \u0001" var3286)) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r4) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Unclosed parenthetical group: \u0001") 
(assert true)
;(assert (<init>/875830710 var3727 var3593)) ; Statement: specialinvoke $r39.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var3727!1 var3821)
(declare-const var3593!1 String)
 ; Statement: throw $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var686_checkState/1431124798=([boolean], void), limit/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), parse/1248933696=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], com.google.javascript.jscomp.regex.RegExpTree), var3821-init=([], java.lang.IllegalArgumentException), substring/850833817=([java.lang.String, int], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1888=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var1906=r0, var1331=$r1, var1067=$i0, var3720=$c1, var2928=$i51, var527=$z0, var686=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3612=$i47, var3191=$i2, var3444=$i3, var354=null_type, var2803=r34, var773=$i5, var474=$i4, var2520=com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType, var368=r35, var954=com.google.javascript.jscomp.regex.RegExpTree, var2128=$r36, var3958=$i49, var3859=$i50, var3821=java.lang.IllegalArgumentException, var3727=$r39, var3169=$r3, var3286=$r4, var3593=$r5}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var1888, r0=var1906, $r1=var1331, $i0=var1067, $c1=var3720, $i51=var2928, $z0=var527, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var686, $i47=var3612, $i2=var3191, $i3=var3444, null_type=var354, r34=var2803, $i5=var773, $i4=var474, com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType=var2520, r35=var368, com.google.javascript.jscomp.regex.RegExpTree=var954, $r36=var2128, $i49=var3958, $i50=var3859, java.lang.IllegalArgumentException=var3821, $r39=var3727, $r3=var3169, $r4=var3286, $r5=var3593}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i51 = (int) $c1;	if $i51 != 40 goto $z0 = 0;	$z0 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	$i47 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i3 = $i2 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3;	r34 = null;	$i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i5 >= $i4 goto r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING>;	r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING>;	$r36 = virtualinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: com.google.javascript.jscomp.regex.RegExpTree parse()>();	$i49 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i50 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i49 >= $i50 goto $r39 = new java.lang.IllegalArgumentException;	$r39 = new java.lang.IllegalArgumentException;	$r3 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int)>($i47);	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r4) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Unclosed parenthetical group: \u0001");	specialinvoke $r39.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r39
;block_num 6
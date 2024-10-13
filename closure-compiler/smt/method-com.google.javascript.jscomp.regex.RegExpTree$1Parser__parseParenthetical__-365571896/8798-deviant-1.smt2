(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1403 0)
(declare-sort var467 0)
(declare-sort var3721 0)
(declare-sort var1692 0)
(declare-sort var3253 0)
(declare-sort var2573 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$pattern/117970391 (var1403) String)
(declare-fun pos/117970391 (var1403) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var467_checkState/1431124798 (Bool) void)
(declare-fun limit/117970391 (var1403) Int)
(declare-fun parse/1248933696 (var1403) var3253)
(declare-fun var2573-init () var2573)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/875830710 (var2573 String) void)
(declare-const null-var1403 var1403)
(declare-const null-String String)
(declare-const var1692-CAPTURING var1692)
(declare-const var142 var1403) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var142 null-var1403)))
(define-const var246 String (val$pattern/117970391 var142)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var3458 Int (pos/117970391 var142)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (and true (and (> (str.len var246) var3458) (<= 0 var3458))))
(define-const var3300 Int (charAt/698050440 var246 var3458)) ; Statement: $c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0) 
(define-const var1169 Int (cast-from-Int-to-Int var3300)) ; Statement: $i51 = (int) $c1 
 ; Statement: if $i51 != 40 goto $z0 = 0 
(assert (not (not (= var1169 40)))) ; Negate: Cond: $i51 != 40  
(define-const var2971 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0)] 
(assert true) ; Non Conditional
;(assert (var467_checkState/1431124798 var2971)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var2971!1 Bool)
(define-const var3411 Int (pos/117970391 var142)) ; Statement: $i47 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var913 Int (pos/117970391 var142)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1321 Int (+ var913 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var142!1 var1403)
(assert (not (= var142!1 null-var1403)))
(assert (= (pos/117970391 var142!1) var1321)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3 
(define-const var3972 String null-String) ; Statement: r34 = null 
(define-const var3527 Int (pos/117970391 var142!1)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1591 Int (limit/117970391 var142!1)) ; Statement: $i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i5 >= $i4 goto r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING> 
(assert (>= var3527 var1591)) ; Cond: $i5 >= $i4 
(define-const var1010 var1692 var1692-CAPTURING) ; Statement: r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING> 
(assert true) ; Non Conditional
(assert true)
(define-const var3377 var3253 (parse/1248933696 var142!1)) ; Statement: $r36 = virtualinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: com.google.javascript.jscomp.regex.RegExpTree parse()>() 
(define-const var3097 Int (pos/117970391 var142!1)) ; Statement: $i49 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1626 Int (limit/117970391 var142!1)) ; Statement: $i50 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i49 >= $i50 goto $r39 = new java.lang.IllegalArgumentException 
(assert (>= var3097 var1626)) ; Cond: $i49 >= $i50 
(define-const var1899 var2573 var2573-init) ; Statement: $r39 = new java.lang.IllegalArgumentException 
(define-const var1808 String (val$pattern/117970391 var142!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(assert (not (and true (and (>= var3411 0) (>= (str.len var1808) var3411)))))
(check-sat)
(get-model)
(get-unsat-core)
; {val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var467_checkState/1431124798=([boolean], void), limit/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), parse/1248933696=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], com.google.javascript.jscomp.regex.RegExpTree), var2573-init=([], java.lang.IllegalArgumentException), substring/850833817=([java.lang.String, int], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1403=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var142=r0, var246=$r1, var3458=$i0, var3300=$c1, var1169=$i51, var2971=$z0, var467=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3411=$i47, var913=$i2, var1321=$i3, var3721=null_type, var3972=r34, var3527=$i5, var1591=$i4, var1692=com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType, var1010=r35, var3253=com.google.javascript.jscomp.regex.RegExpTree, var3377=$r36, var3097=$i49, var1626=$i50, var2573=java.lang.IllegalArgumentException, var1899=$r39, var1808=$r3, var448=$r4, var3009=$r5}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var1403, r0=var142, $r1=var246, $i0=var3458, $c1=var3300, $i51=var1169, $z0=var2971, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var467, $i47=var3411, $i2=var913, $i3=var1321, null_type=var3721, r34=var3972, $i5=var3527, $i4=var1591, com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType=var1692, r35=var1010, com.google.javascript.jscomp.regex.RegExpTree=var3253, $r36=var3377, $i49=var3097, $i50=var1626, java.lang.IllegalArgumentException=var2573, $r39=var1899, $r3=var1808, $r4=var448, $r5=var3009}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i51 = (int) $c1;	if $i51 != 40 goto $z0 = 0;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	$i47 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i3 = $i2 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3;	r34 = null;	$i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i5 >= $i4 goto r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING>;	r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING>;	$r36 = virtualinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: com.google.javascript.jscomp.regex.RegExpTree parse()>();	$i49 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i50 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i49 >= $i50 goto $r39 = new java.lang.IllegalArgumentException;	$r39 = new java.lang.IllegalArgumentException;	$r3 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int)>($i47);	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r4) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Unclosed parenthetical group: \u0001");	specialinvoke $r39.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r39
;block_num 6
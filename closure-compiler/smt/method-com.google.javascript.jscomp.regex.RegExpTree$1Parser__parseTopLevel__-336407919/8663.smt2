(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3424 0)
(declare-sort var2807 0)
(declare-sort var1259 0)
(declare-sort var3103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/117970391 (var3424) Int)
(declare-fun numCapturingGroups/117970391 (var3424) Int)
(declare-fun lookForNamedCaptureBackreferences/117970391 (var3424) Bool)
(declare-fun parse/1248933696 (var3424) var2807)
(declare-fun capturingGroupNames/117970391 (var3424) var1259)
(declare-fun var1259_isEmpty/-1493248066 (var1259) Bool)
(declare-fun limit/117970391 (var3424) Int)
(declare-fun var3103-init () var3103)
(declare-fun val$pattern/117970391 (var3424) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/875830710 (var3103 String) void)
(declare-const null-var3424 var3424)
(declare-const var1589 var3424) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var1589 null-var3424)))
(declare-const var1589!1 var3424)
(assert (not (= var1589!1 null-var3424)))
(assert (= (pos/117970391 var1589!1) 0)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = 0 
(declare-const var1589!2 var3424)
(assert (not (= var1589!2 null-var3424)))
(assert (= (numCapturingGroups/117970391 var1589!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int numCapturingGroups> = 0 
(declare-const var1589!3 var3424)
(assert (not (= var1589!3 null-var3424)))
(assert (= (lookForNamedCaptureBackreferences/117970391 var1589!3) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: boolean lookForNamedCaptureBackreferences> = 0 
(assert true)
(define-const var1199 var2807 (parse/1248933696 var1589!3)) ; Statement: r5 = virtualinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: com.google.javascript.jscomp.regex.RegExpTree parse()>() 
(define-const var3418 var1259 (capturingGroupNames/117970391 var1589!3)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.util.Set capturingGroupNames> 
(define-const var770 Bool (var1259_isEmpty/-1493248066 var3418)) ; Statement: $z0 = interfaceinvoke $r1.<java.util.Set: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $i1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (not (= (ite var770 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1543 Int (pos/117970391 var1589!3)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var2245 Int (limit/117970391 var1589!3)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i1 >= $i0 goto return r5 
(assert (not (>= var1543 var2245))) ; Negate: Cond: $i1 >= $i0  
(define-const var3972 var3103 var3103-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var997 String (val$pattern/117970391 var1589!3)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var1273 Int (pos/117970391 var1589!3)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (and true (and (>= var1273 0) (>= (str.len var997) var1273))))
(define-const var988 String (substring/850833817 var997 var1273)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int)>($i2) 
(assert true)
;(assert (<init>/875830710 var3972 var988)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var3972!1 var3103)
(declare-const var988!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), numCapturingGroups/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), lookForNamedCaptureBackreferences/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], boolean), parse/1248933696=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], com.google.javascript.jscomp.regex.RegExpTree), capturingGroupNames/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.util.Set), var1259_isEmpty/-1493248066=([java.util.Set], boolean), limit/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), var3103-init=([], java.lang.IllegalArgumentException), val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3424=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var1589=r0, var2807=com.google.javascript.jscomp.regex.RegExpTree, var1199=r5, var1259=java.util.Set, var3418=$r1, var770=$z0, var1543=$i1, var2245=$i0, var3103=java.lang.IllegalArgumentException, var3972=$r2, var997=$r3, var1273=$i2, var988=$r4}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var3424, r0=var1589, com.google.javascript.jscomp.regex.RegExpTree=var2807, r5=var1199, java.util.Set=var1259, $r1=var3418, $z0=var770, $i1=var1543, $i0=var2245, java.lang.IllegalArgumentException=var3103, $r2=var3972, $r3=var997, $i2=var1273, $r4=var988}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = 0;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int numCapturingGroups> = 0;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: boolean lookForNamedCaptureBackreferences> = 0;	r5 = virtualinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: com.google.javascript.jscomp.regex.RegExpTree parse()>();	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.util.Set capturingGroupNames>;	$z0 = interfaceinvoke $r1.<java.util.Set: boolean isEmpty()>();	if $z0 != 0 goto $i1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i1 >= $i0 goto return r5;	$r2 = new java.lang.IllegalArgumentException;	$r3 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int)>($i2);	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r2
;block_num 3
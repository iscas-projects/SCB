(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1367 0)
(declare-sort var322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var322) Bool)
(declare-fun getString/-897720134 (var322) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun warnInvalid/-1312253226 (var1367 String) void)
(declare-const null-var1367 var1367)
(declare-const null-var322 var322)
(declare-const var2594 var1367) ; Statement: r2 := @this: com.google.javascript.jscomp.parsing.TypeTransformationParser 
(assert (not (= var2594 null-var1367)))
(declare-const var228 var322) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var228 null-var322)))
(assert true)
(define-const var3235 Bool (isName/-1249361959 var228)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 != 0 goto $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert (not (= (ite var3235 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var851 String (getString/-897720134 var228)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1108 Bool (isEmpty/-1285796103 var851)) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto return 1 
(assert (not (= (ite var1108 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (warnInvalid/-1312253226 var2594 "string parameter")) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.parsing.TypeTransformationParser: void warnInvalid(java.lang.String)>("string parameter") 

(declare-const var2594!1 var1367)
(declare-const var2107 String)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), warnInvalid/-1312253226=([com.google.javascript.jscomp.parsing.TypeTransformationParser, java.lang.String], void)}
; {var1367=com.google.javascript.jscomp.parsing.TypeTransformationParser, var2594=r2, var322=com.google.javascript.rhino.Node, var228=r0, var3235=$z0, var851=$r1, var1108=$z1, var2107="string parameter"}
; {com.google.javascript.jscomp.parsing.TypeTransformationParser=var1367, r2=var2594, com.google.javascript.rhino.Node=var322, r0=var228, $z0=var3235, $r1=var851, $z1=var1108, "string parameter"=var2107}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.parsing.TypeTransformationParser;	r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 != 0 goto $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z1 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto return 1;	virtualinvoke r2.<com.google.javascript.jscomp.parsing.TypeTransformationParser: void warnInvalid(java.lang.String)>("string parameter");	return 0
;block_num 3
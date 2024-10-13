(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3575 0)
(declare-sort var2902 0)
(declare-sort var2418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/117970391 (var3575) Int)
(declare-fun numCapturingGroups/117970391 (var3575) Int)
(declare-fun lookForNamedCaptureBackreferences/117970391 (var3575) Bool)
(declare-fun parse/1248933696 (var3575) var2902)
(declare-fun capturingGroupNames/117970391 (var3575) var2418)
(declare-fun var2418_isEmpty/-1493248066 (var2418) Bool)
(declare-fun limit/117970391 (var3575) Int)
(declare-const null-var3575 var3575)
(declare-const var475 var3575) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var475 null-var3575)))
(declare-const var475!1 var3575)
(assert (not (= var475!1 null-var3575)))
(assert (= (pos/117970391 var475!1) 0)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = 0 
(declare-const var475!2 var3575)
(assert (not (= var475!2 null-var3575)))
(assert (= (numCapturingGroups/117970391 var475!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int numCapturingGroups> = 0 
(declare-const var475!3 var3575)
(assert (not (= var475!3 null-var3575)))
(assert (= (lookForNamedCaptureBackreferences/117970391 var475!3) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: boolean lookForNamedCaptureBackreferences> = 0 
(assert true)
(define-const var931 var2902 (parse/1248933696 var475!3)) ; Statement: r5 = virtualinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: com.google.javascript.jscomp.regex.RegExpTree parse()>() 
(define-const var969 var2418 (capturingGroupNames/117970391 var475!3)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.util.Set capturingGroupNames> 
(define-const var3742 Bool (var2418_isEmpty/-1493248066 var969)) ; Statement: $z0 = interfaceinvoke $r1.<java.util.Set: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $i1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (not (= (ite var3742 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1903 Int (pos/117970391 var475!3)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var2391 Int (limit/117970391 var475!3)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i1 >= $i0 goto return r5 
(assert (>= var1903 var2391)) ; Cond: $i1 >= $i0 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), numCapturingGroups/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), lookForNamedCaptureBackreferences/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], boolean), parse/1248933696=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], com.google.javascript.jscomp.regex.RegExpTree), capturingGroupNames/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.util.Set), var2418_isEmpty/-1493248066=([java.util.Set], boolean), limit/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int)}
; {var3575=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var475=r0, var2902=com.google.javascript.jscomp.regex.RegExpTree, var931=r5, var2418=java.util.Set, var969=$r1, var3742=$z0, var1903=$i1, var2391=$i0}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var3575, r0=var475, com.google.javascript.jscomp.regex.RegExpTree=var2902, r5=var931, java.util.Set=var2418, $r1=var969, $z0=var3742, $i1=var1903, $i0=var2391}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = 0;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int numCapturingGroups> = 0;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: boolean lookForNamedCaptureBackreferences> = 0;	r5 = virtualinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: com.google.javascript.jscomp.regex.RegExpTree parse()>();	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.util.Set capturingGroupNames>;	$z0 = interfaceinvoke $r1.<java.util.Set: boolean isEmpty()>();	if $z0 != 0 goto $i1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i1 >= $i0 goto return r5;	return r5
;block_num 3
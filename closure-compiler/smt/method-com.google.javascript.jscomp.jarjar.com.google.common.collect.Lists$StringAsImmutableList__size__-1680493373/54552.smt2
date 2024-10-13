(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2355 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/579100894 (var2355) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2355 var2355)
(declare-const var3354 var2355) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList 
(assert (not (= var3354 null-var2355)))
(define-const var3618 String (string/579100894 var3354)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList: java.lang.String string> 
(assert true)
(define-const var1581 Int (length/-134980193 var3618)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {string/579100894=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2355=com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList, var3354=r0, var3618=$r1, var1581=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList=var2355, r0=var3354, $r1=var3618, $i0=var1581}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList: java.lang.String string>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	return $i0
;block_num 1
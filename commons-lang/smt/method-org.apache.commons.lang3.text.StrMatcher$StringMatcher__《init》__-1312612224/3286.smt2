(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1345 0)
(declare-sort var3199 0)
(declare-sort var3051 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1653303038 (var3051) void)
(declare-fun cast-from-var1345-to-var3051 (var1345) var3051)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun chars/922855258 (var1345) (Array Int Int))
(declare-const null-var1345 var1345)
(declare-const null-String String)
(declare-const var2608 var1345) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrMatcher$StringMatcher 
(assert (not (= var2608 null-var1345)))
(declare-const var1364 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1364 null-String)))
(assert true)
;(assert (<init>/1653303038 (cast-from-var1345-to-var3051 var2608))) ; Statement: specialinvoke r0.<org.apache.commons.lang3.text.StrMatcher: void <init>()>() 

(declare-const var2608!1 var1345)
(assert true)
(define-const var74 (Array Int Int) (toCharArray/415275702 var1364)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(declare-const var2608!2 var1345)
(assert (not (= var2608!2 null-var1345)))
(assert (= (chars/922855258 var2608!2) var74)) ; Statement: r0.<org.apache.commons.lang3.text.StrMatcher$StringMatcher: char[] chars> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1653303038=([org.apache.commons.lang3.text.StrMatcher], void), cast-from-var1345-to-var3051=([org.apache.commons.lang3.text.StrMatcher$StringMatcher], org.apache.commons.lang3.text.StrMatcher), toCharArray/415275702=([java.lang.String], char[]), chars/922855258=([org.apache.commons.lang3.text.StrMatcher$StringMatcher], char[])}
; {var1345=org.apache.commons.lang3.text.StrMatcher$StringMatcher, var2608=r0, var1364=r1, var3199=null_type, var3051=org.apache.commons.lang3.text.StrMatcher, var74=$r2}
; {org.apache.commons.lang3.text.StrMatcher$StringMatcher=var1345, r0=var2608, r1=var1364, null_type=var3199, org.apache.commons.lang3.text.StrMatcher=var3051, $r2=var74}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrMatcher$StringMatcher;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<org.apache.commons.lang3.text.StrMatcher: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	r0.<org.apache.commons.lang3.text.StrMatcher$StringMatcher: char[] chars> = $r2;	return
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var743 0)
(declare-sort var2433 0)
(declare-sort var2074 0)
(declare-sort var3869 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun split/848239037 (String String Int) (Array Int String))
(declare-fun originalToNewNameMap/-1782132849 (var743) var2074)
(declare-fun get/-328895909 (var2074 var3869) var3869)
(declare-fun cast-from-String-to-var3869 (String) var3869)
(declare-fun cast-from-var3869-to-String (var3869) String)
(declare-const null-var743 var743)
(declare-const null-String String)
(declare-const var3556 var743) ; Statement: r2 := @this: com.google.javascript.jscomp.ReplacedStringsDecoder 
(assert (not (= var3556 null-var743)))
(declare-const var33 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var33 null-String)))
(define-const var270 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
(assert true)
(define-const var2123 (Array Int String) (split/848239037 var33 "`" var270)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String,int)>("`", $i7) 
(define-const var939 var2074 (originalToNewNameMap/-1782132849 var3556)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.ReplacedStringsDecoder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap originalToNewNameMap> 
(define-const var367 String (select var2123 0)) ; Statement: $r3 = r1[0] 
(assert true)
(define-const var1889 var3869 (get/-328895909 var939 (cast-from-String-to-var3869 var367))) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var2037 String (cast-from-var3869-to-String var1889)) ; Statement: r6 = (java.lang.String) $r5 
 ; Statement: if r6 != null goto $i9 = (int) -1 
(assert (not (not (= var2037 null-String)))) ; Negate: Cond: r6 != null  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), split/848239037=([java.lang.String, java.lang.String, int], java.lang.String[]), originalToNewNameMap/-1782132849=([com.google.javascript.jscomp.ReplacedStringsDecoder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), get/-328895909=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, java.lang.Object], java.lang.Object), cast-from-String-to-var3869=([java.lang.String], java.lang.Object), cast-from-var3869-to-String=([java.lang.Object], java.lang.String)}
; {var743=com.google.javascript.jscomp.ReplacedStringsDecoder, var3556=r2, var33=r0, var2433=null_type, var270=$i7, var2123=r1, var2074=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var939=$r4, var367=$r3, var3869=java.lang.Object, var1889=$r5, var2037=r6}
; {com.google.javascript.jscomp.ReplacedStringsDecoder=var743, r2=var3556, r0=var33, null_type=var2433, $i7=var270, r1=var2123, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2074, $r4=var939, $r3=var367, java.lang.Object=var3869, $r5=var1889, r6=var2037}
;seq <java.lang.String: java.lang.String[] split(java.lang.String,int)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String,int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ReplacedStringsDecoder;	r0 := @parameter0: java.lang.String;	$i7 = (int) -1;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String,int)>("`", $i7);	$r4 = r2.<com.google.javascript.jscomp.ReplacedStringsDecoder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap originalToNewNameMap>;	$r3 = r1[0];	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: java.lang.Object get(java.lang.Object)>($r3);	r6 = (java.lang.String) $r5;	if r6 != null goto $i9 = (int) -1;	return r0
;block_num 2
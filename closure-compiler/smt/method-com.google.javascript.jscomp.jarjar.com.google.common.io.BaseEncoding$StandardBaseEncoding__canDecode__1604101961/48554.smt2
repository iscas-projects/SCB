(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var674 0)
(declare-sort var3585 0)
(declare-sort var1186 0)
(declare-sort var2653 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3585_checkNotNull/1446102589 (var1186) var1186)
(declare-fun cast-from-String-to-var1186 (String) var1186)
(declare-fun trimTrailingPadding/35071171 (var674 String) String)
(declare-fun alphabet/988383717 (var674) var2653)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun isValidPaddingStartPosition/-688529097 (var2653 Int) Bool)
(declare-const null-var674 var674)
(declare-const null-String String)
(declare-const var1611 var674) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding 
(assert (not (= var1611 null-var674)))
(declare-const var213 String) ; Statement: r3 := @parameter0: java.lang.CharSequence 
(assert (not (= var213 null-String)))
;(assert (var3585_checkNotNull/1446102589 (cast-from-String-to-var1186 var213))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3) 

(declare-const var213!1 String)
(assert true)
(define-const var2316 String (trimTrailingPadding/35071171 var1611 var213!1)) ; Statement: r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: java.lang.CharSequence trimTrailingPadding(java.lang.CharSequence)>(r3) 
(define-const var382 var2653 (alphabet/988383717 var1611)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet alphabet> 
(define-const var989 Int (String_length/-667254855 var2316)) ; Statement: $i0 = interfaceinvoke r4.<java.lang.CharSequence: int length()>() 
(assert true)
(define-const var425 Bool (isValidPaddingStartPosition/-688529097 var382 var989)) ; Statement: $z0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: boolean isValidPaddingStartPosition(int)>($i0) 
 ; Statement: if $z0 != 0 goto i3 = 0 
(assert (not (not (= (ite var425 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3585_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var1186=([java.lang.CharSequence], java.lang.Object), trimTrailingPadding/35071171=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding, java.lang.CharSequence], java.lang.CharSequence), alphabet/988383717=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet), String_length/-667254855=([java.lang.CharSequence], int), isValidPaddingStartPosition/-688529097=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, int], boolean)}
; {var674=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding, var1611=r0, var213=r3, var3585=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1186=java.lang.Object, var2316=r4, var2653=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, var382=$r1, var989=$i0, var425=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding=var674, r0=var1611, r3=var213, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3585, java.lang.Object=var1186, r4=var2316, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet=var2653, $r1=var382, $i0=var989, $z0=var425}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding;	r3 := @parameter0: java.lang.CharSequence;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3);	r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: java.lang.CharSequence trimTrailingPadding(java.lang.CharSequence)>(r3);	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet alphabet>;	$i0 = interfaceinvoke r4.<java.lang.CharSequence: int length()>();	$z0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: boolean isValidPaddingStartPosition(int)>($i0);	if $z0 != 0 goto i3 = 0;	return 0
;block_num 2
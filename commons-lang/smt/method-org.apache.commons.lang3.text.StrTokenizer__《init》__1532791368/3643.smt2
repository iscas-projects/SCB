(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1783 0)
(declare-sort var995 0)
(declare-sort var1265 0)
(declare-sort var1495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1265) void)
(declare-fun cast-from-var1783-to-var1265 (var1783) var1265)
(declare-fun var1495_splitMatcher/-2008615519 () var1495)
(declare-fun delimMatcher/1491220258 (var1783) var1495)
(declare-fun var1495_noneMatcher/-116164409 () var1495)
(declare-fun quoteMatcher/1491220258 (var1783) var1495)
(declare-fun ignoredMatcher/1491220258 (var1783) var1495)
(declare-fun trimmerMatcher/1491220258 (var1783) var1495)
(declare-fun ignoreEmptyTokens/1491220258 (var1783) Bool)
(declare-fun chars/1491220258 (var1783) (Array Int Int))
(declare-const null-var1783 var1783)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2859 var1783) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrTokenizer 
(assert (not (= var2859 null-var1783)))
(declare-const var682 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var682 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1783-to-var1265 var2859))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2859!1 var1783)
(define-const var1376 var1495 var1495_splitMatcher/-2008615519) ; Statement: $r1 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher splitMatcher()>() 
(declare-const var2859!2 var1783)
(assert (not (= var2859!2 null-var1783)))
(assert (= (delimMatcher/1491220258 var2859!2) var1376)) ; Statement: r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher delimMatcher> = $r1 
(define-const var3078 var1495 var1495_noneMatcher/-116164409) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher noneMatcher()>() 
(declare-const var2859!3 var1783)
(assert (not (= var2859!3 null-var1783)))
(assert (= (quoteMatcher/1491220258 var2859!3) var3078)) ; Statement: r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher quoteMatcher> = $r2 
(define-const var1669 var1495 var1495_noneMatcher/-116164409) ; Statement: $r3 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher noneMatcher()>() 
(declare-const var2859!4 var1783)
(assert (not (= var2859!4 null-var1783)))
(assert (= (ignoredMatcher/1491220258 var2859!4) var1669)) ; Statement: r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher ignoredMatcher> = $r3 
(define-const var1300 var1495 var1495_noneMatcher/-116164409) ; Statement: $r4 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher noneMatcher()>() 
(declare-const var2859!5 var1783)
(assert (not (= var2859!5 null-var1783)))
(assert (= (trimmerMatcher/1491220258 var2859!5) var1300)) ; Statement: r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher trimmerMatcher> = $r4 
(declare-const var2859!6 var1783)
(assert (not (= var2859!6 null-var1783)))
(assert (= (ignoreEmptyTokens/1491220258 var2859!6) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.commons.lang3.text.StrTokenizer: boolean ignoreEmptyTokens> = 1 
 ; Statement: if r5 == null goto r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = null 
(assert (= var682 null-String)) ; Cond: r5 == null 
(declare-const var2859!7 var1783)
(assert (not (= var2859!7 null-var1783)))
(assert (= (chars/1491220258 var2859!7) null-__Array__Int__Int__)) ; Statement: r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = null 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1783-to-var1265=([org.apache.commons.lang3.text.StrTokenizer], java.lang.Object), var1495_splitMatcher/-2008615519=([], org.apache.commons.lang3.text.StrMatcher), delimMatcher/1491220258=([org.apache.commons.lang3.text.StrTokenizer], org.apache.commons.lang3.text.StrMatcher), var1495_noneMatcher/-116164409=([], org.apache.commons.lang3.text.StrMatcher), quoteMatcher/1491220258=([org.apache.commons.lang3.text.StrTokenizer], org.apache.commons.lang3.text.StrMatcher), ignoredMatcher/1491220258=([org.apache.commons.lang3.text.StrTokenizer], org.apache.commons.lang3.text.StrMatcher), trimmerMatcher/1491220258=([org.apache.commons.lang3.text.StrTokenizer], org.apache.commons.lang3.text.StrMatcher), ignoreEmptyTokens/1491220258=([org.apache.commons.lang3.text.StrTokenizer], boolean), chars/1491220258=([org.apache.commons.lang3.text.StrTokenizer], char[])}
; {var1783=org.apache.commons.lang3.text.StrTokenizer, var2859=r0, var682=r5, var995=null_type, var1265=java.lang.Object, var1495=org.apache.commons.lang3.text.StrMatcher, var1376=$r1, var3078=$r2, var1669=$r3, var1300=$r4}
; {org.apache.commons.lang3.text.StrTokenizer=var1783, r0=var2859, r5=var682, null_type=var995, java.lang.Object=var1265, org.apache.commons.lang3.text.StrMatcher=var1495, $r1=var1376, $r2=var3078, $r3=var1669, $r4=var1300}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.lang3.text.StrTokenizer;	r5 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher splitMatcher()>();	r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher delimMatcher> = $r1;	$r2 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher noneMatcher()>();	r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher quoteMatcher> = $r2;	$r3 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher noneMatcher()>();	r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher ignoredMatcher> = $r3;	$r4 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher noneMatcher()>();	r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher trimmerMatcher> = $r4;	r0.<org.apache.commons.lang3.text.StrTokenizer: boolean ignoreEmptyTokens> = 1;	if r5 == null goto r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = null;	r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = null;	return
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1618 0)
(declare-sort var3461 0)
(declare-sort var931 0)
(declare-sort var2617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var931) void)
(declare-fun cast-from-var1618-to-var931 (var1618) var931)
(declare-fun var2617_splitMatcher/-2008615519 () var2617)
(declare-fun delimMatcher/1491220258 (var1618) var2617)
(declare-fun var2617_noneMatcher/-116164409 () var2617)
(declare-fun quoteMatcher/1491220258 (var1618) var2617)
(declare-fun ignoredMatcher/1491220258 (var1618) var2617)
(declare-fun trimmerMatcher/1491220258 (var1618) var2617)
(declare-fun ignoreEmptyTokens/1491220258 (var1618) Bool)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun chars/1491220258 (var1618) (Array Int Int))
(declare-const null-var1618 var1618)
(declare-const null-String String)
(declare-const var2556 var1618) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrTokenizer 
(assert (not (= var2556 null-var1618)))
(declare-const var1879 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1879 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1618-to-var931 var2556))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2556!1 var1618)
(define-const var832 var2617 var2617_splitMatcher/-2008615519) ; Statement: $r1 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher splitMatcher()>() 
(declare-const var2556!2 var1618)
(assert (not (= var2556!2 null-var1618)))
(assert (= (delimMatcher/1491220258 var2556!2) var832)) ; Statement: r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher delimMatcher> = $r1 
(define-const var1576 var2617 var2617_noneMatcher/-116164409) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher noneMatcher()>() 
(declare-const var2556!3 var1618)
(assert (not (= var2556!3 null-var1618)))
(assert (= (quoteMatcher/1491220258 var2556!3) var1576)) ; Statement: r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher quoteMatcher> = $r2 
(define-const var1238 var2617 var2617_noneMatcher/-116164409) ; Statement: $r3 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher noneMatcher()>() 
(declare-const var2556!4 var1618)
(assert (not (= var2556!4 null-var1618)))
(assert (= (ignoredMatcher/1491220258 var2556!4) var1238)) ; Statement: r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher ignoredMatcher> = $r3 
(define-const var3053 var2617 var2617_noneMatcher/-116164409) ; Statement: $r4 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher noneMatcher()>() 
(declare-const var2556!5 var1618)
(assert (not (= var2556!5 null-var1618)))
(assert (= (trimmerMatcher/1491220258 var2556!5) var3053)) ; Statement: r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher trimmerMatcher> = $r4 
(declare-const var2556!6 var1618)
(assert (not (= var2556!6 null-var1618)))
(assert (= (ignoreEmptyTokens/1491220258 var2556!6) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.commons.lang3.text.StrTokenizer: boolean ignoreEmptyTokens> = 1 
 ; Statement: if r5 == null goto r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = null 
(assert (not (= var1879 null-String))) ; Negate: Cond: r5 == null  
(assert true)
(define-const var1470 (Array Int Int) (toCharArray/415275702 var1879)) ; Statement: $r6 = virtualinvoke r5.<java.lang.String: char[] toCharArray()>() 
(declare-const var2556!7 var1618)
(assert (not (= var2556!7 null-var1618)))
(assert (= (chars/1491220258 var2556!7) var1470)) ; Statement: r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = $r6 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1618-to-var931=([org.apache.commons.lang3.text.StrTokenizer], java.lang.Object), var2617_splitMatcher/-2008615519=([], org.apache.commons.lang3.text.StrMatcher), delimMatcher/1491220258=([org.apache.commons.lang3.text.StrTokenizer], org.apache.commons.lang3.text.StrMatcher), var2617_noneMatcher/-116164409=([], org.apache.commons.lang3.text.StrMatcher), quoteMatcher/1491220258=([org.apache.commons.lang3.text.StrTokenizer], org.apache.commons.lang3.text.StrMatcher), ignoredMatcher/1491220258=([org.apache.commons.lang3.text.StrTokenizer], org.apache.commons.lang3.text.StrMatcher), trimmerMatcher/1491220258=([org.apache.commons.lang3.text.StrTokenizer], org.apache.commons.lang3.text.StrMatcher), ignoreEmptyTokens/1491220258=([org.apache.commons.lang3.text.StrTokenizer], boolean), toCharArray/415275702=([java.lang.String], char[]), chars/1491220258=([org.apache.commons.lang3.text.StrTokenizer], char[])}
; {var1618=org.apache.commons.lang3.text.StrTokenizer, var2556=r0, var1879=r5, var3461=null_type, var931=java.lang.Object, var2617=org.apache.commons.lang3.text.StrMatcher, var832=$r1, var1576=$r2, var1238=$r3, var3053=$r4, var1470=$r6}
; {org.apache.commons.lang3.text.StrTokenizer=var1618, r0=var2556, r5=var1879, null_type=var3461, java.lang.Object=var931, org.apache.commons.lang3.text.StrMatcher=var2617, $r1=var832, $r2=var1576, $r3=var1238, $r4=var3053, $r6=var1470}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrTokenizer;	r5 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher splitMatcher()>();	r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher delimMatcher> = $r1;	$r2 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher noneMatcher()>();	r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher quoteMatcher> = $r2;	$r3 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher noneMatcher()>();	r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher ignoredMatcher> = $r3;	$r4 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher noneMatcher()>();	r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrMatcher trimmerMatcher> = $r4;	r0.<org.apache.commons.lang3.text.StrTokenizer: boolean ignoreEmptyTokens> = 1;	if r5 == null goto r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = null;	$r6 = virtualinvoke r5.<java.lang.String: char[] toCharArray()>();	r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = $r6;	goto [?= return];	return
;block_num 3
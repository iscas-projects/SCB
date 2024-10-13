(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1359 0)
(declare-sort var437 0)
(declare-sort var1410 0)
(declare-sort var257 0)
(declare-sort var3351 0)
(declare-sort var2602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-fun var1410_reverse/500945852 (String) String)
(declare-fun var1359_push/-2122494828 (var1359 var257) void)
(declare-fun cast-from-String-to-var257 (String) var257)
(declare-fun join/2083217584 (var3351 var2602) String)
(declare-fun cast-from-var1359-to-var2602 (var1359) var2602)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1359_pop/-801615857 (var1359) var257)
(declare-const null-var1359 var1359)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var437 var437)
(declare-const var1410-DIRECT_JOINER var3351)
(declare-const var1609 var1359) ; Statement: r1 := @parameter0: java.util.Deque 
(assert (not (= var1609 null-var1359)))
(declare-const var2597 String) ; Statement: r0 := @parameter1: java.lang.CharSequence 
(assert (not (= var2597 null-String)))
(declare-const var830 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var830 null-Int)))
(declare-const var2427 var437) ; Statement: r2 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder 
(assert (not (= var2427 null-var437)))
(define-const var1208 Int (String_length/-667254855 var2597)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var1137 Int var830) ; Statement: i5 = i1 
(define-const var1906 Int 0) ; Statement: c6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto $r4 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i1, i5) 
(assert (>= var1137 var1208)) ; Cond: i5 >= i0 
(define-const var2613 String (String_subSequence/-1087362312 var2597 var830 var1137)) ; Statement: $r4 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i1, i5) 
(define-const var3679 String (var1410_reverse/500945852 var2613)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.TrieParser: java.lang.CharSequence reverse(java.lang.CharSequence)>($r4) 
;(assert (var1359_push/-2122494828 var1609 (cast-from-String-to-var257 var3679))) ; Statement: interfaceinvoke r1.<java.util.Deque: void push(java.lang.Object)>($r5) 

(declare-const var1609!1 var1359)
(declare-const var3679!1 String)
 ; Statement: if c6 == 33 goto $r6 = <com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.TrieParser: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner DIRECT_JOINER> 
(assert (= var1906 33)) ; Cond: c6 == 33 
(define-const var929 var3351 var1410-DIRECT_JOINER) ; Statement: $r6 = <com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.TrieParser: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner DIRECT_JOINER> 
(assert true)
(define-const var1764 String (join/2083217584 var929 (cast-from-var1359-to-var2602 var1609!1))) ; Statement: $r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.String join(java.lang.Iterable)>(r1) 
(assert true)
(define-const var3662 Int (length/-134980193 var1764)) ; Statement: $i7 = virtualinvoke $r7.<java.lang.String: int length()>() 
 ; Statement: if $i7 <= 0 goto i8 = i5 + 1 
(assert (<= var3662 0)) ; Cond: $i7 <= 0 
(define-const var1618 Int (+ var1137 1)) ; Statement: i8 = i5 + 1 
 ; Statement: if c6 == 63 goto interfaceinvoke r1.<java.util.Deque: java.lang.Object pop()>() 
(assert (= var1906 63)) ; Cond: c6 == 63 
;(assert (var1359_pop/-801615857 var1609!1)) ; Statement: interfaceinvoke r1.<java.util.Deque: java.lang.Object pop()>() 

(declare-const var1609!2 var1359)
(define-const var934 Int (- var1618 var830)) ; Statement: $i9 = i8 - i1 
 ; Statement: return $i9 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence), var1410_reverse/500945852=([java.lang.CharSequence], java.lang.CharSequence), var1359_push/-2122494828=([java.util.Deque, java.lang.Object], void), cast-from-String-to-var257=([java.lang.CharSequence], java.lang.Object), join/2083217584=([com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, java.lang.Iterable], java.lang.String), cast-from-var1359-to-var2602=([java.util.Deque], java.lang.Iterable), length/-134980193=([java.lang.String], int), var1359_pop/-801615857=([java.util.Deque], java.lang.Object)}
; {var1359=java.util.Deque, var1609=r1, var2597=r0, var830=i1, var437=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder, var2427=r2, var1208=i0, var1137=i5, var1906=c6, var2613=$r4, var1410=com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.TrieParser, var3679=$r5, var257=java.lang.Object, var3351=com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, var929=$r6, var2602=java.lang.Iterable, var1764=$r7, var3662=$i7, var1618=i8, var934=$i9}
; {java.util.Deque=var1359, r1=var1609, r0=var2597, i1=var830, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder=var437, r2=var2427, i0=var1208, i5=var1137, c6=var1906, $r4=var2613, com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.TrieParser=var1410, $r5=var3679, java.lang.Object=var257, com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner=var3351, $r6=var929, java.lang.Iterable=var2602, $r7=var1764, $i7=var3662, i8=var1618, $i9=var934}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.util.Deque;	r0 := @parameter1: java.lang.CharSequence;	i1 := @parameter2: int;	r2 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i5 = i1;	c6 = 0;	if i5 >= i0 goto $r4 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i1, i5);	$r4 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i1, i5);	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.TrieParser: java.lang.CharSequence reverse(java.lang.CharSequence)>($r4);	interfaceinvoke r1.<java.util.Deque: void push(java.lang.Object)>($r5);	if c6 == 33 goto $r6 = <com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.TrieParser: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner DIRECT_JOINER>;	$r6 = <com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.TrieParser: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner DIRECT_JOINER>;	$r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.String join(java.lang.Iterable)>(r1);	$i7 = virtualinvoke $r7.<java.lang.String: int length()>();	if $i7 <= 0 goto i8 = i5 + 1;	i8 = i5 + 1;	if c6 == 63 goto interfaceinvoke r1.<java.util.Deque: java.lang.Object pop()>();	interfaceinvoke r1.<java.util.Deque: java.lang.Object pop()>();	$i9 = i8 - i1;	return $i9
;block_num 6
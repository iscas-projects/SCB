(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var27 0)
(declare-sort var2942 0)
(declare-sort var3313 0)
(declare-sort var285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/1442965859 (var2942) String)
(declare-fun cast-from-var27-to-var2942 (var27) var2942)
(declare-fun arr-var3313-init () (Array Int var3313))
(declare-fun var285_notNull/515149844 (var3313 String (Array Int var3313)) var3313)
(declare-fun cast-from-String-to-var3313 (String) var3313)
(declare-fun strToFind/881651207 (var27) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun getValidEndIndex/-1990757182 (var2942) Int)
(declare-fun negative/1442965859 (var2942) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var27 var27)
(declare-const null-Int Int)
(declare-const var2659 var27) ; Statement: r0 := @this: cn.hutool.core.text.finder.StrFinder 
(assert (not (= var2659 null-var27)))
(declare-const var1715 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var1715 null-Int)))
(define-const var928 String (text/1442965859 (cast-from-var27-to-var2942 var2659))) ; Statement: $r2 = r0.<cn.hutool.core.text.finder.StrFinder: java.lang.CharSequence text> 
(define-const var642 (Array Int var3313) arr-var3313-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var285_notNull/515149844 (cast-from-String-to-var3313 var928) "Text to find must be not null!" var642)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>($r2, "Text to find must be not null!", $r1) 

(declare-const var928!1 String)
(declare-const var440 String)
(declare-const var642!1 (Array Int var3313))
(define-const var1551 String (strToFind/881651207 var2659)) ; Statement: $r3 = r0.<cn.hutool.core.text.finder.StrFinder: java.lang.CharSequence strToFind> 
(define-const var2801 Int (String_length/-667254855 var1551)) ; Statement: i0 = interfaceinvoke $r3.<java.lang.CharSequence: int length()>() 
 ; Statement: if i3 >= 0 goto $i2 = virtualinvoke r0.<cn.hutool.core.text.finder.StrFinder: int getValidEndIndex()>() 
(assert (>= var1715 0)) ; Cond: i3 >= 0 
(assert true)
(define-const var2923 Int (getValidEndIndex/-1990757182 (cast-from-var27-to-var2942 var2659))) ; Statement: $i2 = virtualinvoke r0.<cn.hutool.core.text.finder.StrFinder: int getValidEndIndex()>() 
(define-const var2181 Bool (negative/1442965859 (cast-from-var27-to-var2942 var2659))) ; Statement: $z0 = r0.<cn.hutool.core.text.finder.StrFinder: boolean negative> 
 ; Statement: if $z0 == 0 goto $i1 = $i2 - i0 
(assert (= (ite var2181 1 0) 0)) ; Cond: $z0 == 0 
(define-const var410 Int (- var2923 var2801)) ; Statement: $i1 = $i2 - i0 
(define-const var2722 Int (+ var410 1)) ; Statement: i5 = $i1 + 1 
(define-const var2376 Int var1715) ; Statement: i6 = i3 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i5 goto $i10 = (int) -1 
(assert (>= var2376 var2722)) ; Cond: i6 >= i5 
(define-const var750 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {text/1442965859=([cn.hutool.core.text.finder.TextFinder], java.lang.CharSequence), cast-from-var27-to-var2942=([cn.hutool.core.text.finder.StrFinder], cn.hutool.core.text.finder.TextFinder), arr-var3313-init=([], java.lang.Object[]), var285_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var3313=([java.lang.CharSequence], java.lang.Object), strToFind/881651207=([cn.hutool.core.text.finder.StrFinder], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), getValidEndIndex/-1990757182=([cn.hutool.core.text.finder.TextFinder], int), negative/1442965859=([cn.hutool.core.text.finder.TextFinder], boolean), cast-from-Int-to-Int=([int], int)}
; {var27=cn.hutool.core.text.finder.StrFinder, var2659=r0, var1715=i3, var2942=cn.hutool.core.text.finder.TextFinder, var928=$r2, var3313=java.lang.Object, var642=$r1, var285=cn.hutool.core.lang.Assert, var440="Text to find must be not null!", var1551=$r3, var2801=i0, var2923=$i2, var2181=$z0, var410=$i1, var2722=i5, var2376=i6, var750=$i10}
; {cn.hutool.core.text.finder.StrFinder=var27, r0=var2659, i3=var1715, cn.hutool.core.text.finder.TextFinder=var2942, $r2=var928, java.lang.Object=var3313, $r1=var642, cn.hutool.core.lang.Assert=var285, "Text to find must be not null!"=var440, $r3=var1551, i0=var2801, $i2=var2923, $z0=var2181, $i1=var410, i5=var2722, i6=var2376, $i10=var750}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.text.finder.StrFinder;	i3 := @parameter0: int;	$r2 = r0.<cn.hutool.core.text.finder.StrFinder: java.lang.CharSequence text>;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>($r2, "Text to find must be not null!", $r1);	$r3 = r0.<cn.hutool.core.text.finder.StrFinder: java.lang.CharSequence strToFind>;	i0 = interfaceinvoke $r3.<java.lang.CharSequence: int length()>();	if i3 >= 0 goto $i2 = virtualinvoke r0.<cn.hutool.core.text.finder.StrFinder: int getValidEndIndex()>();	$i2 = virtualinvoke r0.<cn.hutool.core.text.finder.StrFinder: int getValidEndIndex()>();	$z0 = r0.<cn.hutool.core.text.finder.StrFinder: boolean negative>;	if $z0 == 0 goto $i1 = $i2 - i0;	$i1 = $i2 - i0;	i5 = $i1 + 1;	i6 = i3;	if i6 >= i5 goto $i10 = (int) -1;	$i10 = (int) -1;	return $i10
;block_num 5
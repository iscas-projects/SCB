(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var194 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var194_isPrint/-782079476 (Int) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun appendCodePoint/-693552229 (String Int) String)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var434 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var434 null-String)))
(declare-const var3647 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3647 null-Int)))
(define-const var2546 Bool (var194_isPrint/-782079476 var3647)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.Unicode: boolean isPrint(int)>(i0) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var2546 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3757 String "\u005c.+*?()|[]{}^$") ; Statement: $r4 = "\\.+*?()|[]{}^$" 
(define-const var1901 Int (cast-from-Int-to-Int var3647)) ; Statement: $c2 = (char) i0 
(define-const var1539 Int (cast-from-Int-to-Int var1901)) ; Statement: $i4 = (int) $c2 
(assert true)
(define-const var1699 Int (indexOf/-1037706067 var3757 var1539)) ; Statement: $i3 = virtualinvoke $r4.<java.lang.String: int indexOf(int)>($i4) 
 ; Statement: if $i3 < 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>(i0) 
(assert (< var1699 0)) ; Cond: $i3 < 0 
(assert true)
;(assert (appendCodePoint/-693552229 var434 var3647)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>(i0) 

(declare-const var434!1 String)
(declare-const var3647!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var194_isPrint/-782079476=([int], boolean), cast-from-Int-to-Int=([int], char), indexOf/-1037706067=([java.lang.String, int], int), appendCodePoint/-693552229=([java.lang.StringBuilder, int], java.lang.StringBuilder)}
; {var434=r0, var3647=i0, var194=com.google.javascript.jscomp.jarjar.com.google.re2j.Unicode, var2546=$z0, var3757=$r4, var1901=$c2, var1539=$i4, var1699=$i3}
; {r0=var434, i0=var3647, com.google.javascript.jscomp.jarjar.com.google.re2j.Unicode=var194, $z0=var2546, $r4=var3757, $c2=var1901, $i4=var1539, $i3=var1699}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.Unicode: boolean isPrint(int)>(i0);	if $z0 == 0 goto (branch);	$r4 = "\\.+*?()|[]{}^$";	$c2 = (char) i0;	$i4 = (int) $c2;	$i3 = virtualinvoke $r4.<java.lang.String: int indexOf(int)>($i4);	if $i3 < 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>(i0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>(i0);	return
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2536 0)
(declare-sort var1906 0)
(declare-sort var336 0)
(declare-sort var2218 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2536_checkNotNull/1446102589 (var1906) var1906)
(declare-fun cast-from-String-to-var1906 (String) var1906)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var336_min/-1112089438 (Int Int) Int)
(declare-fun var2218_validSurrogatePairAt/-184049897 (String Int) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var3787 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3787 null-String)))
(declare-const var2014 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var2014 null-String)))
;(assert (var2536_checkNotNull/1446102589 (cast-from-String-to-var1906 var3787))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3787!1 String)
;(assert (var2536_checkNotNull/1446102589 (cast-from-String-to-var1906 var2014))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 

(declare-const var2014!1 String)
(define-const var611 Int (String_length/-667254855 var3787!1)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var475 Int (String_length/-667254855 var2014!1)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var1597 Int (var336_min/-1112089438 var611 var475)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(define-const var2769 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
 ; Statement: if i17 >= i2 goto $i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (>= var2769 var1597)) ; Cond: i17 >= i2 
(define-const var3503 Int (String_length/-667254855 var3787!1)) ; Statement: $i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var3849 Int (- var3503 var2769)) ; Statement: $i4 = $i3 - i17 
(define-const var2996 Int (- var3849 1)) ; Statement: $i5 = $i4 - 1 
(define-const var1769 Bool (var2218_validSurrogatePairAt/-184049897 var3787!1 var2996)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean validSurrogatePairAt(java.lang.CharSequence,int)>(r0, $i5) 
 ; Statement: if $z0 != 0 goto $i24 = (int) -1 
(assert (not (= (ite var1769 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1802 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i24 = (int) -1 
(define-const var2769!1 Int (+ var2769 var1802)) ; Statement: i17 = i17 + $i24 
(assert true) ; Non Conditional
(define-const var1492 Int (String_length/-667254855 var3787!1)) ; Statement: $i18 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var828 Int (- var1492 var2769!1)) ; Statement: $i19 = $i18 - i17 
(define-const var1776 Int (String_length/-667254855 var3787!1)) ; Statement: $i20 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var3760 String (String_subSequence/-1087362312 var3787!1 var828 var1776)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>($i19, $i20) 
(define-const var1954 String (String_toString/-1426662429 var3760)) ; Statement: $r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2536_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var1906=([java.lang.CharSequence], java.lang.Object), String_length/-667254855=([java.lang.CharSequence], int), var336_min/-1112089438=([int, int], int), var2218_validSurrogatePairAt/-184049897=([java.lang.CharSequence, int], boolean), cast-from-Int-to-Int=([int], int), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var3787=r0, var2014=r1, var2536=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1906=java.lang.Object, var611=$i1, var475=$i0, var336=java.lang.Math, var1597=i2, var2769=i17, var3503=$i3, var3849=$i4, var2996=$i5, var2218=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var1769=$z0, var1802=$i24, var1492=$i18, var828=$i19, var1776=$i20, var3760=$r2, var1954=$r3}
; {r0=var3787, r1=var2014, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2536, java.lang.Object=var1906, $i1=var611, $i0=var475, java.lang.Math=var336, i2=var1597, i17=var2769, $i3=var3503, $i4=var3849, $i5=var2996, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var2218, $z0=var1769, $i24=var1802, $i18=var1492, $i19=var828, $i20=var1776, $r2=var3760, $r3=var1954}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>;	<java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 5,"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 1,"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	i17 = 0;	if i17 >= i2 goto $i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i4 = $i3 - i17;	$i5 = $i4 - 1;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean validSurrogatePairAt(java.lang.CharSequence,int)>(r0, $i5);	if $z0 != 0 goto $i24 = (int) -1;	$i24 = (int) -1;	i17 = i17 + $i24;	$i18 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i19 = $i18 - i17;	$i20 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>($i19, $i20);	$r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>();	return $r3
;block_num 5
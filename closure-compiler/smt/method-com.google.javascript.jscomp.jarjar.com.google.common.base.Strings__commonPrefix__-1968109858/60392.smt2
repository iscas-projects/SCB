(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1408 0)
(declare-sort var2299 0)
(declare-sort var3943 0)
(declare-sort var58 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1408_checkNotNull/1446102589 (var2299) var2299)
(declare-fun cast-from-String-to-var2299 (String) var2299)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3943_min/-1112089438 (Int Int) Int)
(declare-fun var58_validSurrogatePairAt/-184049897 (String Int) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var3859 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3859 null-String)))
(declare-const var15 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var15 null-String)))
;(assert (var1408_checkNotNull/1446102589 (cast-from-String-to-var2299 var3859))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3859!1 String)
;(assert (var1408_checkNotNull/1446102589 (cast-from-String-to-var2299 var15))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 

(declare-const var15!1 String)
(define-const var2574 Int (String_length/-667254855 var3859!1)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var3624 Int (String_length/-667254855 var15!1)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var2780 Int (var3943_min/-1112089438 var2574 var3624)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(define-const var3601 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i2 goto $i3 = i7 - 1 
(assert (>= var3601 var2780)) ; Cond: i7 >= i2 
(define-const var2172 Int (- var3601 1)) ; Statement: $i3 = i7 - 1 
(define-const var923 Bool (var58_validSurrogatePairAt/-184049897 var3859!1 var2172)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean validSurrogatePairAt(java.lang.CharSequence,int)>(r0, $i3) 
 ; Statement: if $z0 != 0 goto $i11 = (int) -1 
(assert (not (= (ite var923 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1734 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
(define-const var3601!1 Int (+ var3601 var1734)) ; Statement: i7 = i7 + $i11 
(assert true) ; Non Conditional
(define-const var1883 String (String_subSequence/-1087362312 var3859!1 0 var3601!1)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(0, i7) 
(define-const var3570 String (String_toString/-1426662429 var1883)) ; Statement: $r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1408_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var2299=([java.lang.CharSequence], java.lang.Object), String_length/-667254855=([java.lang.CharSequence], int), var3943_min/-1112089438=([int, int], int), var58_validSurrogatePairAt/-184049897=([java.lang.CharSequence, int], boolean), cast-from-Int-to-Int=([int], int), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var3859=r0, var15=r1, var1408=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2299=java.lang.Object, var2574=$i1, var3624=$i0, var3943=java.lang.Math, var2780=i2, var3601=i7, var2172=$i3, var58=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var923=$z0, var1734=$i11, var1883=$r2, var3570=$r3}
; {r0=var3859, r1=var15, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1408, java.lang.Object=var2299, $i1=var2574, $i0=var3624, java.lang.Math=var3943, i2=var2780, i7=var3601, $i3=var2172, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var58, $z0=var923, $i11=var1734, $r2=var1883, $r3=var3570}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>;	<java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 2,"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 1,"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	i7 = 0;	if i7 >= i2 goto $i3 = i7 - 1;	$i3 = i7 - 1;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean validSurrogatePairAt(java.lang.CharSequence,int)>(r0, $i3);	if $z0 != 0 goto $i11 = (int) -1;	$i11 = (int) -1;	i7 = i7 + $i11;	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(0, i7);	$r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>();	return $r3
;block_num 5
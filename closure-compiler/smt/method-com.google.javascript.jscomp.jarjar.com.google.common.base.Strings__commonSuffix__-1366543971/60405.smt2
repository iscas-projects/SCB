(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1514 0)
(declare-sort var3052 0)
(declare-sort var3608 0)
(declare-sort var1572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1514_checkNotNull/1446102589 (var3052) var3052)
(declare-fun cast-from-String-to-var3052 (String) var3052)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3608_min/-1112089438 (Int Int) Int)
(declare-fun var1572_validSurrogatePairAt/-184049897 (String Int) Bool)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var3868 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3868 null-String)))
(declare-const var3761 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var3761 null-String)))
;(assert (var1514_checkNotNull/1446102589 (cast-from-String-to-var3052 var3868))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3868!1 String)
;(assert (var1514_checkNotNull/1446102589 (cast-from-String-to-var3052 var3761))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 

(declare-const var3761!1 String)
(define-const var291 Int (String_length/-667254855 var3868!1)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var3556 Int (String_length/-667254855 var3761!1)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var885 Int (var3608_min/-1112089438 var291 var3556)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(define-const var1926 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
 ; Statement: if i17 >= i2 goto $i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (>= var1926 var885)) ; Cond: i17 >= i2 
(define-const var2687 Int (String_length/-667254855 var3868!1)) ; Statement: $i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2593 Int (- var2687 var1926)) ; Statement: $i4 = $i3 - i17 
(define-const var3591 Int (- var2593 1)) ; Statement: $i5 = $i4 - 1 
(define-const var3440 Bool (var1572_validSurrogatePairAt/-184049897 var3868!1 var3591)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean validSurrogatePairAt(java.lang.CharSequence,int)>(r0, $i5) 
 ; Statement: if $z0 != 0 goto $i24 = (int) -1 
(assert (not (not (= (ite var3440 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2903 Int (String_length/-667254855 var3761!1)) ; Statement: $i6 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var2508 Int (- var2903 var1926)) ; Statement: $i7 = $i6 - i17 
(define-const var1535 Int (- var2508 1)) ; Statement: $i8 = $i7 - 1 
(define-const var1771 Bool (var1572_validSurrogatePairAt/-184049897 var3761!1 var1535)) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean validSurrogatePairAt(java.lang.CharSequence,int)>(r1, $i8) 
 ; Statement: if $z1 == 0 goto $i18 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (= (ite var1771 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2522 Int (String_length/-667254855 var3868!1)) ; Statement: $i18 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var3113 Int (- var2522 var1926)) ; Statement: $i19 = $i18 - i17 
(define-const var411 Int (String_length/-667254855 var3868!1)) ; Statement: $i20 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var377 String (String_subSequence/-1087362312 var3868!1 var3113 var411)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>($i19, $i20) 
(define-const var753 String (String_toString/-1426662429 var377)) ; Statement: $r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1514_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var3052=([java.lang.CharSequence], java.lang.Object), String_length/-667254855=([java.lang.CharSequence], int), var3608_min/-1112089438=([int, int], int), var1572_validSurrogatePairAt/-184049897=([java.lang.CharSequence, int], boolean), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var3868=r0, var3761=r1, var1514=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3052=java.lang.Object, var291=$i1, var3556=$i0, var3608=java.lang.Math, var885=i2, var1926=i17, var2687=$i3, var2593=$i4, var3591=$i5, var1572=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var3440=$z0, var2903=$i6, var2508=$i7, var1535=$i8, var1771=$z1, var2522=$i18, var3113=$i19, var411=$i20, var377=$r2, var753=$r3}
; {r0=var3868, r1=var3761, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1514, java.lang.Object=var3052, $i1=var291, $i0=var3556, java.lang.Math=var3608, i2=var885, i17=var1926, $i3=var2687, $i4=var2593, $i5=var3591, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var1572, $z0=var3440, $i6=var2903, $i7=var2508, $i8=var1535, $z1=var1771, $i18=var2522, $i19=var3113, $i20=var411, $r2=var377, $r3=var753}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>;	<java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 6,"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 1,"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	i17 = 0;	if i17 >= i2 goto $i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i4 = $i3 - i17;	$i5 = $i4 - 1;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean validSurrogatePairAt(java.lang.CharSequence,int)>(r0, $i5);	if $z0 != 0 goto $i24 = (int) -1;	$i6 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i7 = $i6 - i17;	$i8 = $i7 - 1;	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean validSurrogatePairAt(java.lang.CharSequence,int)>(r1, $i8);	if $z1 == 0 goto $i18 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i18 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i19 = $i18 - i17;	$i20 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>($i19, $i20);	$r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>();	return $r3
;block_num 5
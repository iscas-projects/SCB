(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3911 0)
(declare-sort var3240 0)
(declare-sort var1044 0)
(declare-sort var2600 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3911_checkNotNull/1446102589 (var3240) var3240)
(declare-fun cast-from-String-to-var3240 (String) var3240)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var1044_min/-1112089438 (Int Int) Int)
(declare-fun var2600_validSurrogatePairAt/-184049897 (String Int) Bool)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var3802 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3802 null-String)))
(declare-const var2123 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var2123 null-String)))
;(assert (var3911_checkNotNull/1446102589 (cast-from-String-to-var3240 var3802))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3802!1 String)
;(assert (var3911_checkNotNull/1446102589 (cast-from-String-to-var3240 var2123))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 

(declare-const var2123!1 String)
(define-const var2918 Int (String_length/-667254855 var3802!1)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2561 Int (String_length/-667254855 var2123!1)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var3914 Int (var1044_min/-1112089438 var2918 var2561)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(define-const var3844 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i2 goto $i3 = i7 - 1 
(assert (>= var3844 var3914)) ; Cond: i7 >= i2 
(define-const var3292 Int (- var3844 1)) ; Statement: $i3 = i7 - 1 
(define-const var3547 Bool (var2600_validSurrogatePairAt/-184049897 var3802!1 var3292)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean validSurrogatePairAt(java.lang.CharSequence,int)>(r0, $i3) 
 ; Statement: if $z0 != 0 goto $i11 = (int) -1 
(assert (not (not (= (ite var3547 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3882 Int (- var3844 1)) ; Statement: $i4 = i7 - 1 
(define-const var3581 Bool (var2600_validSurrogatePairAt/-184049897 var2123!1 var3882)) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean validSurrogatePairAt(java.lang.CharSequence,int)>(r1, $i4) 
 ; Statement: if $z1 == 0 goto $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(0, i7) 
(assert (= (ite var3581 1 0) 0)) ; Cond: $z1 == 0 
(define-const var824 String (String_subSequence/-1087362312 var3802!1 0 var3844)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(0, i7) 
(define-const var3775 String (String_toString/-1426662429 var824)) ; Statement: $r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3911_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var3240=([java.lang.CharSequence], java.lang.Object), String_length/-667254855=([java.lang.CharSequence], int), var1044_min/-1112089438=([int, int], int), var2600_validSurrogatePairAt/-184049897=([java.lang.CharSequence, int], boolean), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var3802=r0, var2123=r1, var3911=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3240=java.lang.Object, var2918=$i1, var2561=$i0, var1044=java.lang.Math, var3914=i2, var3844=i7, var3292=$i3, var2600=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var3547=$z0, var3882=$i4, var3581=$z1, var824=$r2, var3775=$r3}
; {r0=var3802, r1=var2123, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3911, java.lang.Object=var3240, $i1=var2918, $i0=var2561, java.lang.Math=var1044, i2=var3914, i7=var3844, $i3=var3292, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var2600, $z0=var3547, $i4=var3882, $z1=var3581, $r2=var824, $r3=var3775}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>;	<java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 2,"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 1,"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	i7 = 0;	if i7 >= i2 goto $i3 = i7 - 1;	$i3 = i7 - 1;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean validSurrogatePairAt(java.lang.CharSequence,int)>(r0, $i3);	if $z0 != 0 goto $i11 = (int) -1;	$i4 = i7 - 1;	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean validSurrogatePairAt(java.lang.CharSequence,int)>(r1, $i4);	if $z1 == 0 goto $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(0, i7);	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(0, i7);	$r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>();	return $r3
;block_num 5
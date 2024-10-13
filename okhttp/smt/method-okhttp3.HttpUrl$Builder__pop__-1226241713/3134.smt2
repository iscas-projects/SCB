(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3379 0)
(declare-sort var577 0)
(declare-sort var3281 0)
(declare-sort var2606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun encodedPathSegments/627676127 (var3379) var577)
(declare-fun var577_size/-959786421 (var577) Int)
(declare-fun var577_remove/1853576941 (var577 Int) var3281)
(declare-fun cast-from-var3281-to-String (var3281) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun cast-from-var577-to-var2606 (var577) var2606)
(declare-fun var2606_isEmpty/-1652560782 (var2606) Bool)
(declare-fun var577_add/328494887 (var577 var3281) Bool)
(declare-fun cast-from-String-to-var3281 (String) var3281)
(declare-const null-var3379 var3379)
(declare-const var1626 var3379) ; Statement: r0 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1626 null-var3379)))
(define-const var3208 var577 (encodedPathSegments/627676127 var1626)) ; Statement: $r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var617 var577 (encodedPathSegments/627676127 var1626)) ; Statement: $r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3133 Int (var577_size/-959786421 var617)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var3831 Int (- var3133 1)) ; Statement: $i1 = $i0 - 1 
(define-const var1409 var3281 (var577_remove/1853576941 var3208 var3831)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1) 
(define-const var1316 String (cast-from-var3281-to-String var1409)) ; Statement: r4 = (java.lang.String) $r3 
(define-const var3975 String (cast-from-String-to-String var1316)) ; Statement: $r5 = (java.lang.CharSequence) r4 
(define-const var523 Int (String_length/-667254855 var3975)) ; Statement: $i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i2 != 0 goto $z1 = 0 
(assert (not (= var523 0))) ; Cond: $i2 != 0 
(define-const var57 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var57 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3074 var577 (encodedPathSegments/627676127 var1626)) ; Statement: $r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2287 var2606 (cast-from-var577-to-var2606 var3074)) ; Statement: $r8 = (java.util.Collection) $r7 
(define-const var2143 Bool (var2606_isEmpty/-1652560782 var2287)) ; Statement: $z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var2143 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1414 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var1414 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1340 var577 (encodedPathSegments/627676127 var1626)) ; Statement: $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var577_add/328494887 var1340 (cast-from-String-to-var3281 ""))) ; Statement: interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>("") 

(declare-const var1340!1 var577)
(declare-const var2917 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var577_size/-959786421=([java.util.List], int), var577_remove/1853576941=([java.util.List, int], java.lang.Object), cast-from-var3281-to-String=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), cast-from-var577-to-var2606=([java.util.List], java.util.Collection), var2606_isEmpty/-1652560782=([java.util.Collection], boolean), var577_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3281=([java.lang.String], java.lang.Object)}
; {var3379=okhttp3.HttpUrl$Builder, var1626=r0, var577=java.util.List, var3208=$r2, var617=$r1, var3133=$i0, var3831=$i1, var3281=java.lang.Object, var1409=$r3, var1316=r4, var3975=$r5, var523=$i2, var57=$z1, var3074=$r7, var2606=java.util.Collection, var2287=$r8, var2143=$z0, var1414=$z2, var1340=$r6, var2917=""}
; {okhttp3.HttpUrl$Builder=var3379, r0=var1626, java.util.List=var577, $r2=var3208, $r1=var617, $i0=var3133, $i1=var3831, java.lang.Object=var3281, $r3=var1409, r4=var1316, $r5=var3975, $i2=var523, $z1=var57, $r7=var3074, java.util.Collection=var2606, $r8=var2287, $z0=var2143, $z2=var1414, $r6=var1340, ""=var2917}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl$Builder;	$r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1);	r4 = (java.lang.String) $r3;	$r5 = (java.lang.CharSequence) r4;	$i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>();	if $i2 != 0 goto $z1 = 0;	$z1 = 0;	if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r8 = (java.util.Collection) $r7;	$z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>("");	return
;block_num 8
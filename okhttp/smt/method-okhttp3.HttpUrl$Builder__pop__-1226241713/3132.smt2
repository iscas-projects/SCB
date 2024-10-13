(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1148 0)
(declare-sort var805 0)
(declare-sort var1393 0)
(declare-sort var3412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun encodedPathSegments/627676127 (var1148) var805)
(declare-fun var805_size/-959786421 (var805) Int)
(declare-fun var805_remove/1853576941 (var805 Int) var1393)
(declare-fun cast-from-var1393-to-String (var1393) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun cast-from-var805-to-var3412 (var805) var3412)
(declare-fun var3412_isEmpty/-1652560782 (var3412) Bool)
(declare-fun var805_add/328494887 (var805 var1393) Bool)
(declare-fun cast-from-String-to-var1393 (String) var1393)
(declare-const null-var1148 var1148)
(declare-const var2096 var1148) ; Statement: r0 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2096 null-var1148)))
(define-const var3016 var805 (encodedPathSegments/627676127 var2096)) ; Statement: $r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3059 var805 (encodedPathSegments/627676127 var2096)) ; Statement: $r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var528 Int (var805_size/-959786421 var3059)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var3574 Int (- var528 1)) ; Statement: $i1 = $i0 - 1 
(define-const var328 var1393 (var805_remove/1853576941 var3016 var3574)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1) 
(define-const var2147 String (cast-from-var1393-to-String var328)) ; Statement: r4 = (java.lang.String) $r3 
(define-const var1669 String (cast-from-String-to-String var2147)) ; Statement: $r5 = (java.lang.CharSequence) r4 
(define-const var356 Int (String_length/-667254855 var1669)) ; Statement: $i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i2 != 0 goto $z1 = 0 
(assert (not (= var356 0))) ; Cond: $i2 != 0 
(define-const var3379 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var3379 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2395 var805 (encodedPathSegments/627676127 var2096)) ; Statement: $r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var1399 var3412 (cast-from-var805-to-var3412 var2395)) ; Statement: $r8 = (java.util.Collection) $r7 
(define-const var1612 Bool (var3412_isEmpty/-1652560782 var1399)) ; Statement: $z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var1612 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var927 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var927 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1408 var805 (encodedPathSegments/627676127 var2096)) ; Statement: $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var805_add/328494887 var1408 (cast-from-String-to-var1393 ""))) ; Statement: interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>("") 

(declare-const var1408!1 var805)
(declare-const var3838 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var805_size/-959786421=([java.util.List], int), var805_remove/1853576941=([java.util.List, int], java.lang.Object), cast-from-var1393-to-String=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), cast-from-var805-to-var3412=([java.util.List], java.util.Collection), var3412_isEmpty/-1652560782=([java.util.Collection], boolean), var805_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1393=([java.lang.String], java.lang.Object)}
; {var1148=okhttp3.HttpUrl$Builder, var2096=r0, var805=java.util.List, var3016=$r2, var3059=$r1, var528=$i0, var3574=$i1, var1393=java.lang.Object, var328=$r3, var2147=r4, var1669=$r5, var356=$i2, var3379=$z1, var2395=$r7, var3412=java.util.Collection, var1399=$r8, var1612=$z0, var927=$z2, var1408=$r6, var3838=""}
; {okhttp3.HttpUrl$Builder=var1148, r0=var2096, java.util.List=var805, $r2=var3016, $r1=var3059, $i0=var528, $i1=var3574, java.lang.Object=var1393, $r3=var328, r4=var2147, $r5=var1669, $i2=var356, $z1=var3379, $r7=var2395, java.util.Collection=var3412, $r8=var1399, $z0=var1612, $z2=var927, $r6=var1408, ""=var3838}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl$Builder;	$r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1);	r4 = (java.lang.String) $r3;	$r5 = (java.lang.CharSequence) r4;	$i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>();	if $i2 != 0 goto $z1 = 0;	$z1 = 0;	if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r8 = (java.util.Collection) $r7;	$z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= (branch)];	if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>("");	return
;block_num 8
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1832 0)
(declare-sort var3343 0)
(declare-sort var454 0)
(declare-sort var3229 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun encodedPathSegments/627676127 (var1832) var3343)
(declare-fun var3343_size/-959786421 (var3343) Int)
(declare-fun var3343_remove/1853576941 (var3343 Int) var454)
(declare-fun cast-from-var454-to-String (var454) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun cast-from-var3343-to-var3229 (var3343) var3229)
(declare-fun var3229_isEmpty/-1652560782 (var3229) Bool)
(declare-fun var3343_add/328494887 (var3343 var454) Bool)
(declare-fun cast-from-String-to-var454 (String) var454)
(declare-const null-var1832 var1832)
(declare-const var1352 var1832) ; Statement: r0 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1352 null-var1832)))
(define-const var3506 var3343 (encodedPathSegments/627676127 var1352)) ; Statement: $r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var202 var3343 (encodedPathSegments/627676127 var1352)) ; Statement: $r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3513 Int (var3343_size/-959786421 var202)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var513 Int (- var3513 1)) ; Statement: $i1 = $i0 - 1 
(define-const var2509 var454 (var3343_remove/1853576941 var3506 var513)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1) 
(define-const var931 String (cast-from-var454-to-String var2509)) ; Statement: r4 = (java.lang.String) $r3 
(define-const var3051 String (cast-from-String-to-String var931)) ; Statement: $r5 = (java.lang.CharSequence) r4 
(define-const var305 Int (String_length/-667254855 var3051)) ; Statement: $i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i2 != 0 goto $z1 = 0 
(assert (not (not (= var305 0)))) ; Negate: Cond: $i2 != 0  
(define-const var257 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var257 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3225 var3343 (encodedPathSegments/627676127 var1352)) ; Statement: $r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var139 var3229 (cast-from-var3343-to-var3229 var3225)) ; Statement: $r8 = (java.util.Collection) $r7 
(define-const var628 Bool (var3229_isEmpty/-1652560782 var139)) ; Statement: $z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var628 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2273 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var2273 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1064 var3343 (encodedPathSegments/627676127 var1352)) ; Statement: $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var3343_add/328494887 var1064 (cast-from-String-to-var454 ""))) ; Statement: interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>("") 

(declare-const var1064!1 var3343)
(declare-const var1736 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var3343_size/-959786421=([java.util.List], int), var3343_remove/1853576941=([java.util.List, int], java.lang.Object), cast-from-var454-to-String=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), cast-from-var3343-to-var3229=([java.util.List], java.util.Collection), var3229_isEmpty/-1652560782=([java.util.Collection], boolean), var3343_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var454=([java.lang.String], java.lang.Object)}
; {var1832=okhttp3.HttpUrl$Builder, var1352=r0, var3343=java.util.List, var3506=$r2, var202=$r1, var3513=$i0, var513=$i1, var454=java.lang.Object, var2509=$r3, var931=r4, var3051=$r5, var305=$i2, var257=$z1, var3225=$r7, var3229=java.util.Collection, var139=$r8, var628=$z0, var2273=$z2, var1064=$r6, var1736=""}
; {okhttp3.HttpUrl$Builder=var1832, r0=var1352, java.util.List=var3343, $r2=var3506, $r1=var202, $i0=var3513, $i1=var513, java.lang.Object=var454, $r3=var2509, r4=var931, $r5=var3051, $i2=var305, $z1=var257, $r7=var3225, java.util.Collection=var3229, $r8=var139, $z0=var628, $z2=var2273, $r6=var1064, ""=var1736}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl$Builder;	$r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1);	r4 = (java.lang.String) $r3;	$r5 = (java.lang.CharSequence) r4;	$i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>();	if $i2 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= (branch)];	if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r8 = (java.util.Collection) $r7;	$z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>("");	return
;block_num 8
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2339 0)
(declare-sort var3573 0)
(declare-sort var3080 0)
(declare-sort var3002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun encodedPathSegments/627676127 (var2339) var3573)
(declare-fun var3573_size/-959786421 (var3573) Int)
(declare-fun var3573_remove/1853576941 (var3573 Int) var3080)
(declare-fun cast-from-var3080-to-String (var3080) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun cast-from-var3573-to-var3002 (var3573) var3002)
(declare-fun var3002_isEmpty/-1652560782 (var3002) Bool)
(declare-fun var3573_add/328494887 (var3573 var3080) Bool)
(declare-fun cast-from-String-to-var3080 (String) var3080)
(declare-const null-var2339 var2339)
(declare-const var1173 var2339) ; Statement: r0 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1173 null-var2339)))
(define-const var8 var3573 (encodedPathSegments/627676127 var1173)) ; Statement: $r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3551 var3573 (encodedPathSegments/627676127 var1173)) ; Statement: $r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var405 Int (var3573_size/-959786421 var3551)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var2776 Int (- var405 1)) ; Statement: $i1 = $i0 - 1 
(define-const var2571 var3080 (var3573_remove/1853576941 var8 var2776)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1) 
(define-const var1497 String (cast-from-var3080-to-String var2571)) ; Statement: r4 = (java.lang.String) $r3 
(define-const var3001 String (cast-from-String-to-String var1497)) ; Statement: $r5 = (java.lang.CharSequence) r4 
(define-const var3382 Int (String_length/-667254855 var3001)) ; Statement: $i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i2 != 0 goto $z1 = 0 
(assert (not (not (= var3382 0)))) ; Negate: Cond: $i2 != 0  
(define-const var3428 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var3428 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var369 var3573 (encodedPathSegments/627676127 var1173)) ; Statement: $r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3217 var3002 (cast-from-var3573-to-var3002 var369)) ; Statement: $r8 = (java.util.Collection) $r7 
(define-const var1684 Bool (var3002_isEmpty/-1652560782 var3217)) ; Statement: $z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var1684 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var349 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var349 1 0) 0)) ; Cond: $z2 == 0 
(define-const var695 var3573 (encodedPathSegments/627676127 var1173)) ; Statement: $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var3573_add/328494887 var695 (cast-from-String-to-var3080 ""))) ; Statement: interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>("") 

(declare-const var695!1 var3573)
(declare-const var1510 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var3573_size/-959786421=([java.util.List], int), var3573_remove/1853576941=([java.util.List, int], java.lang.Object), cast-from-var3080-to-String=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), cast-from-var3573-to-var3002=([java.util.List], java.util.Collection), var3002_isEmpty/-1652560782=([java.util.Collection], boolean), var3573_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3080=([java.lang.String], java.lang.Object)}
; {var2339=okhttp3.HttpUrl$Builder, var1173=r0, var3573=java.util.List, var8=$r2, var3551=$r1, var405=$i0, var2776=$i1, var3080=java.lang.Object, var2571=$r3, var1497=r4, var3001=$r5, var3382=$i2, var3428=$z1, var369=$r7, var3002=java.util.Collection, var3217=$r8, var1684=$z0, var349=$z2, var695=$r6, var1510=""}
; {okhttp3.HttpUrl$Builder=var2339, r0=var1173, java.util.List=var3573, $r2=var8, $r1=var3551, $i0=var405, $i1=var2776, java.lang.Object=var3080, $r3=var2571, r4=var1497, $r5=var3001, $i2=var3382, $z1=var3428, $r7=var369, java.util.Collection=var3002, $r8=var3217, $z0=var1684, $z2=var349, $r6=var695, ""=var1510}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl$Builder;	$r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1);	r4 = (java.lang.String) $r3;	$r5 = (java.lang.CharSequence) r4;	$i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>();	if $i2 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= (branch)];	if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r8 = (java.util.Collection) $r7;	$z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= (branch)];	if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>("");	return
;block_num 8
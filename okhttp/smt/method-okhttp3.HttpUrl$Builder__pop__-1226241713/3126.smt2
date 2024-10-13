(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var792 0)
(declare-sort var492 0)
(declare-sort var3584 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun encodedPathSegments/627676127 (var792) var492)
(declare-fun var492_size/-959786421 (var492) Int)
(declare-fun var492_remove/1853576941 (var492 Int) var3584)
(declare-fun cast-from-var3584-to-String (var3584) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var492_add/328494887 (var492 var3584) Bool)
(declare-fun cast-from-String-to-var3584 (String) var3584)
(declare-const null-var792 var792)
(declare-const var2090 var792) ; Statement: r0 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2090 null-var792)))
(define-const var3002 var492 (encodedPathSegments/627676127 var2090)) ; Statement: $r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var1997 var492 (encodedPathSegments/627676127 var2090)) ; Statement: $r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2079 Int (var492_size/-959786421 var1997)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var3110 Int (- var2079 1)) ; Statement: $i1 = $i0 - 1 
(define-const var3402 var3584 (var492_remove/1853576941 var3002 var3110)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1) 
(define-const var515 String (cast-from-var3584-to-String var3402)) ; Statement: r4 = (java.lang.String) $r3 
(define-const var1444 String (cast-from-String-to-String var515)) ; Statement: $r5 = (java.lang.CharSequence) r4 
(define-const var856 Int (String_length/-667254855 var1444)) ; Statement: $i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i2 != 0 goto $z1 = 0 
(assert (not (= var856 0))) ; Cond: $i2 != 0 
(define-const var1877 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var1877 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1889 var492 (encodedPathSegments/627676127 var2090)) ; Statement: $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var492_add/328494887 var1889 (cast-from-String-to-var3584 ""))) ; Statement: interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>("") 

(declare-const var1889!1 var492)
(declare-const var2642 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var492_size/-959786421=([java.util.List], int), var492_remove/1853576941=([java.util.List, int], java.lang.Object), cast-from-var3584-to-String=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var492_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3584=([java.lang.String], java.lang.Object)}
; {var792=okhttp3.HttpUrl$Builder, var2090=r0, var492=java.util.List, var3002=$r2, var1997=$r1, var2079=$i0, var3110=$i1, var3584=java.lang.Object, var3402=$r3, var515=r4, var1444=$r5, var856=$i2, var1877=$z1, var1889=$r6, var2642=""}
; {okhttp3.HttpUrl$Builder=var792, r0=var2090, java.util.List=var492, $r2=var3002, $r1=var1997, $i0=var2079, $i1=var3110, java.lang.Object=var3584, $r3=var3402, r4=var515, $r5=var1444, $i2=var856, $z1=var1877, $r6=var1889, ""=var2642}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl$Builder;	$r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1);	r4 = (java.lang.String) $r3;	$r5 = (java.lang.CharSequence) r4;	$i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>();	if $i2 != 0 goto $z1 = 0;	$z1 = 0;	if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>("");	return
;block_num 5
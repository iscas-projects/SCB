(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2338 0)
(declare-sort var3969 0)
(declare-sort var1386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun encodedPathSegments/627676127 (var2338) var3969)
(declare-fun var3969_size/-959786421 (var3969) Int)
(declare-fun var3969_remove/1853576941 (var3969 Int) var1386)
(declare-fun cast-from-var1386-to-String (var1386) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3969_add/328494887 (var3969 var1386) Bool)
(declare-fun cast-from-String-to-var1386 (String) var1386)
(declare-const null-var2338 var2338)
(declare-const var3886 var2338) ; Statement: r0 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var3886 null-var2338)))
(define-const var407 var3969 (encodedPathSegments/627676127 var3886)) ; Statement: $r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3999 var3969 (encodedPathSegments/627676127 var3886)) ; Statement: $r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3687 Int (var3969_size/-959786421 var3999)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var1023 Int (- var3687 1)) ; Statement: $i1 = $i0 - 1 
(define-const var852 var1386 (var3969_remove/1853576941 var407 var1023)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1) 
(define-const var2501 String (cast-from-var1386-to-String var852)) ; Statement: r4 = (java.lang.String) $r3 
(define-const var3729 String (cast-from-String-to-String var2501)) ; Statement: $r5 = (java.lang.CharSequence) r4 
(define-const var199 Int (String_length/-667254855 var3729)) ; Statement: $i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i2 != 0 goto $z1 = 0 
(assert (not (not (= var199 0)))) ; Negate: Cond: $i2 != 0  
(define-const var2883 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var2883 1 0) 0)) ; Cond: $z1 == 0 
(define-const var437 var3969 (encodedPathSegments/627676127 var3886)) ; Statement: $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var3969_add/328494887 var437 (cast-from-String-to-var1386 ""))) ; Statement: interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>("") 

(declare-const var437!1 var3969)
(declare-const var3063 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var3969_size/-959786421=([java.util.List], int), var3969_remove/1853576941=([java.util.List, int], java.lang.Object), cast-from-var1386-to-String=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var3969_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1386=([java.lang.String], java.lang.Object)}
; {var2338=okhttp3.HttpUrl$Builder, var3886=r0, var3969=java.util.List, var407=$r2, var3999=$r1, var3687=$i0, var1023=$i1, var1386=java.lang.Object, var852=$r3, var2501=r4, var3729=$r5, var199=$i2, var2883=$z1, var437=$r6, var3063=""}
; {okhttp3.HttpUrl$Builder=var2338, r0=var3886, java.util.List=var3969, $r2=var407, $r1=var3999, $i0=var3687, $i1=var1023, java.lang.Object=var1386, $r3=var852, r4=var2501, $r5=var3729, $i2=var199, $z1=var2883, $r6=var437, ""=var3063}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl$Builder;	$r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1);	r4 = (java.lang.String) $r3;	$r5 = (java.lang.CharSequence) r4;	$i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>();	if $i2 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= (branch)];	if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>("");	return
;block_num 5
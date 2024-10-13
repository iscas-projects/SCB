(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var120 0)
(declare-sort var2480 0)
(declare-sort var3593 0)
(declare-sort var1745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun encodedPathSegments/627676127 (var120) var2480)
(declare-fun var2480_size/-959786421 (var2480) Int)
(declare-fun var2480_remove/1853576941 (var2480 Int) var3593)
(declare-fun cast-from-var3593-to-String (var3593) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun cast-from-var2480-to-var1745 (var2480) var1745)
(declare-fun var1745_isEmpty/-1652560782 (var1745) Bool)
(declare-fun var2480_set/-1241329960 (var2480 Int var3593) var3593)
(declare-fun cast-from-String-to-var3593 (String) var3593)
(declare-const null-var120 var120)
(declare-const var1712 var120) ; Statement: r0 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1712 null-var120)))
(define-const var1575 var2480 (encodedPathSegments/627676127 var1712)) ; Statement: $r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var836 var2480 (encodedPathSegments/627676127 var1712)) ; Statement: $r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2496 Int (var2480_size/-959786421 var836)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var1923 Int (- var2496 1)) ; Statement: $i1 = $i0 - 1 
(define-const var3687 var3593 (var2480_remove/1853576941 var1575 var1923)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1) 
(define-const var1092 String (cast-from-var3593-to-String var3687)) ; Statement: r4 = (java.lang.String) $r3 
(define-const var465 String (cast-from-String-to-String var1092)) ; Statement: $r5 = (java.lang.CharSequence) r4 
(define-const var232 Int (String_length/-667254855 var465)) ; Statement: $i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i2 != 0 goto $z1 = 0 
(assert (not (not (= var232 0)))) ; Negate: Cond: $i2 != 0  
(define-const var478 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var478 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3456 var2480 (encodedPathSegments/627676127 var1712)) ; Statement: $r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2222 var1745 (cast-from-var2480-to-var1745 var3456)) ; Statement: $r8 = (java.util.Collection) $r7 
(define-const var3937 Bool (var1745_isEmpty/-1652560782 var2222)) ; Statement: $z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var3937 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var546 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var546 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1892 var2480 (encodedPathSegments/627676127 var1712)) ; Statement: $r10 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3712 var2480 (encodedPathSegments/627676127 var1712)) ; Statement: $r9 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var924 Int (var2480_size/-959786421 var3712)) ; Statement: $i3 = interfaceinvoke $r9.<java.util.List: int size()>() 
(define-const var193 Int (- var924 1)) ; Statement: $i4 = $i3 - 1 
;(assert (var2480_set/-1241329960 var1892 var193 (cast-from-String-to-var3593 ""))) ; Statement: interfaceinvoke $r10.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i4, "") 

(declare-const var1892!1 var2480)
(declare-const var193!1 Int)
(declare-const var2721 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var2480_size/-959786421=([java.util.List], int), var2480_remove/1853576941=([java.util.List, int], java.lang.Object), cast-from-var3593-to-String=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), cast-from-var2480-to-var1745=([java.util.List], java.util.Collection), var1745_isEmpty/-1652560782=([java.util.Collection], boolean), var2480_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-String-to-var3593=([java.lang.String], java.lang.Object)}
; {var120=okhttp3.HttpUrl$Builder, var1712=r0, var2480=java.util.List, var1575=$r2, var836=$r1, var2496=$i0, var1923=$i1, var3593=java.lang.Object, var3687=$r3, var1092=r4, var465=$r5, var232=$i2, var478=$z1, var3456=$r7, var1745=java.util.Collection, var2222=$r8, var3937=$z0, var546=$z2, var1892=$r10, var3712=$r9, var924=$i3, var193=$i4, var2721=""}
; {okhttp3.HttpUrl$Builder=var120, r0=var1712, java.util.List=var2480, $r2=var1575, $r1=var836, $i0=var2496, $i1=var1923, java.lang.Object=var3593, $r3=var3687, r4=var1092, $r5=var465, $i2=var232, $z1=var478, $r7=var3456, java.util.Collection=var1745, $r8=var2222, $z0=var3937, $z2=var546, $r10=var1892, $r9=var3712, $i3=var924, $i4=var193, ""=var2721}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl$Builder;	$r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1);	r4 = (java.lang.String) $r3;	$r5 = (java.lang.CharSequence) r4;	$i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>();	if $i2 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= (branch)];	if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r8 = (java.util.Collection) $r7;	$z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= (branch)];	if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r10 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r9 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i3 = interfaceinvoke $r9.<java.util.List: int size()>();	$i4 = $i3 - 1;	interfaceinvoke $r10.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i4, "");	goto [?= return];	return
;block_num 8
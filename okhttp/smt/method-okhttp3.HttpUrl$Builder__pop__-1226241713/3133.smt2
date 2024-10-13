(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var168 0)
(declare-sort var661 0)
(declare-sort var3430 0)
(declare-sort var2806 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun encodedPathSegments/627676127 (var168) var661)
(declare-fun var661_size/-959786421 (var661) Int)
(declare-fun var661_remove/1853576941 (var661 Int) var3430)
(declare-fun cast-from-var3430-to-String (var3430) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun cast-from-var661-to-var2806 (var661) var2806)
(declare-fun var2806_isEmpty/-1652560782 (var2806) Bool)
(declare-fun var661_set/-1241329960 (var661 Int var3430) var3430)
(declare-fun cast-from-String-to-var3430 (String) var3430)
(declare-const null-var168 var168)
(declare-const var3296 var168) ; Statement: r0 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var3296 null-var168)))
(define-const var675 var661 (encodedPathSegments/627676127 var3296)) ; Statement: $r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2008 var661 (encodedPathSegments/627676127 var3296)) ; Statement: $r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var996 Int (var661_size/-959786421 var2008)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var3898 Int (- var996 1)) ; Statement: $i1 = $i0 - 1 
(define-const var1829 var3430 (var661_remove/1853576941 var675 var3898)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1) 
(define-const var65 String (cast-from-var3430-to-String var1829)) ; Statement: r4 = (java.lang.String) $r3 
(define-const var2108 String (cast-from-String-to-String var65)) ; Statement: $r5 = (java.lang.CharSequence) r4 
(define-const var1756 Int (String_length/-667254855 var2108)) ; Statement: $i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i2 != 0 goto $z1 = 0 
(assert (not (= var1756 0))) ; Cond: $i2 != 0 
(define-const var1661 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var1661 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1225 var661 (encodedPathSegments/627676127 var3296)) ; Statement: $r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var25 var2806 (cast-from-var661-to-var2806 var1225)) ; Statement: $r8 = (java.util.Collection) $r7 
(define-const var529 Bool (var2806_isEmpty/-1652560782 var25)) ; Statement: $z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var529 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3468 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var3468 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2048 var661 (encodedPathSegments/627676127 var3296)) ; Statement: $r10 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3502 var661 (encodedPathSegments/627676127 var3296)) ; Statement: $r9 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var181 Int (var661_size/-959786421 var3502)) ; Statement: $i3 = interfaceinvoke $r9.<java.util.List: int size()>() 
(define-const var3989 Int (- var181 1)) ; Statement: $i4 = $i3 - 1 
;(assert (var661_set/-1241329960 var2048 var3989 (cast-from-String-to-var3430 ""))) ; Statement: interfaceinvoke $r10.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i4, "") 

(declare-const var2048!1 var661)
(declare-const var3989!1 Int)
(declare-const var942 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var661_size/-959786421=([java.util.List], int), var661_remove/1853576941=([java.util.List, int], java.lang.Object), cast-from-var3430-to-String=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), cast-from-var661-to-var2806=([java.util.List], java.util.Collection), var2806_isEmpty/-1652560782=([java.util.Collection], boolean), var661_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-String-to-var3430=([java.lang.String], java.lang.Object)}
; {var168=okhttp3.HttpUrl$Builder, var3296=r0, var661=java.util.List, var675=$r2, var2008=$r1, var996=$i0, var3898=$i1, var3430=java.lang.Object, var1829=$r3, var65=r4, var2108=$r5, var1756=$i2, var1661=$z1, var1225=$r7, var2806=java.util.Collection, var25=$r8, var529=$z0, var3468=$z2, var2048=$r10, var3502=$r9, var181=$i3, var3989=$i4, var942=""}
; {okhttp3.HttpUrl$Builder=var168, r0=var3296, java.util.List=var661, $r2=var675, $r1=var2008, $i0=var996, $i1=var3898, java.lang.Object=var3430, $r3=var1829, r4=var65, $r5=var2108, $i2=var1756, $z1=var1661, $r7=var1225, java.util.Collection=var2806, $r8=var25, $z0=var529, $z2=var3468, $r10=var2048, $r9=var3502, $i3=var181, $i4=var3989, ""=var942}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl$Builder;	$r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1);	r4 = (java.lang.String) $r3;	$r5 = (java.lang.CharSequence) r4;	$i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>();	if $i2 != 0 goto $z1 = 0;	$z1 = 0;	if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r8 = (java.util.Collection) $r7;	$z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r10 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r9 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i3 = interfaceinvoke $r9.<java.util.List: int size()>();	$i4 = $i3 - 1;	interfaceinvoke $r10.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i4, "");	goto [?= return];	return
;block_num 8
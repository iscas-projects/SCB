(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3783 0)
(declare-sort var1689 0)
(declare-sort var3779 0)
(declare-sort var2624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun encodedPathSegments/627676127 (var3783) var1689)
(declare-fun var1689_size/-959786421 (var1689) Int)
(declare-fun var1689_remove/1853576941 (var1689 Int) var3779)
(declare-fun cast-from-var3779-to-String (var3779) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun cast-from-var1689-to-var2624 (var1689) var2624)
(declare-fun var2624_isEmpty/-1652560782 (var2624) Bool)
(declare-fun var1689_set/-1241329960 (var1689 Int var3779) var3779)
(declare-fun cast-from-String-to-var3779 (String) var3779)
(declare-const null-var3783 var3783)
(declare-const var1615 var3783) ; Statement: r0 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1615 null-var3783)))
(define-const var2935 var1689 (encodedPathSegments/627676127 var1615)) ; Statement: $r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2431 var1689 (encodedPathSegments/627676127 var1615)) ; Statement: $r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2001 Int (var1689_size/-959786421 var2431)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var809 Int (- var2001 1)) ; Statement: $i1 = $i0 - 1 
(define-const var1464 var3779 (var1689_remove/1853576941 var2935 var809)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1) 
(define-const var536 String (cast-from-var3779-to-String var1464)) ; Statement: r4 = (java.lang.String) $r3 
(define-const var512 String (cast-from-String-to-String var536)) ; Statement: $r5 = (java.lang.CharSequence) r4 
(define-const var14 Int (String_length/-667254855 var512)) ; Statement: $i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i2 != 0 goto $z1 = 0 
(assert (not (= var14 0))) ; Cond: $i2 != 0 
(define-const var2884 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var2884 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var909 var1689 (encodedPathSegments/627676127 var1615)) ; Statement: $r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var642 var2624 (cast-from-var1689-to-var2624 var909)) ; Statement: $r8 = (java.util.Collection) $r7 
(define-const var780 Bool (var2624_isEmpty/-1652560782 var642)) ; Statement: $z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var780 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1398 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var1398 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1971 var1689 (encodedPathSegments/627676127 var1615)) ; Statement: $r10 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var1493 var1689 (encodedPathSegments/627676127 var1615)) ; Statement: $r9 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2768 Int (var1689_size/-959786421 var1493)) ; Statement: $i3 = interfaceinvoke $r9.<java.util.List: int size()>() 
(define-const var1670 Int (- var2768 1)) ; Statement: $i4 = $i3 - 1 
;(assert (var1689_set/-1241329960 var1971 var1670 (cast-from-String-to-var3779 ""))) ; Statement: interfaceinvoke $r10.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i4, "") 

(declare-const var1971!1 var1689)
(declare-const var1670!1 Int)
(declare-const var3046 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var1689_size/-959786421=([java.util.List], int), var1689_remove/1853576941=([java.util.List, int], java.lang.Object), cast-from-var3779-to-String=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), cast-from-var1689-to-var2624=([java.util.List], java.util.Collection), var2624_isEmpty/-1652560782=([java.util.Collection], boolean), var1689_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-String-to-var3779=([java.lang.String], java.lang.Object)}
; {var3783=okhttp3.HttpUrl$Builder, var1615=r0, var1689=java.util.List, var2935=$r2, var2431=$r1, var2001=$i0, var809=$i1, var3779=java.lang.Object, var1464=$r3, var536=r4, var512=$r5, var14=$i2, var2884=$z1, var909=$r7, var2624=java.util.Collection, var642=$r8, var780=$z0, var1398=$z2, var1971=$r10, var1493=$r9, var2768=$i3, var1670=$i4, var3046=""}
; {okhttp3.HttpUrl$Builder=var3783, r0=var1615, java.util.List=var1689, $r2=var2935, $r1=var2431, $i0=var2001, $i1=var809, java.lang.Object=var3779, $r3=var1464, r4=var536, $r5=var512, $i2=var14, $z1=var2884, $r7=var909, java.util.Collection=var2624, $r8=var642, $z0=var780, $z2=var1398, $r10=var1971, $r9=var1493, $i3=var2768, $i4=var1670, ""=var3046}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl$Builder;	$r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1);	r4 = (java.lang.String) $r3;	$r5 = (java.lang.CharSequence) r4;	$i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>();	if $i2 != 0 goto $z1 = 0;	$z1 = 0;	if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r8 = (java.util.Collection) $r7;	$z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= (branch)];	if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r10 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r9 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i3 = interfaceinvoke $r9.<java.util.List: int size()>();	$i4 = $i3 - 1;	interfaceinvoke $r10.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i4, "");	goto [?= return];	return
;block_num 8
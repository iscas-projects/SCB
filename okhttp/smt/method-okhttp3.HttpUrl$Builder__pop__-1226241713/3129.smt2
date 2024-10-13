(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1813 0)
(declare-sort var3189 0)
(declare-sort var1053 0)
(declare-sort var2001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun encodedPathSegments/627676127 (var1813) var3189)
(declare-fun var3189_size/-959786421 (var3189) Int)
(declare-fun var3189_remove/1853576941 (var3189 Int) var1053)
(declare-fun cast-from-var1053-to-String (var1053) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun cast-from-var3189-to-var2001 (var3189) var2001)
(declare-fun var2001_isEmpty/-1652560782 (var2001) Bool)
(declare-fun var3189_set/-1241329960 (var3189 Int var1053) var1053)
(declare-fun cast-from-String-to-var1053 (String) var1053)
(declare-const null-var1813 var1813)
(declare-const var1994 var1813) ; Statement: r0 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1994 null-var1813)))
(define-const var3234 var3189 (encodedPathSegments/627676127 var1994)) ; Statement: $r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var1597 var3189 (encodedPathSegments/627676127 var1994)) ; Statement: $r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var697 Int (var3189_size/-959786421 var1597)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var27 Int (- var697 1)) ; Statement: $i1 = $i0 - 1 
(define-const var2513 var1053 (var3189_remove/1853576941 var3234 var27)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1) 
(define-const var3879 String (cast-from-var1053-to-String var2513)) ; Statement: r4 = (java.lang.String) $r3 
(define-const var1046 String (cast-from-String-to-String var3879)) ; Statement: $r5 = (java.lang.CharSequence) r4 
(define-const var3754 Int (String_length/-667254855 var1046)) ; Statement: $i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i2 != 0 goto $z1 = 0 
(assert (not (not (= var3754 0)))) ; Negate: Cond: $i2 != 0  
(define-const var736 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var736 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1164 var3189 (encodedPathSegments/627676127 var1994)) ; Statement: $r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var224 var2001 (cast-from-var3189-to-var2001 var1164)) ; Statement: $r8 = (java.util.Collection) $r7 
(define-const var2237 Bool (var2001_isEmpty/-1652560782 var224)) ; Statement: $z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var2237 1 0) 0))) ; Cond: $z0 != 0 
(define-const var663 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var663 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2020 var3189 (encodedPathSegments/627676127 var1994)) ; Statement: $r10 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2003 var3189 (encodedPathSegments/627676127 var1994)) ; Statement: $r9 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3360 Int (var3189_size/-959786421 var2003)) ; Statement: $i3 = interfaceinvoke $r9.<java.util.List: int size()>() 
(define-const var2332 Int (- var3360 1)) ; Statement: $i4 = $i3 - 1 
;(assert (var3189_set/-1241329960 var2020 var2332 (cast-from-String-to-var1053 ""))) ; Statement: interfaceinvoke $r10.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i4, "") 

(declare-const var2020!1 var3189)
(declare-const var2332!1 Int)
(declare-const var912 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var3189_size/-959786421=([java.util.List], int), var3189_remove/1853576941=([java.util.List, int], java.lang.Object), cast-from-var1053-to-String=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), cast-from-var3189-to-var2001=([java.util.List], java.util.Collection), var2001_isEmpty/-1652560782=([java.util.Collection], boolean), var3189_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-String-to-var1053=([java.lang.String], java.lang.Object)}
; {var1813=okhttp3.HttpUrl$Builder, var1994=r0, var3189=java.util.List, var3234=$r2, var1597=$r1, var697=$i0, var27=$i1, var1053=java.lang.Object, var2513=$r3, var3879=r4, var1046=$r5, var3754=$i2, var736=$z1, var1164=$r7, var2001=java.util.Collection, var224=$r8, var2237=$z0, var663=$z2, var2020=$r10, var2003=$r9, var3360=$i3, var2332=$i4, var912=""}
; {okhttp3.HttpUrl$Builder=var1813, r0=var1994, java.util.List=var3189, $r2=var3234, $r1=var1597, $i0=var697, $i1=var27, java.lang.Object=var1053, $r3=var2513, r4=var3879, $r5=var1046, $i2=var3754, $z1=var736, $r7=var1164, java.util.Collection=var2001, $r8=var224, $z0=var2237, $z2=var663, $r10=var2020, $r9=var2003, $i3=var3360, $i4=var2332, ""=var912}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl$Builder;	$r2 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r1 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1);	r4 = (java.lang.String) $r3;	$r5 = (java.lang.CharSequence) r4;	$i2 = interfaceinvoke $r5.<java.lang.CharSequence: int length()>();	if $i2 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= (branch)];	if $z1 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r7 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r8 = (java.util.Collection) $r7;	$z0 = interfaceinvoke $r8.<java.util.Collection: boolean isEmpty()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	if $z2 == 0 goto $r6 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r10 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r9 = r0.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i3 = interfaceinvoke $r9.<java.util.List: int size()>();	$i4 = $i3 - 1;	interfaceinvoke $r10.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i4, "");	goto [?= return];	return
;block_num 8
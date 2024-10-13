(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2264 0)
(declare-sort var1615 0)
(declare-sort var2664 0)
(declare-sort var831 0)
(declare-sort var2902 0)
(declare-sort var2009 0)
(declare-sort var2174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2664_canonicalize$okhttp$default/-759723081 (var2664 String Int Int String Bool Bool Bool Bool var2902 Int var2009) String)
(declare-fun isDot/-1767506460 (var2264 String) Bool)
(declare-fun isDotDot/1881870359 (var2264 String) Bool)
(declare-fun encodedPathSegments/627676127 (var2264) var2174)
(declare-fun var2174_size/-959786421 (var2174) Int)
(declare-fun var2174_get/-1216255739 (var2174 Int) var2009)
(declare-fun cast-from-var2009-to-String (var2009) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var2174_add/328494887 (var2174 var2009) Bool)
(declare-fun cast-from-String-to-var2009 (String) var2009)
(declare-const null-var2264 var2264)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var831-Companion var2664)
(declare-const null-var2902 var2902)
(declare-const null-var2009 var2009)
(declare-const var3256 var2264) ; Statement: r3 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var3256 null-var2264)))
(declare-const var832 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var832 null-String)))
(declare-const var774 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var774 null-Int)))
(declare-const var504 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var504 null-Int)))
(declare-const var153 Bool) ; Statement: z3 := @parameter3: boolean 
(assert (not (= var153 null-Bool)))
(declare-const var3066 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var3066 null-Bool)))
(define-const var739 var2664 var831-Companion) ; Statement: $r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var2854 String (var2664_canonicalize$okhttp$default/-759723081 var739 var832 var774 var504 " \u0022<>^`{}|/\u005c?#" var3066 (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) null-var2902 240 null-var2009)) ; Statement: r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null) 
(assert true)
(define-const var1332 Bool (isDot/-1767506460 var3256 var2854)) ; Statement: $z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2) 
 ; Statement: if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
(assert (= (ite var1332 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2448 Bool (isDotDot/1881870359 var3256 var2854)) ; Statement: $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
 ; Statement: if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var2448 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3043 var2174 (encodedPathSegments/627676127 var3256)) ; Statement: $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2610 var2174 (encodedPathSegments/627676127 var3256)) ; Statement: $r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var461 Int (var2174_size/-959786421 var2610)) ; Statement: $i2 = interfaceinvoke $r4.<java.util.List: int size()>() 
(define-const var1029 Int (- var461 1)) ; Statement: $i3 = $i2 - 1 
(define-const var1304 var2009 (var2174_get/-1216255739 var3043 var1029)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3) 
(define-const var3077 String (cast-from-var2009-to-String var1304)) ; Statement: $r7 = (java.lang.CharSequence) $r6 
(define-const var521 Int (String_length/-667254855 var3077)) ; Statement: $i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 != 0 goto $z4 = 0 
(assert (not (= var521 0))) ; Cond: $i4 != 0 
(define-const var2870 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var2870 1 0) 0)) ; Cond: $z4 == 0 
(define-const var2772 var2174 (encodedPathSegments/627676127 var3256)) ; Statement: $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var2174_add/328494887 var2772 (cast-from-String-to-var2009 var2854))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>(r2) 

(declare-const var2772!1 var2174)
(declare-const var2854!1 String)
(assert true) ; Non Conditional
 ; Statement: if z3 == 0 goto return 
(assert (= (ite var153 1 0) 0)) ; Cond: z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2664_canonicalize$okhttp$default/-759723081=([okhttp3.HttpUrl$Companion, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset, int, java.lang.Object], java.lang.String), isDot/-1767506460=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), isDotDot/1881870359=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var2174_size/-959786421=([java.util.List], int), var2174_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2009-to-String=([java.lang.Object], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var2174_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2009=([java.lang.String], java.lang.Object)}
; {var2264=okhttp3.HttpUrl$Builder, var3256=r3, var832=r0, var1615=null_type, var774=i0, var504=i1, var153=z3, var3066=z0, var2664=okhttp3.HttpUrl$Companion, var831=okhttp3.HttpUrl, var739=$r1, var2902=java.nio.charset.Charset, var2009=java.lang.Object, var2854=r2, var1332=$z1, var2448=$z2, var2174=java.util.List, var3043=$r5, var2610=$r4, var461=$i2, var1029=$i3, var1304=$r6, var3077=$r7, var521=$i4, var2870=$z4, var2772=$r8}
; {okhttp3.HttpUrl$Builder=var2264, r3=var3256, r0=var832, null_type=var1615, i0=var774, i1=var504, z3=var153, z0=var3066, okhttp3.HttpUrl$Companion=var2664, okhttp3.HttpUrl=var831, $r1=var739, java.nio.charset.Charset=var2902, java.lang.Object=var2009, r2=var2854, $z1=var1332, $z2=var2448, java.util.List=var2174, $r5=var3043, $r4=var2610, $i2=var461, $i3=var1029, $r6=var1304, $r7=var3077, $i4=var521, $z4=var2870, $r8=var2772}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r3 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	z3 := @parameter3: boolean;	z0 := @parameter4: boolean;	$r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null);	$z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2);	if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	$z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i2 = interfaceinvoke $r4.<java.util.List: int size()>();	$i3 = $i2 - 1;	$r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3);	$r7 = (java.lang.CharSequence) $r6;	$i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>();	if $i4 != 0 goto $z4 = 0;	$z4 = 0;	if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>(r2);	if z3 == 0 goto return;	return
;block_num 8
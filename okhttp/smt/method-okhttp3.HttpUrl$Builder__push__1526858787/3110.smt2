(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2871 0)
(declare-sort var638 0)
(declare-sort var1178 0)
(declare-sort var1800 0)
(declare-sort var3165 0)
(declare-sort var2923 0)
(declare-sort var3939 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1178_canonicalize$okhttp$default/-759723081 (var1178 String Int Int String Bool Bool Bool Bool var3165 Int var2923) String)
(declare-fun isDot/-1767506460 (var2871 String) Bool)
(declare-fun isDotDot/1881870359 (var2871 String) Bool)
(declare-fun encodedPathSegments/627676127 (var2871) var3939)
(declare-fun var3939_size/-959786421 (var3939) Int)
(declare-fun var3939_get/-1216255739 (var3939 Int) var2923)
(declare-fun cast-from-var2923-to-String (var2923) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3939_add/328494887 (var3939 var2923) Bool)
(declare-fun cast-from-String-to-var2923 (String) var2923)
(declare-const null-var2871 var2871)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1800-Companion var1178)
(declare-const null-var3165 var3165)
(declare-const null-var2923 var2923)
(declare-const var292 var2871) ; Statement: r3 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var292 null-var2871)))
(declare-const var2350 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2350 null-String)))
(declare-const var1481 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1481 null-Int)))
(declare-const var1811 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1811 null-Int)))
(declare-const var3589 Bool) ; Statement: z3 := @parameter3: boolean 
(assert (not (= var3589 null-Bool)))
(declare-const var1479 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var1479 null-Bool)))
(define-const var3337 var1178 var1800-Companion) ; Statement: $r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var2407 String (var1178_canonicalize$okhttp$default/-759723081 var3337 var2350 var1481 var1811 " \u0022<>^`{}|/\u005c?#" var1479 (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) null-var3165 240 null-var2923)) ; Statement: r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null) 
(assert true)
(define-const var146 Bool (isDot/-1767506460 var292 var2407)) ; Statement: $z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2) 
 ; Statement: if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
(assert (= (ite var146 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2129 Bool (isDotDot/1881870359 var292 var2407)) ; Statement: $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
 ; Statement: if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var2129 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2510 var3939 (encodedPathSegments/627676127 var292)) ; Statement: $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2442 var3939 (encodedPathSegments/627676127 var292)) ; Statement: $r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var1701 Int (var3939_size/-959786421 var2442)) ; Statement: $i2 = interfaceinvoke $r4.<java.util.List: int size()>() 
(define-const var1415 Int (- var1701 1)) ; Statement: $i3 = $i2 - 1 
(define-const var78 var2923 (var3939_get/-1216255739 var2510 var1415)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3) 
(define-const var1079 String (cast-from-var2923-to-String var78)) ; Statement: $r7 = (java.lang.CharSequence) $r6 
(define-const var91 Int (String_length/-667254855 var1079)) ; Statement: $i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 != 0 goto $z4 = 0 
(assert (not (not (= var91 0)))) ; Negate: Cond: $i4 != 0  
(define-const var3130 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var3130 1 0) 0)) ; Cond: $z4 == 0 
(define-const var3728 var3939 (encodedPathSegments/627676127 var292)) ; Statement: $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var3939_add/328494887 var3728 (cast-from-String-to-var2923 var2407))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>(r2) 

(declare-const var3728!1 var3939)
(declare-const var2407!1 String)
(assert true) ; Non Conditional
 ; Statement: if z3 == 0 goto return 
(assert (= (ite var3589 1 0) 0)) ; Cond: z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1178_canonicalize$okhttp$default/-759723081=([okhttp3.HttpUrl$Companion, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset, int, java.lang.Object], java.lang.String), isDot/-1767506460=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), isDotDot/1881870359=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var3939_size/-959786421=([java.util.List], int), var3939_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2923-to-String=([java.lang.Object], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var3939_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2923=([java.lang.String], java.lang.Object)}
; {var2871=okhttp3.HttpUrl$Builder, var292=r3, var2350=r0, var638=null_type, var1481=i0, var1811=i1, var3589=z3, var1479=z0, var1178=okhttp3.HttpUrl$Companion, var1800=okhttp3.HttpUrl, var3337=$r1, var3165=java.nio.charset.Charset, var2923=java.lang.Object, var2407=r2, var146=$z1, var2129=$z2, var3939=java.util.List, var2510=$r5, var2442=$r4, var1701=$i2, var1415=$i3, var78=$r6, var1079=$r7, var91=$i4, var3130=$z4, var3728=$r8}
; {okhttp3.HttpUrl$Builder=var2871, r3=var292, r0=var2350, null_type=var638, i0=var1481, i1=var1811, z3=var3589, z0=var1479, okhttp3.HttpUrl$Companion=var1178, okhttp3.HttpUrl=var1800, $r1=var3337, java.nio.charset.Charset=var3165, java.lang.Object=var2923, r2=var2407, $z1=var146, $z2=var2129, java.util.List=var3939, $r5=var2510, $r4=var2442, $i2=var1701, $i3=var1415, $r6=var78, $r7=var1079, $i4=var91, $z4=var3130, $r8=var3728}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r3 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	z3 := @parameter3: boolean;	z0 := @parameter4: boolean;	$r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null);	$z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2);	if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	$z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i2 = interfaceinvoke $r4.<java.util.List: int size()>();	$i3 = $i2 - 1;	$r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3);	$r7 = (java.lang.CharSequence) $r6;	$i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>();	if $i4 != 0 goto $z4 = 0;	$z4 = 1;	goto [?= (branch)];	if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>(r2);	if z3 == 0 goto return;	return
;block_num 8
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var979 0)
(declare-sort var3098 0)
(declare-sort var3362 0)
(declare-sort var124 0)
(declare-sort var3445 0)
(declare-sort var2315 0)
(declare-sort var1949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3362_canonicalize$okhttp$default/-759723081 (var3362 String Int Int String Bool Bool Bool Bool var3445 Int var2315) String)
(declare-fun isDot/-1767506460 (var979 String) Bool)
(declare-fun isDotDot/1881870359 (var979 String) Bool)
(declare-fun encodedPathSegments/627676127 (var979) var1949)
(declare-fun var1949_size/-959786421 (var1949) Int)
(declare-fun var1949_get/-1216255739 (var1949 Int) var2315)
(declare-fun cast-from-var2315-to-String (var2315) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var1949_set/-1241329960 (var1949 Int var2315) var2315)
(declare-fun cast-from-String-to-var2315 (String) var2315)
(declare-const null-var979 var979)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var124-Companion var3362)
(declare-const null-var3445 var3445)
(declare-const null-var2315 var2315)
(declare-const var1370 var979) ; Statement: r3 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1370 null-var979)))
(declare-const var2894 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2894 null-String)))
(declare-const var2152 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2152 null-Int)))
(declare-const var1161 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1161 null-Int)))
(declare-const var3710 Bool) ; Statement: z3 := @parameter3: boolean 
(assert (not (= var3710 null-Bool)))
(declare-const var3178 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var3178 null-Bool)))
(define-const var1634 var3362 var124-Companion) ; Statement: $r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var1785 String (var3362_canonicalize$okhttp$default/-759723081 var1634 var2894 var2152 var1161 " \u0022<>^`{}|/\u005c?#" var3178 (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) null-var3445 240 null-var2315)) ; Statement: r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null) 
(assert true)
(define-const var3481 Bool (isDot/-1767506460 var1370 var1785)) ; Statement: $z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2) 
 ; Statement: if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
(assert (= (ite var3481 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2128 Bool (isDotDot/1881870359 var1370 var1785)) ; Statement: $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
 ; Statement: if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var2128 1 0) 0)) ; Cond: $z2 == 0 
(define-const var86 var1949 (encodedPathSegments/627676127 var1370)) ; Statement: $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var1511 var1949 (encodedPathSegments/627676127 var1370)) ; Statement: $r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3542 Int (var1949_size/-959786421 var1511)) ; Statement: $i2 = interfaceinvoke $r4.<java.util.List: int size()>() 
(define-const var926 Int (- var3542 1)) ; Statement: $i3 = $i2 - 1 
(define-const var1413 var2315 (var1949_get/-1216255739 var86 var926)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3) 
(define-const var1067 String (cast-from-var2315-to-String var1413)) ; Statement: $r7 = (java.lang.CharSequence) $r6 
(define-const var1631 Int (String_length/-667254855 var1067)) ; Statement: $i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 != 0 goto $z4 = 0 
(assert (not (not (= var1631 0)))) ; Negate: Cond: $i4 != 0  
(define-const var3729 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var3729 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var1141 var1949 (encodedPathSegments/627676127 var1370)) ; Statement: $r11 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var1120 var1949 (encodedPathSegments/627676127 var1370)) ; Statement: $r10 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3667 Int (var1949_size/-959786421 var1120)) ; Statement: $i5 = interfaceinvoke $r10.<java.util.List: int size()>() 
(define-const var3076 Int (- var3667 1)) ; Statement: $i6 = $i5 - 1 
;(assert (var1949_set/-1241329960 var1141 var3076 (cast-from-String-to-var2315 var1785))) ; Statement: interfaceinvoke $r11.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i6, r2) 

(declare-const var1141!1 var1949)
(declare-const var3076!1 Int)
(declare-const var1785!1 String)
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z3 == 0 goto return 
(assert (= (ite var3710 1 0) 0)) ; Cond: z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3362_canonicalize$okhttp$default/-759723081=([okhttp3.HttpUrl$Companion, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset, int, java.lang.Object], java.lang.String), isDot/-1767506460=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), isDotDot/1881870359=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var1949_size/-959786421=([java.util.List], int), var1949_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2315-to-String=([java.lang.Object], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var1949_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-String-to-var2315=([java.lang.String], java.lang.Object)}
; {var979=okhttp3.HttpUrl$Builder, var1370=r3, var2894=r0, var3098=null_type, var2152=i0, var1161=i1, var3710=z3, var3178=z0, var3362=okhttp3.HttpUrl$Companion, var124=okhttp3.HttpUrl, var1634=$r1, var3445=java.nio.charset.Charset, var2315=java.lang.Object, var1785=r2, var3481=$z1, var2128=$z2, var1949=java.util.List, var86=$r5, var1511=$r4, var3542=$i2, var926=$i3, var1413=$r6, var1067=$r7, var1631=$i4, var3729=$z4, var1141=$r11, var1120=$r10, var3667=$i5, var3076=$i6}
; {okhttp3.HttpUrl$Builder=var979, r3=var1370, r0=var2894, null_type=var3098, i0=var2152, i1=var1161, z3=var3710, z0=var3178, okhttp3.HttpUrl$Companion=var3362, okhttp3.HttpUrl=var124, $r1=var1634, java.nio.charset.Charset=var3445, java.lang.Object=var2315, r2=var1785, $z1=var3481, $z2=var2128, java.util.List=var1949, $r5=var86, $r4=var1511, $i2=var3542, $i3=var926, $r6=var1413, $r7=var1067, $i4=var1631, $z4=var3729, $r11=var1141, $r10=var1120, $i5=var3667, $i6=var3076}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r3 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	z3 := @parameter3: boolean;	z0 := @parameter4: boolean;	$r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null);	$z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2);	if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	$z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i2 = interfaceinvoke $r4.<java.util.List: int size()>();	$i3 = $i2 - 1;	$r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3);	$r7 = (java.lang.CharSequence) $r6;	$i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>();	if $i4 != 0 goto $z4 = 0;	$z4 = 1;	goto [?= (branch)];	if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r11 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r10 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i5 = interfaceinvoke $r10.<java.util.List: int size()>();	$i6 = $i5 - 1;	interfaceinvoke $r11.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i6, r2);	goto [?= (branch)];	if z3 == 0 goto return;	return
;block_num 8
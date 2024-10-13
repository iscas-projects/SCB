(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var298 0)
(declare-sort var641 0)
(declare-sort var3287 0)
(declare-sort var3340 0)
(declare-sort var2554 0)
(declare-sort var2546 0)
(declare-sort var1866 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3287_canonicalize$okhttp$default/-759723081 (var3287 String Int Int String Bool Bool Bool Bool var2554 Int var2546) String)
(declare-fun isDot/-1767506460 (var298 String) Bool)
(declare-fun isDotDot/1881870359 (var298 String) Bool)
(declare-fun encodedPathSegments/627676127 (var298) var1866)
(declare-fun var1866_size/-959786421 (var1866) Int)
(declare-fun var1866_get/-1216255739 (var1866 Int) var2546)
(declare-fun cast-from-var2546-to-String (var2546) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var1866_set/-1241329960 (var1866 Int var2546) var2546)
(declare-fun cast-from-String-to-var2546 (String) var2546)
(declare-const null-var298 var298)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3340-Companion var3287)
(declare-const null-var2554 var2554)
(declare-const null-var2546 var2546)
(declare-const var2654 var298) ; Statement: r3 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2654 null-var298)))
(declare-const var3379 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3379 null-String)))
(declare-const var2025 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2025 null-Int)))
(declare-const var946 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var946 null-Int)))
(declare-const var3412 Bool) ; Statement: z3 := @parameter3: boolean 
(assert (not (= var3412 null-Bool)))
(declare-const var3698 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var3698 null-Bool)))
(define-const var1538 var3287 var3340-Companion) ; Statement: $r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var389 String (var3287_canonicalize$okhttp$default/-759723081 var1538 var3379 var2025 var946 " \u0022<>^`{}|/\u005c?#" var3698 (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) null-var2554 240 null-var2546)) ; Statement: r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null) 
(assert true)
(define-const var1118 Bool (isDot/-1767506460 var2654 var389)) ; Statement: $z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2) 
 ; Statement: if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
(assert (= (ite var1118 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3351 Bool (isDotDot/1881870359 var2654 var389)) ; Statement: $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
 ; Statement: if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var3351 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2675 var1866 (encodedPathSegments/627676127 var2654)) ; Statement: $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var846 var1866 (encodedPathSegments/627676127 var2654)) ; Statement: $r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3853 Int (var1866_size/-959786421 var846)) ; Statement: $i2 = interfaceinvoke $r4.<java.util.List: int size()>() 
(define-const var2100 Int (- var3853 1)) ; Statement: $i3 = $i2 - 1 
(define-const var3509 var2546 (var1866_get/-1216255739 var2675 var2100)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3) 
(define-const var1055 String (cast-from-var2546-to-String var3509)) ; Statement: $r7 = (java.lang.CharSequence) $r6 
(define-const var3010 Int (String_length/-667254855 var1055)) ; Statement: $i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 != 0 goto $z4 = 0 
(assert (not (= var3010 0))) ; Cond: $i4 != 0 
(define-const var1646 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var1646 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var1673 var1866 (encodedPathSegments/627676127 var2654)) ; Statement: $r11 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2196 var1866 (encodedPathSegments/627676127 var2654)) ; Statement: $r10 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2324 Int (var1866_size/-959786421 var2196)) ; Statement: $i5 = interfaceinvoke $r10.<java.util.List: int size()>() 
(define-const var1829 Int (- var2324 1)) ; Statement: $i6 = $i5 - 1 
;(assert (var1866_set/-1241329960 var1673 var1829 (cast-from-String-to-var2546 var389))) ; Statement: interfaceinvoke $r11.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i6, r2) 

(declare-const var1673!1 var1866)
(declare-const var1829!1 Int)
(declare-const var389!1 String)
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z3 == 0 goto return 
(assert (= (ite var3412 1 0) 0)) ; Cond: z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3287_canonicalize$okhttp$default/-759723081=([okhttp3.HttpUrl$Companion, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset, int, java.lang.Object], java.lang.String), isDot/-1767506460=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), isDotDot/1881870359=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var1866_size/-959786421=([java.util.List], int), var1866_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2546-to-String=([java.lang.Object], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var1866_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-String-to-var2546=([java.lang.String], java.lang.Object)}
; {var298=okhttp3.HttpUrl$Builder, var2654=r3, var3379=r0, var641=null_type, var2025=i0, var946=i1, var3412=z3, var3698=z0, var3287=okhttp3.HttpUrl$Companion, var3340=okhttp3.HttpUrl, var1538=$r1, var2554=java.nio.charset.Charset, var2546=java.lang.Object, var389=r2, var1118=$z1, var3351=$z2, var1866=java.util.List, var2675=$r5, var846=$r4, var3853=$i2, var2100=$i3, var3509=$r6, var1055=$r7, var3010=$i4, var1646=$z4, var1673=$r11, var2196=$r10, var2324=$i5, var1829=$i6}
; {okhttp3.HttpUrl$Builder=var298, r3=var2654, r0=var3379, null_type=var641, i0=var2025, i1=var946, z3=var3412, z0=var3698, okhttp3.HttpUrl$Companion=var3287, okhttp3.HttpUrl=var3340, $r1=var1538, java.nio.charset.Charset=var2554, java.lang.Object=var2546, r2=var389, $z1=var1118, $z2=var3351, java.util.List=var1866, $r5=var2675, $r4=var846, $i2=var3853, $i3=var2100, $r6=var3509, $r7=var1055, $i4=var3010, $z4=var1646, $r11=var1673, $r10=var2196, $i5=var2324, $i6=var1829}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r3 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	z3 := @parameter3: boolean;	z0 := @parameter4: boolean;	$r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null);	$z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2);	if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	$z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i2 = interfaceinvoke $r4.<java.util.List: int size()>();	$i3 = $i2 - 1;	$r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3);	$r7 = (java.lang.CharSequence) $r6;	$i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>();	if $i4 != 0 goto $z4 = 0;	$z4 = 0;	if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r11 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r10 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i5 = interfaceinvoke $r10.<java.util.List: int size()>();	$i6 = $i5 - 1;	interfaceinvoke $r11.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i6, r2);	goto [?= (branch)];	if z3 == 0 goto return;	return
;block_num 8
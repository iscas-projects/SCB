(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3945 0)
(declare-sort var3483 0)
(declare-sort var1775 0)
(declare-sort var1175 0)
(declare-sort var1116 0)
(declare-sort var2560 0)
(declare-sort var632 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1775_canonicalize$okhttp$default/-759723081 (var1775 String Int Int String Bool Bool Bool Bool var1116 Int var2560) String)
(declare-fun isDot/-1767506460 (var3945 String) Bool)
(declare-fun isDotDot/1881870359 (var3945 String) Bool)
(declare-fun encodedPathSegments/627676127 (var3945) var632)
(declare-fun var632_size/-959786421 (var632) Int)
(declare-fun var632_get/-1216255739 (var632 Int) var2560)
(declare-fun cast-from-var2560-to-String (var2560) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var632_add/328494887 (var632 var2560) Bool)
(declare-fun cast-from-String-to-var2560 (String) var2560)
(declare-const null-var3945 var3945)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1175-Companion var1775)
(declare-const null-var1116 var1116)
(declare-const null-var2560 var2560)
(declare-const var851 var3945) ; Statement: r3 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var851 null-var3945)))
(declare-const var2385 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2385 null-String)))
(declare-const var1493 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1493 null-Int)))
(declare-const var466 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var466 null-Int)))
(declare-const var46 Bool) ; Statement: z3 := @parameter3: boolean 
(assert (not (= var46 null-Bool)))
(declare-const var460 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var460 null-Bool)))
(define-const var156 var1775 var1175-Companion) ; Statement: $r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var346 String (var1775_canonicalize$okhttp$default/-759723081 var156 var2385 var1493 var466 " \u0022<>^`{}|/\u005c?#" var460 (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) null-var1116 240 null-var2560)) ; Statement: r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null) 
(assert true)
(define-const var2020 Bool (isDot/-1767506460 var851 var346)) ; Statement: $z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2) 
 ; Statement: if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
(assert (= (ite var2020 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1244 Bool (isDotDot/1881870359 var851 var346)) ; Statement: $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
 ; Statement: if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var1244 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1964 var632 (encodedPathSegments/627676127 var851)) ; Statement: $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2581 var632 (encodedPathSegments/627676127 var851)) ; Statement: $r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var904 Int (var632_size/-959786421 var2581)) ; Statement: $i2 = interfaceinvoke $r4.<java.util.List: int size()>() 
(define-const var2735 Int (- var904 1)) ; Statement: $i3 = $i2 - 1 
(define-const var3623 var2560 (var632_get/-1216255739 var1964 var2735)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3) 
(define-const var843 String (cast-from-var2560-to-String var3623)) ; Statement: $r7 = (java.lang.CharSequence) $r6 
(define-const var863 Int (String_length/-667254855 var843)) ; Statement: $i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 != 0 goto $z4 = 0 
(assert (not (not (= var863 0)))) ; Negate: Cond: $i4 != 0  
(define-const var554 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var554 1 0) 0)) ; Cond: $z4 == 0 
(define-const var1559 var632 (encodedPathSegments/627676127 var851)) ; Statement: $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var632_add/328494887 var1559 (cast-from-String-to-var2560 var346))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>(r2) 

(declare-const var1559!1 var632)
(declare-const var346!1 String)
(assert true) ; Non Conditional
 ; Statement: if z3 == 0 goto return 
(assert (not (= (ite var46 1 0) 0))) ; Negate: Cond: z3 == 0  
(define-const var3955 var632 (encodedPathSegments/627676127 var851)) ; Statement: $r9 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var632_add/328494887 var3955 (cast-from-String-to-var2560 ""))) ; Statement: interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>("") 

(declare-const var3955!1 var632)
(declare-const var2454 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1775_canonicalize$okhttp$default/-759723081=([okhttp3.HttpUrl$Companion, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset, int, java.lang.Object], java.lang.String), isDot/-1767506460=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), isDotDot/1881870359=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var632_size/-959786421=([java.util.List], int), var632_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2560-to-String=([java.lang.Object], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var632_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2560=([java.lang.String], java.lang.Object)}
; {var3945=okhttp3.HttpUrl$Builder, var851=r3, var2385=r0, var3483=null_type, var1493=i0, var466=i1, var46=z3, var460=z0, var1775=okhttp3.HttpUrl$Companion, var1175=okhttp3.HttpUrl, var156=$r1, var1116=java.nio.charset.Charset, var2560=java.lang.Object, var346=r2, var2020=$z1, var1244=$z2, var632=java.util.List, var1964=$r5, var2581=$r4, var904=$i2, var2735=$i3, var3623=$r6, var843=$r7, var863=$i4, var554=$z4, var1559=$r8, var3955=$r9, var2454=""}
; {okhttp3.HttpUrl$Builder=var3945, r3=var851, r0=var2385, null_type=var3483, i0=var1493, i1=var466, z3=var46, z0=var460, okhttp3.HttpUrl$Companion=var1775, okhttp3.HttpUrl=var1175, $r1=var156, java.nio.charset.Charset=var1116, java.lang.Object=var2560, r2=var346, $z1=var2020, $z2=var1244, java.util.List=var632, $r5=var1964, $r4=var2581, $i2=var904, $i3=var2735, $r6=var3623, $r7=var843, $i4=var863, $z4=var554, $r8=var1559, $r9=var3955, ""=var2454}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r3 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	z3 := @parameter3: boolean;	z0 := @parameter4: boolean;	$r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null);	$z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2);	if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	$z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i2 = interfaceinvoke $r4.<java.util.List: int size()>();	$i3 = $i2 - 1;	$r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3);	$r7 = (java.lang.CharSequence) $r6;	$i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>();	if $i4 != 0 goto $z4 = 0;	$z4 = 1;	goto [?= (branch)];	if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>(r2);	if z3 == 0 goto return;	$r9 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>("");	return
;block_num 9
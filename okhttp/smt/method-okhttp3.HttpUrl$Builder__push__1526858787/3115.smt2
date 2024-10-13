(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var232 0)
(declare-sort var583 0)
(declare-sort var879 0)
(declare-sort var3166 0)
(declare-sort var2012 0)
(declare-sort var3210 0)
(declare-sort var2963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var879_canonicalize$okhttp$default/-759723081 (var879 String Int Int String Bool Bool Bool Bool var2012 Int var3210) String)
(declare-fun isDot/-1767506460 (var232 String) Bool)
(declare-fun isDotDot/1881870359 (var232 String) Bool)
(declare-fun encodedPathSegments/627676127 (var232) var2963)
(declare-fun var2963_size/-959786421 (var2963) Int)
(declare-fun var2963_get/-1216255739 (var2963 Int) var3210)
(declare-fun cast-from-var3210-to-String (var3210) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var2963_set/-1241329960 (var2963 Int var3210) var3210)
(declare-fun cast-from-String-to-var3210 (String) var3210)
(declare-fun var2963_add/328494887 (var2963 var3210) Bool)
(declare-const null-var232 var232)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3166-Companion var879)
(declare-const null-var2012 var2012)
(declare-const null-var3210 var3210)
(declare-const var331 var232) ; Statement: r3 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var331 null-var232)))
(declare-const var3721 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3721 null-String)))
(declare-const var1241 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1241 null-Int)))
(declare-const var1024 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1024 null-Int)))
(declare-const var701 Bool) ; Statement: z3 := @parameter3: boolean 
(assert (not (= var701 null-Bool)))
(declare-const var1394 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var1394 null-Bool)))
(define-const var535 var879 var3166-Companion) ; Statement: $r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var3046 String (var879_canonicalize$okhttp$default/-759723081 var535 var3721 var1241 var1024 " \u0022<>^`{}|/\u005c?#" var1394 (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) null-var2012 240 null-var3210)) ; Statement: r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null) 
(assert true)
(define-const var1799 Bool (isDot/-1767506460 var331 var3046)) ; Statement: $z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2) 
 ; Statement: if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
(assert (= (ite var1799 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3839 Bool (isDotDot/1881870359 var331 var3046)) ; Statement: $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
 ; Statement: if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var3839 1 0) 0)) ; Cond: $z2 == 0 
(define-const var691 var2963 (encodedPathSegments/627676127 var331)) ; Statement: $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var397 var2963 (encodedPathSegments/627676127 var331)) ; Statement: $r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var1005 Int (var2963_size/-959786421 var397)) ; Statement: $i2 = interfaceinvoke $r4.<java.util.List: int size()>() 
(define-const var3744 Int (- var1005 1)) ; Statement: $i3 = $i2 - 1 
(define-const var3519 var3210 (var2963_get/-1216255739 var691 var3744)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3) 
(define-const var440 String (cast-from-var3210-to-String var3519)) ; Statement: $r7 = (java.lang.CharSequence) $r6 
(define-const var3883 Int (String_length/-667254855 var440)) ; Statement: $i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 != 0 goto $z4 = 0 
(assert (not (= var3883 0))) ; Cond: $i4 != 0 
(define-const var3808 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var3808 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var488 var2963 (encodedPathSegments/627676127 var331)) ; Statement: $r11 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var1498 var2963 (encodedPathSegments/627676127 var331)) ; Statement: $r10 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3994 Int (var2963_size/-959786421 var1498)) ; Statement: $i5 = interfaceinvoke $r10.<java.util.List: int size()>() 
(define-const var1760 Int (- var3994 1)) ; Statement: $i6 = $i5 - 1 
;(assert (var2963_set/-1241329960 var488 var1760 (cast-from-String-to-var3210 var3046))) ; Statement: interfaceinvoke $r11.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i6, r2) 

(declare-const var488!1 var2963)
(declare-const var1760!1 Int)
(declare-const var3046!1 String)
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z3 == 0 goto return 
(assert (not (= (ite var701 1 0) 0))) ; Negate: Cond: z3 == 0  
(define-const var578 var2963 (encodedPathSegments/627676127 var331)) ; Statement: $r9 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var2963_add/328494887 var578 (cast-from-String-to-var3210 ""))) ; Statement: interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>("") 

(declare-const var578!1 var2963)
(declare-const var3295 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var879_canonicalize$okhttp$default/-759723081=([okhttp3.HttpUrl$Companion, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset, int, java.lang.Object], java.lang.String), isDot/-1767506460=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), isDotDot/1881870359=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var2963_size/-959786421=([java.util.List], int), var2963_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var3210-to-String=([java.lang.Object], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var2963_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-String-to-var3210=([java.lang.String], java.lang.Object), var2963_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var232=okhttp3.HttpUrl$Builder, var331=r3, var3721=r0, var583=null_type, var1241=i0, var1024=i1, var701=z3, var1394=z0, var879=okhttp3.HttpUrl$Companion, var3166=okhttp3.HttpUrl, var535=$r1, var2012=java.nio.charset.Charset, var3210=java.lang.Object, var3046=r2, var1799=$z1, var3839=$z2, var2963=java.util.List, var691=$r5, var397=$r4, var1005=$i2, var3744=$i3, var3519=$r6, var440=$r7, var3883=$i4, var3808=$z4, var488=$r11, var1498=$r10, var3994=$i5, var1760=$i6, var578=$r9, var3295=""}
; {okhttp3.HttpUrl$Builder=var232, r3=var331, r0=var3721, null_type=var583, i0=var1241, i1=var1024, z3=var701, z0=var1394, okhttp3.HttpUrl$Companion=var879, okhttp3.HttpUrl=var3166, $r1=var535, java.nio.charset.Charset=var2012, java.lang.Object=var3210, r2=var3046, $z1=var1799, $z2=var3839, java.util.List=var2963, $r5=var691, $r4=var397, $i2=var1005, $i3=var3744, $r6=var3519, $r7=var440, $i4=var3883, $z4=var3808, $r11=var488, $r10=var1498, $i5=var3994, $i6=var1760, $r9=var578, ""=var3295}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r3 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	z3 := @parameter3: boolean;	z0 := @parameter4: boolean;	$r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null);	$z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2);	if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	$z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i2 = interfaceinvoke $r4.<java.util.List: int size()>();	$i3 = $i2 - 1;	$r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3);	$r7 = (java.lang.CharSequence) $r6;	$i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>();	if $i4 != 0 goto $z4 = 0;	$z4 = 0;	if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r11 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r10 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i5 = interfaceinvoke $r10.<java.util.List: int size()>();	$i6 = $i5 - 1;	interfaceinvoke $r11.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i6, r2);	goto [?= (branch)];	if z3 == 0 goto return;	$r9 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>("");	return
;block_num 9
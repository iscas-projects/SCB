(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var502 0)
(declare-sort var28 0)
(declare-sort var3658 0)
(declare-sort var68 0)
(declare-sort var1410 0)
(declare-sort var1061 0)
(declare-sort var74 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3658_canonicalize$okhttp$default/-759723081 (var3658 String Int Int String Bool Bool Bool Bool var1410 Int var1061) String)
(declare-fun isDot/-1767506460 (var502 String) Bool)
(declare-fun isDotDot/1881870359 (var502 String) Bool)
(declare-fun encodedPathSegments/627676127 (var502) var74)
(declare-fun var74_size/-959786421 (var74) Int)
(declare-fun var74_get/-1216255739 (var74 Int) var1061)
(declare-fun cast-from-var1061-to-String (var1061) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var74_set/-1241329960 (var74 Int var1061) var1061)
(declare-fun cast-from-String-to-var1061 (String) var1061)
(declare-fun var74_add/328494887 (var74 var1061) Bool)
(declare-const null-var502 var502)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var68-Companion var3658)
(declare-const null-var1410 var1410)
(declare-const null-var1061 var1061)
(declare-const var3076 var502) ; Statement: r3 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var3076 null-var502)))
(declare-const var3001 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3001 null-String)))
(declare-const var3541 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3541 null-Int)))
(declare-const var1742 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1742 null-Int)))
(declare-const var2834 Bool) ; Statement: z3 := @parameter3: boolean 
(assert (not (= var2834 null-Bool)))
(declare-const var484 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var484 null-Bool)))
(define-const var1400 var3658 var68-Companion) ; Statement: $r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var745 String (var3658_canonicalize$okhttp$default/-759723081 var1400 var3001 var3541 var1742 " \u0022<>^`{}|/\u005c?#" var484 (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) null-var1410 240 null-var1061)) ; Statement: r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null) 
(assert true)
(define-const var1339 Bool (isDot/-1767506460 var3076 var745)) ; Statement: $z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2) 
 ; Statement: if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
(assert (= (ite var1339 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1863 Bool (isDotDot/1881870359 var3076 var745)) ; Statement: $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
 ; Statement: if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var1863 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2106 var74 (encodedPathSegments/627676127 var3076)) ; Statement: $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var3698 var74 (encodedPathSegments/627676127 var3076)) ; Statement: $r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var742 Int (var74_size/-959786421 var3698)) ; Statement: $i2 = interfaceinvoke $r4.<java.util.List: int size()>() 
(define-const var1236 Int (- var742 1)) ; Statement: $i3 = $i2 - 1 
(define-const var2784 var1061 (var74_get/-1216255739 var2106 var1236)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3) 
(define-const var2304 String (cast-from-var1061-to-String var2784)) ; Statement: $r7 = (java.lang.CharSequence) $r6 
(define-const var3238 Int (String_length/-667254855 var2304)) ; Statement: $i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 != 0 goto $z4 = 0 
(assert (not (not (= var3238 0)))) ; Negate: Cond: $i4 != 0  
(define-const var3386 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var3386 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var501 var74 (encodedPathSegments/627676127 var3076)) ; Statement: $r11 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var978 var74 (encodedPathSegments/627676127 var3076)) ; Statement: $r10 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var165 Int (var74_size/-959786421 var978)) ; Statement: $i5 = interfaceinvoke $r10.<java.util.List: int size()>() 
(define-const var1069 Int (- var165 1)) ; Statement: $i6 = $i5 - 1 
;(assert (var74_set/-1241329960 var501 var1069 (cast-from-String-to-var1061 var745))) ; Statement: interfaceinvoke $r11.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i6, r2) 

(declare-const var501!1 var74)
(declare-const var1069!1 Int)
(declare-const var745!1 String)
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z3 == 0 goto return 
(assert (not (= (ite var2834 1 0) 0))) ; Negate: Cond: z3 == 0  
(define-const var3235 var74 (encodedPathSegments/627676127 var3076)) ; Statement: $r9 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var74_add/328494887 var3235 (cast-from-String-to-var1061 ""))) ; Statement: interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>("") 

(declare-const var3235!1 var74)
(declare-const var1565 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3658_canonicalize$okhttp$default/-759723081=([okhttp3.HttpUrl$Companion, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset, int, java.lang.Object], java.lang.String), isDot/-1767506460=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), isDotDot/1881870359=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var74_size/-959786421=([java.util.List], int), var74_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1061-to-String=([java.lang.Object], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var74_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-String-to-var1061=([java.lang.String], java.lang.Object), var74_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var502=okhttp3.HttpUrl$Builder, var3076=r3, var3001=r0, var28=null_type, var3541=i0, var1742=i1, var2834=z3, var484=z0, var3658=okhttp3.HttpUrl$Companion, var68=okhttp3.HttpUrl, var1400=$r1, var1410=java.nio.charset.Charset, var1061=java.lang.Object, var745=r2, var1339=$z1, var1863=$z2, var74=java.util.List, var2106=$r5, var3698=$r4, var742=$i2, var1236=$i3, var2784=$r6, var2304=$r7, var3238=$i4, var3386=$z4, var501=$r11, var978=$r10, var165=$i5, var1069=$i6, var3235=$r9, var1565=""}
; {okhttp3.HttpUrl$Builder=var502, r3=var3076, r0=var3001, null_type=var28, i0=var3541, i1=var1742, z3=var2834, z0=var484, okhttp3.HttpUrl$Companion=var3658, okhttp3.HttpUrl=var68, $r1=var1400, java.nio.charset.Charset=var1410, java.lang.Object=var1061, r2=var745, $z1=var1339, $z2=var1863, java.util.List=var74, $r5=var2106, $r4=var3698, $i2=var742, $i3=var1236, $r6=var2784, $r7=var2304, $i4=var3238, $z4=var3386, $r11=var501, $r10=var978, $i5=var165, $i6=var1069, $r9=var3235, ""=var1565}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r3 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	z3 := @parameter3: boolean;	z0 := @parameter4: boolean;	$r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null);	$z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2);	if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	$z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i2 = interfaceinvoke $r4.<java.util.List: int size()>();	$i3 = $i2 - 1;	$r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3);	$r7 = (java.lang.CharSequence) $r6;	$i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>();	if $i4 != 0 goto $z4 = 0;	$z4 = 1;	goto [?= (branch)];	if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r11 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r10 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i5 = interfaceinvoke $r10.<java.util.List: int size()>();	$i6 = $i5 - 1;	interfaceinvoke $r11.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i6, r2);	goto [?= (branch)];	if z3 == 0 goto return;	$r9 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>("");	return
;block_num 9
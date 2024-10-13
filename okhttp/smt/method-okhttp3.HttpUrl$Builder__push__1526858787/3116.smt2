(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1131 0)
(declare-sort var3143 0)
(declare-sort var301 0)
(declare-sort var3904 0)
(declare-sort var1857 0)
(declare-sort var516 0)
(declare-sort var3896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var301_canonicalize$okhttp$default/-759723081 (var301 String Int Int String Bool Bool Bool Bool var1857 Int var516) String)
(declare-fun isDot/-1767506460 (var1131 String) Bool)
(declare-fun isDotDot/1881870359 (var1131 String) Bool)
(declare-fun encodedPathSegments/627676127 (var1131) var3896)
(declare-fun var3896_size/-959786421 (var3896) Int)
(declare-fun var3896_get/-1216255739 (var3896 Int) var516)
(declare-fun cast-from-var516-to-String (var516) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3896_add/328494887 (var3896 var516) Bool)
(declare-fun cast-from-String-to-var516 (String) var516)
(declare-const null-var1131 var1131)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3904-Companion var301)
(declare-const null-var1857 var1857)
(declare-const null-var516 var516)
(declare-const var2712 var1131) ; Statement: r3 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2712 null-var1131)))
(declare-const var3510 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3510 null-String)))
(declare-const var236 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var236 null-Int)))
(declare-const var2732 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2732 null-Int)))
(declare-const var2841 Bool) ; Statement: z3 := @parameter3: boolean 
(assert (not (= var2841 null-Bool)))
(declare-const var2785 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var2785 null-Bool)))
(define-const var3913 var301 var3904-Companion) ; Statement: $r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var3830 String (var301_canonicalize$okhttp$default/-759723081 var3913 var3510 var236 var2732 " \u0022<>^`{}|/\u005c?#" var2785 (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) null-var1857 240 null-var516)) ; Statement: r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null) 
(assert true)
(define-const var3633 Bool (isDot/-1767506460 var2712 var3830)) ; Statement: $z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2) 
 ; Statement: if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
(assert (= (ite var3633 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2747 Bool (isDotDot/1881870359 var2712 var3830)) ; Statement: $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2) 
 ; Statement: if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var2747 1 0) 0)) ; Cond: $z2 == 0 
(define-const var143 var3896 (encodedPathSegments/627676127 var2712)) ; Statement: $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var1612 var3896 (encodedPathSegments/627676127 var2712)) ; Statement: $r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2459 Int (var3896_size/-959786421 var1612)) ; Statement: $i2 = interfaceinvoke $r4.<java.util.List: int size()>() 
(define-const var1793 Int (- var2459 1)) ; Statement: $i3 = $i2 - 1 
(define-const var391 var516 (var3896_get/-1216255739 var143 var1793)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3) 
(define-const var958 String (cast-from-var516-to-String var391)) ; Statement: $r7 = (java.lang.CharSequence) $r6 
(define-const var887 Int (String_length/-667254855 var958)) ; Statement: $i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 != 0 goto $z4 = 0 
(assert (not (= var887 0))) ; Cond: $i4 != 0 
(define-const var1969 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= (ite var1969 1 0) 0)) ; Cond: $z4 == 0 
(define-const var2601 var3896 (encodedPathSegments/627676127 var2712)) ; Statement: $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var3896_add/328494887 var2601 (cast-from-String-to-var516 var3830))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>(r2) 

(declare-const var2601!1 var3896)
(declare-const var3830!1 String)
(assert true) ; Non Conditional
 ; Statement: if z3 == 0 goto return 
(assert (not (= (ite var2841 1 0) 0))) ; Negate: Cond: z3 == 0  
(define-const var3848 var3896 (encodedPathSegments/627676127 var2712)) ; Statement: $r9 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var3896_add/328494887 var3848 (cast-from-String-to-var516 ""))) ; Statement: interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>("") 

(declare-const var3848!1 var3896)
(declare-const var3989 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var301_canonicalize$okhttp$default/-759723081=([okhttp3.HttpUrl$Companion, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset, int, java.lang.Object], java.lang.String), isDot/-1767506460=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), isDotDot/1881870359=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var3896_size/-959786421=([java.util.List], int), var3896_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var516-to-String=([java.lang.Object], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var3896_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var516=([java.lang.String], java.lang.Object)}
; {var1131=okhttp3.HttpUrl$Builder, var2712=r3, var3510=r0, var3143=null_type, var236=i0, var2732=i1, var2841=z3, var2785=z0, var301=okhttp3.HttpUrl$Companion, var3904=okhttp3.HttpUrl, var3913=$r1, var1857=java.nio.charset.Charset, var516=java.lang.Object, var3830=r2, var3633=$z1, var2747=$z2, var3896=java.util.List, var143=$r5, var1612=$r4, var2459=$i2, var1793=$i3, var391=$r6, var958=$r7, var887=$i4, var1969=$z4, var2601=$r8, var3848=$r9, var3989=""}
; {okhttp3.HttpUrl$Builder=var1131, r3=var2712, r0=var3510, null_type=var3143, i0=var236, i1=var2732, z3=var2841, z0=var2785, okhttp3.HttpUrl$Companion=var301, okhttp3.HttpUrl=var3904, $r1=var3913, java.nio.charset.Charset=var1857, java.lang.Object=var516, r2=var3830, $z1=var3633, $z2=var2747, java.util.List=var3896, $r5=var143, $r4=var1612, $i2=var2459, $i3=var1793, $r6=var391, $r7=var958, $i4=var887, $z4=var1969, $r8=var2601, $r9=var3848, ""=var3989}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r3 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	z3 := @parameter3: boolean;	z0 := @parameter4: boolean;	$r1 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	r2 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r1, r0, i0, i1, " \"<>^`{}|/\\?#", z0, 0, 0, 0, null, 240, null);	$z1 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r2);	if $z1 == 0 goto $z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	$z2 = specialinvoke r3.<okhttp3.HttpUrl$Builder: boolean isDotDot(java.lang.String)>(r2);	if $z2 == 0 goto $r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r5 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r4 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i2 = interfaceinvoke $r4.<java.util.List: int size()>();	$i3 = $i2 - 1;	$r6 = interfaceinvoke $r5.<java.util.List: java.lang.Object get(int)>($i3);	$r7 = (java.lang.CharSequence) $r6;	$i4 = interfaceinvoke $r7.<java.lang.CharSequence: int length()>();	if $i4 != 0 goto $z4 = 0;	$z4 = 0;	if $z4 == 0 goto $r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r8 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>(r2);	if z3 == 0 goto return;	$r9 = r3.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>("");	return
;block_num 9
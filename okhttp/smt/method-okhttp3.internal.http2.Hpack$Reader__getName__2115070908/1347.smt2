(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1454 0)
(declare-sort var2292 0)
(declare-sort var523 0)
(declare-sort var1010 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isStaticHeader/-1100190273 (var1454 Int) Bool)
(declare-fun getSTATIC_HEADER_TABLE/1526259102 (var2292) (Array Int var523))
(declare-fun getLength-Arr-var523-1 ((Array Int var523)) Int)
(declare-fun dynamicTableIndex/84093928 (var1454 Int) Int)
(declare-fun var1010-init () var1010)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1010 String) void)
(declare-const null-var1454 var1454)
(declare-const null-Int Int)
(declare-const var2292-INSTANCE var2292)
(declare-const var1101 var1454) ; Statement: r0 := @this: okhttp3.internal.http2.Hpack$Reader 
(assert (not (= var1101 null-var1454)))
(declare-const var3007 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3007 null-Int)))
(assert true)
(define-const var3847 Bool (isStaticHeader/-1100190273 var1101 var3007)) ; Statement: $z0 = specialinvoke r0.<okhttp3.internal.http2.Hpack$Reader: boolean isStaticHeader(int)>(i0) 
 ; Statement: if $z0 == 0 goto $r1 = <okhttp3.internal.http2.Hpack: okhttp3.internal.http2.Hpack INSTANCE> 
(assert (= (ite var3847 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2459 var2292 var2292-INSTANCE) ; Statement: $r1 = <okhttp3.internal.http2.Hpack: okhttp3.internal.http2.Hpack INSTANCE> 
(assert true)
(define-const var1003 (Array Int var523) (getSTATIC_HEADER_TABLE/1526259102 var2459)) ; Statement: $r2 = virtualinvoke $r1.<okhttp3.internal.http2.Hpack: okhttp3.internal.http2.Header[] getSTATIC_HEADER_TABLE()>() 
(define-const var3517 Int (getLength-Arr-var523-1 var1003)) ; Statement: $i1 = lengthof $r2 
(define-const var1232 Int (- var3007 var3517)) ; Statement: $i2 = i0 - $i1 
(assert true)
(define-const var403 Int (dynamicTableIndex/84093928 var1101 var1232)) ; Statement: i3 = specialinvoke r0.<okhttp3.internal.http2.Hpack$Reader: int dynamicTableIndex(int)>($i2) 
 ; Statement: if i3 < 0 goto $r3 = new java.io.IOException 
(assert (< var403 0)) ; Cond: i3 < 0 
(define-const var161 var1010 var1010-init) ; Statement: $r3 = new java.io.IOException 
(define-const var1532 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1532)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1532!1 String)
(assert (= var1532!1 ""))
(assert true)
(define-const var2592 String (append/672562846 var1532!1 "Header index too large ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Header index too large ") 
(declare-const var1532!2 String)
(assert (= var1532!2 (str.++ var1532!1 "Header index too large ")))
(define-const var613 Int (+ var3007 1)) ; Statement: $i4 = i0 + 1 
(assert true)
(define-const var3963 String (append/-1001720160 var2592 var613)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var2592!1 String)
(assert (str.prefixof var2592 var2592!1))
(assert true)
(define-const var3535 String (toString/-2075883882 var3963)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var161 var3535)) ; Statement: specialinvoke $r3.<java.io.IOException: void <init>(java.lang.String)>($r7) 

(declare-const var161!1 var1010)
(declare-const var3535!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isStaticHeader/-1100190273=([okhttp3.internal.http2.Hpack$Reader, int], boolean), getSTATIC_HEADER_TABLE/1526259102=([okhttp3.internal.http2.Hpack], okhttp3.internal.http2.Header[]), getLength-Arr-var523-1=([okhttp3.internal.http2.Header[]], int), dynamicTableIndex/84093928=([okhttp3.internal.http2.Hpack$Reader, int], int), var1010-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1454=okhttp3.internal.http2.Hpack$Reader, var1101=r0, var3007=i0, var3847=$z0, var2292=okhttp3.internal.http2.Hpack, var2459=$r1, var523=okhttp3.internal.http2.Header, var1003=$r2, var3517=$i1, var1232=$i2, var403=i3, var1010=java.io.IOException, var161=$r3, var1532=$r4, var2592=$r5, var613=$i4, var3963=$r6, var3535=$r7}
; {okhttp3.internal.http2.Hpack$Reader=var1454, r0=var1101, i0=var3007, $z0=var3847, okhttp3.internal.http2.Hpack=var2292, $r1=var2459, okhttp3.internal.http2.Header=var523, $r2=var1003, $i1=var3517, $i2=var1232, i3=var403, java.io.IOException=var1010, $r3=var161, $r4=var1532, $r5=var2592, $i4=var613, $r6=var3963, $r7=var3535}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Hpack$Reader;	i0 := @parameter0: int;	$z0 = specialinvoke r0.<okhttp3.internal.http2.Hpack$Reader: boolean isStaticHeader(int)>(i0);	if $z0 == 0 goto $r1 = <okhttp3.internal.http2.Hpack: okhttp3.internal.http2.Hpack INSTANCE>;	$r1 = <okhttp3.internal.http2.Hpack: okhttp3.internal.http2.Hpack INSTANCE>;	$r2 = virtualinvoke $r1.<okhttp3.internal.http2.Hpack: okhttp3.internal.http2.Header[] getSTATIC_HEADER_TABLE()>();	$i1 = lengthof $r2;	$i2 = i0 - $i1;	i3 = specialinvoke r0.<okhttp3.internal.http2.Hpack$Reader: int dynamicTableIndex(int)>($i2);	if i3 < 0 goto $r3 = new java.io.IOException;	$r3 = new java.io.IOException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Header index too large ");	$i4 = i0 + 1;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.io.IOException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 3
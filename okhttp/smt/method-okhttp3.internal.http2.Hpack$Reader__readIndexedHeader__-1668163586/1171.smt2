(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1579 0)
(declare-sort var965 0)
(declare-sort var3521 0)
(declare-sort var2477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isStaticHeader/-1100190273 (var1579 Int) Bool)
(declare-fun getSTATIC_HEADER_TABLE/1526259102 (var965) (Array Int var3521))
(declare-fun getLength-Arr-var3521-1 ((Array Int var3521)) Int)
(declare-fun dynamicTableIndex/84093928 (var1579 Int) Int)
(declare-fun var2477-init () var2477)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2477 String) void)
(declare-const null-var1579 var1579)
(declare-const null-Int Int)
(declare-const var965-INSTANCE var965)
(declare-const var1033 var1579) ; Statement: r0 := @this: okhttp3.internal.http2.Hpack$Reader 
(assert (not (= var1033 null-var1579)))
(declare-const var1483 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1483 null-Int)))
(assert true)
(define-const var377 Bool (isStaticHeader/-1100190273 var1033 var1483)) ; Statement: $z0 = specialinvoke r0.<okhttp3.internal.http2.Hpack$Reader: boolean isStaticHeader(int)>(i0) 
 ; Statement: if $z0 == 0 goto $r1 = <okhttp3.internal.http2.Hpack: okhttp3.internal.http2.Hpack INSTANCE> 
(assert (= (ite var377 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3584 var965 var965-INSTANCE) ; Statement: $r1 = <okhttp3.internal.http2.Hpack: okhttp3.internal.http2.Hpack INSTANCE> 
(assert true)
(define-const var3298 (Array Int var3521) (getSTATIC_HEADER_TABLE/1526259102 var3584)) ; Statement: $r2 = virtualinvoke $r1.<okhttp3.internal.http2.Hpack: okhttp3.internal.http2.Header[] getSTATIC_HEADER_TABLE()>() 
(define-const var1689 Int (getLength-Arr-var3521-1 var3298)) ; Statement: $i1 = lengthof $r2 
(define-const var1249 Int (- var1483 var1689)) ; Statement: $i2 = i0 - $i1 
(assert true)
(define-const var3879 Int (dynamicTableIndex/84093928 var1033 var1249)) ; Statement: i5 = specialinvoke r0.<okhttp3.internal.http2.Hpack$Reader: int dynamicTableIndex(int)>($i2) 
 ; Statement: if i5 < 0 goto $r3 = new java.io.IOException 
(assert (< var3879 0)) ; Cond: i5 < 0 
(define-const var177 var2477 var2477-init) ; Statement: $r3 = new java.io.IOException 
(define-const var1234 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1234)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1234!1 String)
(assert (= var1234!1 ""))
(assert true)
(define-const var2289 String (append/672562846 var1234!1 "Header index too large ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Header index too large ") 
(declare-const var1234!2 String)
(assert (= var1234!2 (str.++ var1234!1 "Header index too large ")))
(define-const var329 Int (+ var1483 1)) ; Statement: $i3 = i0 + 1 
(assert true)
(define-const var3107 String (append/-1001720160 var2289 var329)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2289!1 String)
(assert (str.prefixof var2289 var2289!1))
(assert true)
(define-const var3772 String (toString/-2075883882 var3107)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var177 var3772)) ; Statement: specialinvoke $r3.<java.io.IOException: void <init>(java.lang.String)>($r7) 

(declare-const var177!1 var2477)
(declare-const var3772!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isStaticHeader/-1100190273=([okhttp3.internal.http2.Hpack$Reader, int], boolean), getSTATIC_HEADER_TABLE/1526259102=([okhttp3.internal.http2.Hpack], okhttp3.internal.http2.Header[]), getLength-Arr-var3521-1=([okhttp3.internal.http2.Header[]], int), dynamicTableIndex/84093928=([okhttp3.internal.http2.Hpack$Reader, int], int), var2477-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1579=okhttp3.internal.http2.Hpack$Reader, var1033=r0, var1483=i0, var377=$z0, var965=okhttp3.internal.http2.Hpack, var3584=$r1, var3521=okhttp3.internal.http2.Header, var3298=$r2, var1689=$i1, var1249=$i2, var3879=i5, var2477=java.io.IOException, var177=$r3, var1234=$r4, var2289=$r5, var329=$i3, var3107=$r6, var3772=$r7}
; {okhttp3.internal.http2.Hpack$Reader=var1579, r0=var1033, i0=var1483, $z0=var377, okhttp3.internal.http2.Hpack=var965, $r1=var3584, okhttp3.internal.http2.Header=var3521, $r2=var3298, $i1=var1689, $i2=var1249, i5=var3879, java.io.IOException=var2477, $r3=var177, $r4=var1234, $r5=var2289, $i3=var329, $r6=var3107, $r7=var3772}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Hpack$Reader;	i0 := @parameter0: int;	$z0 = specialinvoke r0.<okhttp3.internal.http2.Hpack$Reader: boolean isStaticHeader(int)>(i0);	if $z0 == 0 goto $r1 = <okhttp3.internal.http2.Hpack: okhttp3.internal.http2.Hpack INSTANCE>;	$r1 = <okhttp3.internal.http2.Hpack: okhttp3.internal.http2.Hpack INSTANCE>;	$r2 = virtualinvoke $r1.<okhttp3.internal.http2.Hpack: okhttp3.internal.http2.Header[] getSTATIC_HEADER_TABLE()>();	$i1 = lengthof $r2;	$i2 = i0 - $i1;	i5 = specialinvoke r0.<okhttp3.internal.http2.Hpack$Reader: int dynamicTableIndex(int)>($i2);	if i5 < 0 goto $r3 = new java.io.IOException;	$r3 = new java.io.IOException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Header index too large ");	$i3 = i0 + 1;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.io.IOException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2521 0)
(declare-sort var2565 0)
(declare-sort var3616 0)
(declare-sort var1429 0)
(declare-sort var959 0)
(declare-sort var2168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun url/-122403576 (var2521) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun scheme/-122403576 (var2521) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2565_indexOf$default/-213079313 (String Int Int Bool Int var3616) Int)
(declare-fun var1429_delimiterOffset/1183305642 (String String Int Int) Int)
(declare-fun var959-init () var959)
(declare-fun <init>/-325640736 (var959) void)
(declare-fun cast-from-var959-to-var2168 (var959) var2168)
(declare-const null-var2521 var2521)
(declare-const null-var3616 var3616)
(declare-const var2303 var2521) ; Statement: r0 := @this: okhttp3.HttpUrl 
(assert (not (= var2303 null-var2521)))
(define-const var1445 String (url/-122403576 var2303)) ; Statement: $r1 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(define-const var3744 String (cast-from-String-to-String var1445)) ; Statement: $r3 = (java.lang.CharSequence) $r1 
(define-const var1123 String (scheme/-122403576 var2303)) ; Statement: $r2 = r0.<okhttp3.HttpUrl: java.lang.String scheme> 
(assert true)
(define-const var3841 Int (length/-134980193 var1123)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var665 Int (+ var3841 3)) ; Statement: $i1 = $i0 + 3 
(define-const var773 Int (var2565_indexOf$default/-213079313 var3744 47 var665 (ite (= 1 0) true false) 4 null-var3616)) ; Statement: i2 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 47, $i1, 0, 4, null) 
(define-const var1883 String (url/-122403576 var2303)) ; Statement: $r5 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(define-const var3008 String (url/-122403576 var2303)) ; Statement: $r4 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert true)
(define-const var966 Int (length/-134980193 var3008)) ; Statement: $i3 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var2172 Int (var1429_delimiterOffset/1183305642 var1883 "?#" var773 var966)) ; Statement: i4 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>($r5, "?#", i2, $i3) 
(define-const var942 var959 var959-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var942)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var942!1 var959)
(define-const var1560 var2168 (cast-from-var959-to-var2168 var942!1)) ; Statement: r7 = (java.util.List) $r6 
(define-const var712 Int var773) ; Statement: i6 = i2 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i4 goto return r7 
(assert (>= var712 var2172)) ; Cond: i6 >= i4 
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {url/-122403576=([okhttp3.HttpUrl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), scheme/-122403576=([okhttp3.HttpUrl], java.lang.String), length/-134980193=([java.lang.String], int), var2565_indexOf$default/-213079313=([java.lang.CharSequence, char, int, boolean, int, java.lang.Object], int), var1429_delimiterOffset/1183305642=([java.lang.String, java.lang.String, int, int], int), var959-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var959-to-var2168=([java.util.ArrayList], java.util.List)}
; {var2521=okhttp3.HttpUrl, var2303=r0, var1445=$r1, var3744=$r3, var1123=$r2, var3841=$i0, var665=$i1, var2565=kotlin.text.StringsKt, var3616=java.lang.Object, var773=i2, var1883=$r5, var3008=$r4, var966=$i3, var1429=okhttp3.internal.Util, var2172=i4, var959=java.util.ArrayList, var942=$r6, var2168=java.util.List, var1560=r7, var712=i6}
; {okhttp3.HttpUrl=var2521, r0=var2303, $r1=var1445, $r3=var3744, $r2=var1123, $i0=var3841, $i1=var665, kotlin.text.StringsKt=var2565, java.lang.Object=var3616, i2=var773, $r5=var1883, $r4=var3008, $i3=var966, okhttp3.internal.Util=var1429, i4=var2172, java.util.ArrayList=var959, $r6=var942, java.util.List=var2168, r7=var1560, i6=var712}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: okhttp3.HttpUrl;	$r1 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r3 = (java.lang.CharSequence) $r1;	$r2 = r0.<okhttp3.HttpUrl: java.lang.String scheme>;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$i1 = $i0 + 3;	i2 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 47, $i1, 0, 4, null);	$r5 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r4 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$i3 = virtualinvoke $r4.<java.lang.String: int length()>();	i4 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>($r5, "?#", i2, $i3);	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	r7 = (java.util.List) $r6;	i6 = i2;	if i6 >= i4 goto return r7;	return r7
;block_num 3
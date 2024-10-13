(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1540 0)
(declare-sort var3999 0)
(declare-sort var2045 0)
(declare-sort var2993 0)
(declare-sort var1882 0)
(declare-sort var2747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2045_size/-959786421 (var2045) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3999_getFileName/567905596 (var3999) var3999)
(declare-fun var3999_toString/1790204457 (var3999) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun subSequence/-355200942 (String Int Int) String)
(declare-fun append/-1031950772 (String var2993) String)
(declare-fun cast-from-String-to-var2993 (String) var2993)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var2993-init () (Array Int var2993))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2993 (Int) var2993)
(declare-fun String_format/1339386452 (String (Array Int var2993)) String)
(declare-fun var2747-init () var2747)
(declare-fun <init>/184329998 (var2747 String) void)
(declare-const null-var1540 var1540)
(declare-const null-var3999 var3999)
(declare-const null-var2045 var2045)
(declare-const null-__Array__Int__var2993__ (Array Int var2993))
(declare-const null-var1882 var1882)
(declare-const var1951 var1540) ; Statement: r18 := @this: jdk.jfr.internal.tool.Disassemble 
(assert (not (= var1951 null-var1540)))
(declare-const var2811 var3999) ; Statement: r23 := @parameter0: java.nio.file.Path 
(assert (not (= var2811 null-var3999)))
(declare-const var774 var3999) ; Statement: r2 := @parameter1: java.nio.file.Path 
(assert (not (= var774 null-var3999)))
(declare-const var578 var2045) ; Statement: r0 := @parameter2: java.util.List 
(assert (not (= var578 null-var2045)))
(define-const var2573 Int (var2045_size/-959786421 var578)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var897 Int (- var2573 1)) ; Statement: $i1 = $i0 - 1 
(define-const var1105 String (String_valueOf/1240665136 var897)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1) 
(assert true)
(define-const var1379 Int (length/-134980193 var1105)) ; Statement: i2 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var3945 var3999 (var3999_getFileName/567905596 var774)) ; Statement: $r3 = interfaceinvoke r2.<java.nio.file.Path: java.nio.file.Path getFileName()>() 
(define-const var2797 String (var3999_toString/1790204457 var3945)) ; Statement: r4 = interfaceinvoke $r3.<java.nio.file.Path: java.lang.String toString()>() 
(define-const var3186 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3186)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3186!1 String)
(assert (= var3186!1 ""))
(assert true)
(define-const var2387 Int (length/-134980193 var2797)) ; Statement: $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var930 Int (- var2387 4)) ; Statement: $i4 = $i3 - 4 
(assert true)
(define-const var396 String (subSequence/-355200942 var2797 0 var930)) ; Statement: $r6 = virtualinvoke r4.<java.lang.String: java.lang.CharSequence subSequence(int,int)>(0, $i4) 
(assert true)
(define-const var759 String (append/-1031950772 var3186!1 (cast-from-String-to-var2993 var396))) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3186!2 String)
(assert (str.prefixof var3186!1 var3186!2))
(assert true)
(define-const var2345 String (append/672562846 var759 "_%0")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_%0") 
(declare-const var759!1 String)
(assert (= var759!1 (str.++ var759 "_%0")))
(assert true)
(define-const var1535 String (append/-1001720160 var2345 var1379)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var2345!1 String)
(assert (str.prefixof var2345 var2345!1))
(assert true)
(define-const var2143 String (append/672562846 var1535 "d.jfr")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("d.jfr") 
(declare-const var1535!1 String)
(assert (= var1535!1 (str.++ var1535 "d.jfr")))
(assert true)
(define-const var3405 String (toString/-2075883882 var2143)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3537 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(define-const var46 Int (var2045_size/-959786421 var578)) ; Statement: $i5 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if i9 >= $i5 goto $r12 = new java.io.DataInputStream 
(assert (not (>= var3537 var46))) ; Negate: Cond: i9 >= $i5  
(define-const var1558 (Array Int var2993) arr-var2993-init) ; Statement: $r33 = newarray (java.lang.Object)[1] 
(define-const var3918 Int (Int_valueOf/-1371140006 var3537)) ; Statement: $r34 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i9) 
(declare-const var1558!1 (Array Int var2993))
(assert (not (= var1558!1 null-__Array__Int__var2993__)))
(assert (= (select var1558!1 0) (cast-from-Int-to-var2993 var3918))) ; Statement: $r33[0] = $r34 
(define-const var1315 String (String_format/1339386452 var3405 var1558!1)) ; Statement: r58 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r11, $r33) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2616 var1882) ; Statement: $r52 := @caughtexception 
(assert (not (= var2616 null-var1882)))
(define-const var1168 var2747 var2747-init) ; Statement: $r53 = new jdk.jfr.internal.tool.UserDataException 
(define-const var280 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var280)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var280!1 String)
(assert (= var280!1 ""))
(assert true)
(define-const var1910 String (append/672562846 var280!1 "can\u0027t construct path with filename")) ; Statement: $r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t construct path with filename") 
(declare-const var280!2 String)
(assert (= var280!2 (str.++ var280!1 "can\u0027t construct path with filename")))
(assert true)
(define-const var2181 String (append/672562846 var1910 var1315)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r58) 
(declare-const var1910!1 String)
(assert (= var1910!1 (str.++ var1910 var1315)))
(assert true)
(define-const var1208 String (toString/-2075883882 var2181)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/184329998 var1168 var1208)) ; Statement: specialinvoke $r53.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r57) 

(declare-const var1168!1 var2747)
(declare-const var1208!1 String)
 ; Statement: throw $r53 
(check-sat)
(get-model)
(get-unsat-core)
; {var2045_size/-959786421=([java.util.List], int), String_valueOf/1240665136=([int], java.lang.String), length/-134980193=([java.lang.String], int), var3999_getFileName/567905596=([java.nio.file.Path], java.nio.file.Path), var3999_toString/1790204457=([java.nio.file.Path], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), subSequence/-355200942=([java.lang.String, int, int], java.lang.CharSequence), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var2993=([java.lang.CharSequence], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var2993-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2993=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var2747-init=([], jdk.jfr.internal.tool.UserDataException), <init>/184329998=([jdk.jfr.internal.tool.UserDataException, java.lang.String], void)}
; {var1540=jdk.jfr.internal.tool.Disassemble, var1951=r18, var3999=java.nio.file.Path, var2811=r23, var774=r2, var2045=java.util.List, var578=r0, var2573=$i0, var897=$i1, var1105=$r1, var1379=i2, var3945=$r3, var2797=r4, var3186=$r5, var2387=$i3, var930=$i4, var396=$r6, var2993=java.lang.Object, var759=$r7, var2345=$r8, var1535=$r9, var2143=$r10, var3405=r11, var3537=i9, var46=$i5, var1558=$r33, var3918=$r34, var1315=r58, var1882=java.nio.file.InvalidPathException, var2616=$r52, var2747=jdk.jfr.internal.tool.UserDataException, var1168=$r53, var280=$r54, var1910=$r55, var2181=$r56, var1208=$r57}
; {jdk.jfr.internal.tool.Disassemble=var1540, r18=var1951, java.nio.file.Path=var3999, r23=var2811, r2=var774, java.util.List=var2045, r0=var578, $i0=var2573, $i1=var897, $r1=var1105, i2=var1379, $r3=var3945, r4=var2797, $r5=var3186, $i3=var2387, $i4=var930, $r6=var396, java.lang.Object=var2993, $r7=var759, $r8=var2345, $r9=var1535, $r10=var2143, r11=var3405, i9=var3537, $i5=var46, $r33=var1558, $r34=var3918, r58=var1315, java.nio.file.InvalidPathException=var1882, $r52=var2616, jdk.jfr.internal.tool.UserDataException=var2747, $r53=var1168, $r54=var280, $r55=var1910, $r56=var2181, $r57=var1208}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.String: int length()>;	<java.nio.file.Path: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.CharSequence subSequence(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.String: java.lang.CharSequence subSequence(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r18 := @this: jdk.jfr.internal.tool.Disassemble;	r23 := @parameter0: java.nio.file.Path;	r2 := @parameter1: java.nio.file.Path;	r0 := @parameter2: java.util.List;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1);	i2 = virtualinvoke $r1.<java.lang.String: int length()>();	$r3 = interfaceinvoke r2.<java.nio.file.Path: java.nio.file.Path getFileName()>();	r4 = interfaceinvoke $r3.<java.nio.file.Path: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$i3 = virtualinvoke r4.<java.lang.String: int length()>();	$i4 = $i3 - 4;	$r6 = virtualinvoke r4.<java.lang.String: java.lang.CharSequence subSequence(int,int)>(0, $i4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_%0");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("d.jfr");	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	i9 = 0;	$i5 = interfaceinvoke r0.<java.util.List: int size()>();	if i9 >= $i5 goto $r12 = new java.io.DataInputStream;	$r33 = newarray (java.lang.Object)[1];	$r34 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i9);	$r33[0] = $r34;	r58 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r11, $r33);	$r52 := @caughtexception;	$r53 = new jdk.jfr.internal.tool.UserDataException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t construct path with filename");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r58);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r53.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r57);	throw $r53
;block_num 4
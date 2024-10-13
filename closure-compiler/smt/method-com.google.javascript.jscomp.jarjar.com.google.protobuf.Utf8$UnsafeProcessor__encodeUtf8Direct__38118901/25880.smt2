(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3433 0)
(declare-sort var2460 0)
(declare-sort var3059 0)
(declare-sort var1290 0)
(declare-sort var2001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3059_addressOffset/1318774612 (var2460) Int)
(declare-fun position/38072115 (var1290) Int)
(declare-fun cast-from-var2460-to-var1290 (var2460) var1290)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun limit/2102002819 (var1290) Int)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var2001-init () var2001)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_charAt/1466887330 (String Int) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1057600344 (var2001 String) void)
(declare-const null-var3433 var3433)
(declare-const null-String String)
(declare-const null-var2460 var2460)
(declare-const var3457 var3433) ; Statement: r11 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor 
(assert (not (= var3457 null-var3433)))
(declare-const var722 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var722 null-String)))
(declare-const var2469 var2460) ; Statement: r0 := @parameter1: java.nio.ByteBuffer 
(assert (not (= var2469 null-var2460)))
(define-const var2112 Int (var3059_addressOffset/1318774612 var2469)) ; Statement: l0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil: long addressOffset(java.nio.ByteBuffer)>(r0) 
(assert true)
(define-const var2627 Int (position/38072115 (cast-from-var2460-to-var1290 var2469))) ; Statement: $i1 = virtualinvoke r0.<java.nio.ByteBuffer: int position()>() 
(define-const var147 Int (cast-from-Int-to-Int var2627)) ; Statement: $l2 = (long) $i1 
(define-const var1880 Int (+ var2112 var147)) ; Statement: l66 = l0 + $l2 
(assert true)
(define-const var351 Int (limit/2102002819 (cast-from-var2460-to-var1290 var2469))) ; Statement: $i3 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>() 
(define-const var2937 Int (cast-from-Int-to-Int var351)) ; Statement: $l4 = (long) $i3 
(define-const var2079 Int (+ var2112 var2937)) ; Statement: l5 = l0 + $l4 
(define-const var3824 Int (String_length/-667254855 var722)) ; Statement: i6 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var3413 Int (cast-from-Int-to-Int var3824)) ; Statement: $l8 = (long) i6 
(define-const var148 Int (- var2079 var1880)) ; Statement: $l7 = l5 - l66 
(define-const var3865 Int (ite (> var3413 var148) 1 (ite (< var3413 var148) (- 1) 0))) ; Statement: $b9 = $l8 cmp $l7 
(define-const var35 Int (cast-from-Int-to-Int var3865)) ; Statement: $i75 = (int) $b9 
 ; Statement: if $i75 <= 0 goto i67 = 0 
(assert (not (<= var35 0))) ; Negate: Cond: $i75 <= 0  
(define-const var2099 var2001 var2001-init) ; Statement: $r20 = new java.lang.ArrayIndexOutOfBoundsException 
(define-const var2516 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2516)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2516!1 String)
(assert (= var2516!1 ""))
(assert true)
(define-const var3300 String (append/672562846 var2516!1 "Failed writing ")) ; Statement: $r6 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed writing ") 
(declare-const var2516!2 String)
(assert (= var2516!2 (str.++ var2516!1 "Failed writing ")))
(define-const var3558 Int (- var3824 1)) ; Statement: $i63 = i6 - 1 
(define-const var1904 Int (String_charAt/1466887330 var722 var3558)) ; Statement: $c64 = interfaceinvoke r1.<java.lang.CharSequence: char charAt(int)>($i63) 
(assert true)
(define-const var3591 String (append/-1166366385 var3300 var1904)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c64) 
(declare-const var3300!1 String)
(assert (str.prefixof var3300 var3300!1))
(assert true)
(define-const var2024 String (append/672562846 var3591 " at index ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at index ") 
(declare-const var3591!1 String)
(assert (= var3591!1 (str.++ var3591 " at index ")))
(assert true)
(define-const var1963 Int (limit/2102002819 (cast-from-var2460-to-var1290 var2469))) ; Statement: $i65 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>() 
(assert true)
(define-const var2952 String (append/-1001720160 var2024 var1963)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i65) 
(declare-const var2024!1 String)
(assert (str.prefixof var2024 var2024!1))
(assert true)
(define-const var839 String (toString/-2075883882 var2952)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1057600344 var2099 var839)) ; Statement: specialinvoke $r20.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r10) 

(declare-const var2099!1 var2001)
(declare-const var839!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var3059_addressOffset/1318774612=([java.nio.ByteBuffer], long), position/38072115=([java.nio.Buffer], int), cast-from-var2460-to-var1290=([java.nio.ByteBuffer], java.nio.Buffer), cast-from-Int-to-Int=([int], long), limit/2102002819=([java.nio.Buffer], int), String_length/-667254855=([java.lang.CharSequence], int), var2001-init=([], java.lang.ArrayIndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_charAt/1466887330=([java.lang.CharSequence, int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1057600344=([java.lang.ArrayIndexOutOfBoundsException, java.lang.String], void)}
; {var3433=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor, var3457=r11, var722=r1, var2460=java.nio.ByteBuffer, var2469=r0, var3059=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil, var2112=l0, var1290=java.nio.Buffer, var2627=$i1, var147=$l2, var1880=l66, var351=$i3, var2937=$l4, var2079=l5, var3824=i6, var3413=$l8, var148=$l7, var3865=$b9, var35=$i75, var2001=java.lang.ArrayIndexOutOfBoundsException, var2099=$r20, var2516=$r19, var3300=$r6, var3558=$i63, var1904=$c64, var3591=$r7, var2024=$r8, var1963=$i65, var2952=$r9, var839=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor=var3433, r11=var3457, r1=var722, java.nio.ByteBuffer=var2460, r0=var2469, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil=var3059, l0=var2112, java.nio.Buffer=var1290, $i1=var2627, $l2=var147, l66=var1880, $i3=var351, $l4=var2937, l5=var2079, i6=var3824, $l8=var3413, $l7=var148, $b9=var3865, $i75=var35, java.lang.ArrayIndexOutOfBoundsException=var2001, $r20=var2099, $r19=var2516, $r6=var3300, $i63=var3558, $c64=var1904, $r7=var3591, $r8=var2024, $i65=var1963, $r9=var2952, $r10=var839}
;seq <java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.CharSequence: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.CharSequence: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor;	r1 := @parameter0: java.lang.CharSequence;	r0 := @parameter1: java.nio.ByteBuffer;	l0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil: long addressOffset(java.nio.ByteBuffer)>(r0);	$i1 = virtualinvoke r0.<java.nio.ByteBuffer: int position()>();	$l2 = (long) $i1;	l66 = l0 + $l2;	$i3 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>();	$l4 = (long) $i3;	l5 = l0 + $l4;	i6 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$l8 = (long) i6;	$l7 = l5 - l66;	$b9 = $l8 cmp $l7;	$i75 = (int) $b9;	if $i75 <= 0 goto i67 = 0;	$r20 = new java.lang.ArrayIndexOutOfBoundsException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed writing ");	$i63 = i6 - 1;	$c64 = interfaceinvoke r1.<java.lang.CharSequence: char charAt(int)>($i63);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c64);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at index ");	$i65 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i65);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r10);	throw $r20
;block_num 2
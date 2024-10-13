(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2747 0)
(declare-sort var3020 0)
(declare-sort var1228 0)
(declare-sort var2285 0)
(declare-sort var3449 0)
(declare-sort var2914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun position/38072115 (var1228) Int)
(declare-fun cast-from-var3020-to-var1228 (var3020) var1228)
(declare-fun var3449_max/1360571700 (Int Int) Int)
(declare-fun var2914-init () var2914)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_charAt/1466887330 (String Int) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1057600344 (var2914 String) void)
(declare-const null-var2747 var2747)
(declare-const null-String String)
(declare-const null-var3020 var3020)
(declare-const null-var2285 var2285)
(declare-const var2803 var2747) ; Statement: r11 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$Processor 
(assert (not (= var2803 null-var2747)))
(declare-const var3316 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3316 null-String)))
(declare-const var1308 var3020) ; Statement: r1 := @parameter1: java.nio.ByteBuffer 
(assert (not (= var1308 null-var3020)))
(define-const var3341 Int (String_length/-667254855 var3316)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert true)
(define-const var2032 Int (position/38072115 (cast-from-var3020-to-var1228 var1308))) ; Statement: i51 = virtualinvoke r1.<java.nio.ByteBuffer: int position()>() 
(define-const var2573 Int 0) ; Statement: i52 = 0 
(assert true) ; Non Conditional
 ; Statement: if i52 >= i0 goto (branch) 
(assert (not (>= var2573 var3341))) ; Negate: Cond: i52 >= i0  
(declare-const var906 var2285) ; Statement: $r3 := @caughtexception 
(assert (not (= var906 null-var2285)))
(assert true)
(define-const var3810 Int (position/38072115 (cast-from-var3020-to-var1228 var1308))) ; Statement: $i49 = virtualinvoke r1.<java.nio.ByteBuffer: int position()>() 
(assert true)
(define-const var220 Int (position/38072115 (cast-from-var3020-to-var1228 var1308))) ; Statement: $i45 = virtualinvoke r1.<java.nio.ByteBuffer: int position()>() 
(define-const var3427 Int (- var2032 var220)) ; Statement: $i46 = i51 - $i45 
(define-const var3539 Int (+ var3427 1)) ; Statement: $i47 = $i46 + 1 
(define-const var2850 Int (var3449_max/1360571700 var2573 var3539)) ; Statement: $i48 = staticinvoke <java.lang.Math: int max(int,int)>(i52, $i47) 
(define-const var1986 Int (+ var3810 var2850)) ; Statement: i54 = $i49 + $i48 
(define-const var1085 var2914 var2914-init) ; Statement: $r14 = new java.lang.ArrayIndexOutOfBoundsException 
(define-const var829 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var829)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var829!1 String)
(assert (= var829!1 ""))
(assert true)
(define-const var1990 String (append/672562846 var829!1 "Failed writing ")) ; Statement: $r6 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed writing ") 
(declare-const var829!2 String)
(assert (= var829!2 (str.++ var829!1 "Failed writing ")))
(define-const var744 Int (String_charAt/1466887330 var3316 var2573)) ; Statement: $c50 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(i52) 
(assert true)
(define-const var3215 String (append/-1166366385 var1990 var744)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c50) 
(declare-const var1990!1 String)
(assert (str.prefixof var1990 var1990!1))
(assert true)
(define-const var1556 String (append/672562846 var3215 " at index ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at index ") 
(declare-const var3215!1 String)
(assert (= var3215!1 (str.++ var3215 " at index ")))
(assert true)
(define-const var3048 String (append/-1001720160 var1556 var1986)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i54) 
(declare-const var1556!1 String)
(assert (str.prefixof var1556 var1556!1))
(assert true)
(define-const var1116 String (toString/-2075883882 var3048)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1057600344 var1085 var1116)) ; Statement: specialinvoke $r14.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r10) 

(declare-const var1085!1 var2914)
(declare-const var1116!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), position/38072115=([java.nio.Buffer], int), cast-from-var3020-to-var1228=([java.nio.ByteBuffer], java.nio.Buffer), var3449_max/1360571700=([int, int], int), var2914-init=([], java.lang.ArrayIndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_charAt/1466887330=([java.lang.CharSequence, int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1057600344=([java.lang.ArrayIndexOutOfBoundsException, java.lang.String], void)}
; {var2747=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$Processor, var2803=r11, var3316=r0, var3020=java.nio.ByteBuffer, var1308=r1, var3341=i0, var1228=java.nio.Buffer, var2032=i51, var2573=i52, var2285=java.lang.IndexOutOfBoundsException, var906=$r3, var3810=$i49, var220=$i45, var3427=$i46, var3539=$i47, var3449=java.lang.Math, var2850=$i48, var1986=i54, var2914=java.lang.ArrayIndexOutOfBoundsException, var1085=$r14, var829=$r13, var1990=$r6, var744=$c50, var3215=$r7, var1556=$r8, var3048=$r9, var1116=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$Processor=var2747, r11=var2803, r0=var3316, java.nio.ByteBuffer=var3020, r1=var1308, i0=var3341, java.nio.Buffer=var1228, i51=var2032, i52=var2573, java.lang.IndexOutOfBoundsException=var2285, $r3=var906, $i49=var3810, $i45=var220, $i46=var3427, $i47=var3539, java.lang.Math=var3449, $i48=var2850, i54=var1986, java.lang.ArrayIndexOutOfBoundsException=var2914, $r14=var1085, $r13=var829, $r6=var1990, $c50=var744, $r7=var3215, $r8=var1556, $r9=var3048, $r10=var1116}
;seq <java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.CharSequence: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.CharSequence: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$Processor;	r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.nio.ByteBuffer;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i51 = virtualinvoke r1.<java.nio.ByteBuffer: int position()>();	i52 = 0;	if i52 >= i0 goto (branch);	$r3 := @caughtexception;	$i49 = virtualinvoke r1.<java.nio.ByteBuffer: int position()>();	$i45 = virtualinvoke r1.<java.nio.ByteBuffer: int position()>();	$i46 = i51 - $i45;	$i47 = $i46 + 1;	$i48 = staticinvoke <java.lang.Math: int max(int,int)>(i52, $i47);	i54 = $i49 + $i48;	$r14 = new java.lang.ArrayIndexOutOfBoundsException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed writing ");	$c50 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(i52);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c50);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at index ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i54);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r10);	throw $r14
;block_num 3
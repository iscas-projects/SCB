(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1298 0)
(declare-sort var3150 0)
(declare-sort var734 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3150_getChar/635386524 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3150_checkChar/555729649 (Int String Int) Int)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var734-init () var734)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var734 String) void)
(declare-const null-String String)
(declare-const var3405 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3405 null-String)))
(define-const var941 Int 0) ; Statement: i4 = 0 
(define-const var2163 Int (var3150_getChar/635386524 var3405 0)) ; Statement: $c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, 0) 
(define-const var2197 Int (cast-from-Int-to-Int var2163)) ; Statement: $i12 = (int) $c0 
 ; Statement: if $i12 != 60 goto i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4) 
(assert (not (= var2197 60))) ; Cond: $i12 != 60 
(define-const var767 Int (var3150_checkChar/555729649 40 var3405 var941)) ; Statement: i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4) 
(assert true) ; Non Conditional
(define-const var283 String "ZCBSIFJDL[T") ; Statement: $r7 = "ZCBSIFJDL[T" 
(define-const var1122 Int (var3150_getChar/635386524 var3405 var767)) ; Statement: $c6 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i5) 
(define-const var2000 Int (cast-from-Int-to-Int var1122)) ; Statement: $i13 = (int) $c6 
(assert true)
(define-const var2373 Int (indexOf/-1037706067 var283 var2000)) ; Statement: $i7 = virtualinvoke $r7.<java.lang.String: int indexOf(int)>($i13) 
(define-const var2659 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
 ; Statement: if $i7 == $i15 goto i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5) 
(assert (= var2373 var2659)) ; Cond: $i7 == $i15 
(define-const var2143 Int (var3150_checkChar/555729649 41 var3405 var767)) ; Statement: i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5) 
(define-const var2407 Int (var3150_getChar/635386524 var3405 var2143)) ; Statement: $c1 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i8) 
(define-const var3640 Int (cast-from-Int-to-Int var2407)) ; Statement: $i16 = (int) $c1 
 ; Statement: if $i16 != 86 goto i9 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkTypeSignature(java.lang.String,int)>(r0, i8) 
(assert (not (not (= var3640 86)))) ; Negate: Cond: $i16 != 86  
(define-const var349 Int (+ var2143 1)) ; Statement: i9 = i8 + 1 
 ; Statement: goto [?= $c10 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i9)] 
(assert true) ; Non Conditional
(define-const var3199 Int (var3150_getChar/635386524 var3405 var349)) ; Statement: $c10 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i9) 
(define-const var2763 Int (cast-from-Int-to-Int var3199)) ; Statement: $i17 = (int) $c10 
 ; Statement: if $i17 != 94 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var2763 94))) ; Cond: $i17 != 94 
(assert true)
(define-const var2914 Int (length/-134980193 var3405)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i9 == $i2 goto return 
(assert (not (= var349 var2914))) ; Negate: Cond: i9 == $i2  
(define-const var2119 var734 var734-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var77 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var77)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var77!1 String)
(assert (= var77!1 ""))
(assert true)
(define-const var1358 String (append/672562846 var77!1 var3405)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var77!2 String)
(assert (= var77!2 (str.++ var77!1 var3405)))
(assert true)
(define-const var1718 String (append/672562846 var1358 ": error at index ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": error at index ") 
(declare-const var1358!1 String)
(assert (= var1358!1 (str.++ var1358 ": error at index ")))
(assert true)
(define-const var3480 String (append/-1001720160 var1718 var349)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i9) 
(declare-const var1718!1 String)
(assert (str.prefixof var1718 var1718!1))
(assert true)
(define-const var1183 String (toString/-2075883882 var3480)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2119 var1183)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var2119!1 var734)
(declare-const var1183!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3150_getChar/635386524=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3150_checkChar/555729649=([char, java.lang.String, int], int), indexOf/-1037706067=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), var734-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3405=r0, var1298=null_type, var941=i4, var3150=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var2163=$c0, var2197=$i12, var767=i5, var283=$r7, var1122=$c6, var2000=$i13, var2373=$i7, var2659=$i15, var2143=i8, var2407=$c1, var3640=$i16, var349=i9, var3199=$c10, var2763=$i17, var2914=$i2, var734=java.lang.IllegalArgumentException, var2119=$r9, var77=$r8, var1358=$r3, var1718=$r4, var3480=$r5, var1183=$r6}
; {r0=var3405, null_type=var1298, i4=var941, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var3150, $c0=var2163, $i12=var2197, i5=var767, $r7=var283, $c6=var1122, $i13=var2000, $i7=var2373, $i15=var2659, i8=var2143, $c1=var2407, $i16=var3640, i9=var349, $c10=var3199, $i17=var2763, $i2=var2914, java.lang.IllegalArgumentException=var734, $r9=var2119, $r8=var77, $r3=var1358, $r4=var1718, $r5=var3480, $r6=var1183}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i4 = 0;	$c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, 0);	$i12 = (int) $c0;	if $i12 != 60 goto i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4);	i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4);	$r7 = "ZCBSIFJDL[T";	$c6 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i5);	$i13 = (int) $c6;	$i7 = virtualinvoke $r7.<java.lang.String: int indexOf(int)>($i13);	$i15 = (int) -1;	if $i7 == $i15 goto i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5);	i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5);	$c1 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i8);	$i16 = (int) $c1;	if $i16 != 86 goto i9 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkTypeSignature(java.lang.String,int)>(r0, i8);	i9 = i8 + 1;	goto [?= $c10 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i9)];	$c10 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i9);	$i17 = (int) $c10;	if $i17 != 94 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	if i9 == $i2 goto return;	$r9 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": error at index ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i9);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r9
;block_num 8
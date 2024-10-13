(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2176 0)
(declare-sort var2664 0)
(declare-sort var1778 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2664_getChar/635386524 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2664_checkChar/555729649 (Int String Int) Int)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var2664_checkTypeSignature/-443387785 (String Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1778-init () var1778)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1778 String) void)
(declare-const null-String String)
(declare-const var2685 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2685 null-String)))
(define-const var3124 Int 0) ; Statement: i4 = 0 
(define-const var2038 Int (var2664_getChar/635386524 var2685 0)) ; Statement: $c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, 0) 
(define-const var92 Int (cast-from-Int-to-Int var2038)) ; Statement: $i12 = (int) $c0 
 ; Statement: if $i12 != 60 goto i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4) 
(assert (not (= var92 60))) ; Cond: $i12 != 60 
(define-const var2978 Int (var2664_checkChar/555729649 40 var2685 var3124)) ; Statement: i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4) 
(assert true) ; Non Conditional
(define-const var3696 String "ZCBSIFJDL[T") ; Statement: $r7 = "ZCBSIFJDL[T" 
(define-const var970 Int (var2664_getChar/635386524 var2685 var2978)) ; Statement: $c6 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i5) 
(define-const var230 Int (cast-from-Int-to-Int var970)) ; Statement: $i13 = (int) $c6 
(assert true)
(define-const var2032 Int (indexOf/-1037706067 var3696 var230)) ; Statement: $i7 = virtualinvoke $r7.<java.lang.String: int indexOf(int)>($i13) 
(define-const var532 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
 ; Statement: if $i7 == $i15 goto i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5) 
(assert (= var2032 var532)) ; Cond: $i7 == $i15 
(define-const var3273 Int (var2664_checkChar/555729649 41 var2685 var2978)) ; Statement: i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5) 
(define-const var314 Int (var2664_getChar/635386524 var2685 var3273)) ; Statement: $c1 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i8) 
(define-const var3330 Int (cast-from-Int-to-Int var314)) ; Statement: $i16 = (int) $c1 
 ; Statement: if $i16 != 86 goto i9 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkTypeSignature(java.lang.String,int)>(r0, i8) 
(assert (not (= var3330 86))) ; Cond: $i16 != 86 
(define-const var1660 Int (var2664_checkTypeSignature/-443387785 var2685 var3273)) ; Statement: i9 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkTypeSignature(java.lang.String,int)>(r0, i8) 
(assert true) ; Non Conditional
(define-const var2329 Int (var2664_getChar/635386524 var2685 var1660)) ; Statement: $c10 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i9) 
(define-const var615 Int (cast-from-Int-to-Int var2329)) ; Statement: $i17 = (int) $c10 
 ; Statement: if $i17 != 94 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var615 94))) ; Cond: $i17 != 94 
(assert true)
(define-const var3323 Int (length/-134980193 var2685)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i9 == $i2 goto return 
(assert (not (= var1660 var3323))) ; Negate: Cond: i9 == $i2  
(define-const var2757 var1778 var1778-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var347 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var347)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var347!1 String)
(assert (= var347!1 ""))
(assert true)
(define-const var3635 String (append/672562846 var347!1 var2685)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var347!2 String)
(assert (= var347!2 (str.++ var347!1 var2685)))
(assert true)
(define-const var1179 String (append/672562846 var3635 ": error at index ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": error at index ") 
(declare-const var3635!1 String)
(assert (= var3635!1 (str.++ var3635 ": error at index ")))
(assert true)
(define-const var1265 String (append/-1001720160 var1179 var1660)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i9) 
(declare-const var1179!1 String)
(assert (str.prefixof var1179 var1179!1))
(assert true)
(define-const var3622 String (toString/-2075883882 var1265)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2757 var3622)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var2757!1 var1778)
(declare-const var3622!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2664_getChar/635386524=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2664_checkChar/555729649=([char, java.lang.String, int], int), indexOf/-1037706067=([java.lang.String, int], int), var2664_checkTypeSignature/-443387785=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), var1778-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2685=r0, var2176=null_type, var3124=i4, var2664=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var2038=$c0, var92=$i12, var2978=i5, var3696=$r7, var970=$c6, var230=$i13, var2032=$i7, var532=$i15, var3273=i8, var314=$c1, var3330=$i16, var1660=i9, var2329=$c10, var615=$i17, var3323=$i2, var1778=java.lang.IllegalArgumentException, var2757=$r9, var347=$r8, var3635=$r3, var1179=$r4, var1265=$r5, var3622=$r6}
; {r0=var2685, null_type=var2176, i4=var3124, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var2664, $c0=var2038, $i12=var92, i5=var2978, $r7=var3696, $c6=var970, $i13=var230, $i7=var2032, $i15=var532, i8=var3273, $c1=var314, $i16=var3330, i9=var1660, $c10=var2329, $i17=var615, $i2=var3323, java.lang.IllegalArgumentException=var1778, $r9=var2757, $r8=var347, $r3=var3635, $r4=var1179, $r5=var1265, $r6=var3622}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i4 = 0;	$c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, 0);	$i12 = (int) $c0;	if $i12 != 60 goto i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4);	i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4);	$r7 = "ZCBSIFJDL[T";	$c6 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i5);	$i13 = (int) $c6;	$i7 = virtualinvoke $r7.<java.lang.String: int indexOf(int)>($i13);	$i15 = (int) -1;	if $i7 == $i15 goto i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5);	i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5);	$c1 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i8);	$i16 = (int) $c1;	if $i16 != 86 goto i9 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkTypeSignature(java.lang.String,int)>(r0, i8);	i9 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkTypeSignature(java.lang.String,int)>(r0, i8);	$c10 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i9);	$i17 = (int) $c10;	if $i17 != 94 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	if i9 == $i2 goto return;	$r9 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": error at index ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i9);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r9
;block_num 8
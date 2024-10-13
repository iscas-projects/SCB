(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1457 0)
(declare-sort var3745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3745_getChar/635386524 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3745_checkChar/555729649 (Int String Int) Int)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2848 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2848 null-String)))
(define-const var1329 Int 0) ; Statement: i4 = 0 
(define-const var1411 Int (var3745_getChar/635386524 var2848 0)) ; Statement: $c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, 0) 
(define-const var3936 Int (cast-from-Int-to-Int var1411)) ; Statement: $i12 = (int) $c0 
 ; Statement: if $i12 != 60 goto i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4) 
(assert (not (= var3936 60))) ; Cond: $i12 != 60 
(define-const var3728 Int (var3745_checkChar/555729649 40 var2848 var1329)) ; Statement: i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4) 
(assert true) ; Non Conditional
(define-const var1983 String "ZCBSIFJDL[T") ; Statement: $r7 = "ZCBSIFJDL[T" 
(define-const var3106 Int (var3745_getChar/635386524 var2848 var3728)) ; Statement: $c6 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i5) 
(define-const var2631 Int (cast-from-Int-to-Int var3106)) ; Statement: $i13 = (int) $c6 
(assert true)
(define-const var575 Int (indexOf/-1037706067 var1983 var2631)) ; Statement: $i7 = virtualinvoke $r7.<java.lang.String: int indexOf(int)>($i13) 
(define-const var3261 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
 ; Statement: if $i7 == $i15 goto i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5) 
(assert (= var575 var3261)) ; Cond: $i7 == $i15 
(define-const var484 Int (var3745_checkChar/555729649 41 var2848 var3728)) ; Statement: i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5) 
(define-const var2775 Int (var3745_getChar/635386524 var2848 var484)) ; Statement: $c1 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i8) 
(define-const var14 Int (cast-from-Int-to-Int var2775)) ; Statement: $i16 = (int) $c1 
 ; Statement: if $i16 != 86 goto i9 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkTypeSignature(java.lang.String,int)>(r0, i8) 
(assert (not (not (= var14 86)))) ; Negate: Cond: $i16 != 86  
(define-const var3875 Int (+ var484 1)) ; Statement: i9 = i8 + 1 
 ; Statement: goto [?= $c10 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i9)] 
(assert true) ; Non Conditional
(define-const var781 Int (var3745_getChar/635386524 var2848 var3875)) ; Statement: $c10 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i9) 
(define-const var3553 Int (cast-from-Int-to-Int var781)) ; Statement: $i17 = (int) $c10 
 ; Statement: if $i17 != 94 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3553 94))) ; Cond: $i17 != 94 
(assert true)
(define-const var2410 Int (length/-134980193 var2848)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i9 == $i2 goto return 
(assert (= var3875 var2410)) ; Cond: i9 == $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3745_getChar/635386524=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3745_checkChar/555729649=([char, java.lang.String, int], int), indexOf/-1037706067=([java.lang.String, int], int), length/-134980193=([java.lang.String], int)}
; {var2848=r0, var1457=null_type, var1329=i4, var3745=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var1411=$c0, var3936=$i12, var3728=i5, var1983=$r7, var3106=$c6, var2631=$i13, var575=$i7, var3261=$i15, var484=i8, var2775=$c1, var14=$i16, var3875=i9, var781=$c10, var3553=$i17, var2410=$i2}
; {r0=var2848, null_type=var1457, i4=var1329, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var3745, $c0=var1411, $i12=var3936, i5=var3728, $r7=var1983, $c6=var3106, $i13=var2631, $i7=var575, $i15=var3261, i8=var484, $c1=var2775, $i16=var14, i9=var3875, $c10=var781, $i17=var3553, $i2=var2410}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i4 = 0;	$c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, 0);	$i12 = (int) $c0;	if $i12 != 60 goto i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4);	i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4);	$r7 = "ZCBSIFJDL[T";	$c6 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i5);	$i13 = (int) $c6;	$i7 = virtualinvoke $r7.<java.lang.String: int indexOf(int)>($i13);	$i15 = (int) -1;	if $i7 == $i15 goto i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5);	i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5);	$c1 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i8);	$i16 = (int) $c1;	if $i16 != 86 goto i9 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkTypeSignature(java.lang.String,int)>(r0, i8);	i9 = i8 + 1;	goto [?= $c10 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i9)];	$c10 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i9);	$i17 = (int) $c10;	if $i17 != 94 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	if i9 == $i2 goto return;	return
;block_num 8
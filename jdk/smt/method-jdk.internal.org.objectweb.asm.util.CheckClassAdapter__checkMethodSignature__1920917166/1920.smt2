(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1157 0)
(declare-sort var1306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1306_getChar/635386524 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1306_checkChar/555729649 (Int String Int) Int)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var1306_checkTypeSignature/-443387785 (String Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1311 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1311 null-String)))
(define-const var3049 Int 0) ; Statement: i4 = 0 
(define-const var2899 Int (var1306_getChar/635386524 var1311 0)) ; Statement: $c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, 0) 
(define-const var1794 Int (cast-from-Int-to-Int var2899)) ; Statement: $i12 = (int) $c0 
 ; Statement: if $i12 != 60 goto i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4) 
(assert (not (= var1794 60))) ; Cond: $i12 != 60 
(define-const var2028 Int (var1306_checkChar/555729649 40 var1311 var3049)) ; Statement: i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4) 
(assert true) ; Non Conditional
(define-const var1547 String "ZCBSIFJDL[T") ; Statement: $r7 = "ZCBSIFJDL[T" 
(define-const var1080 Int (var1306_getChar/635386524 var1311 var2028)) ; Statement: $c6 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i5) 
(define-const var1979 Int (cast-from-Int-to-Int var1080)) ; Statement: $i13 = (int) $c6 
(assert true)
(define-const var3538 Int (indexOf/-1037706067 var1547 var1979)) ; Statement: $i7 = virtualinvoke $r7.<java.lang.String: int indexOf(int)>($i13) 
(define-const var917 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
 ; Statement: if $i7 == $i15 goto i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5) 
(assert (= var3538 var917)) ; Cond: $i7 == $i15 
(define-const var3772 Int (var1306_checkChar/555729649 41 var1311 var2028)) ; Statement: i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5) 
(define-const var160 Int (var1306_getChar/635386524 var1311 var3772)) ; Statement: $c1 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i8) 
(define-const var10 Int (cast-from-Int-to-Int var160)) ; Statement: $i16 = (int) $c1 
 ; Statement: if $i16 != 86 goto i9 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkTypeSignature(java.lang.String,int)>(r0, i8) 
(assert (not (= var10 86))) ; Cond: $i16 != 86 
(define-const var2721 Int (var1306_checkTypeSignature/-443387785 var1311 var3772)) ; Statement: i9 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkTypeSignature(java.lang.String,int)>(r0, i8) 
(assert true) ; Non Conditional
(define-const var2376 Int (var1306_getChar/635386524 var1311 var2721)) ; Statement: $c10 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i9) 
(define-const var2425 Int (cast-from-Int-to-Int var2376)) ; Statement: $i17 = (int) $c10 
 ; Statement: if $i17 != 94 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var2425 94))) ; Cond: $i17 != 94 
(assert true)
(define-const var425 Int (length/-134980193 var1311)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i9 == $i2 goto return 
(assert (= var2721 var425)) ; Cond: i9 == $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1306_getChar/635386524=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1306_checkChar/555729649=([char, java.lang.String, int], int), indexOf/-1037706067=([java.lang.String, int], int), var1306_checkTypeSignature/-443387785=([java.lang.String, int], int), length/-134980193=([java.lang.String], int)}
; {var1311=r0, var1157=null_type, var3049=i4, var1306=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var2899=$c0, var1794=$i12, var2028=i5, var1547=$r7, var1080=$c6, var1979=$i13, var3538=$i7, var917=$i15, var3772=i8, var160=$c1, var10=$i16, var2721=i9, var2376=$c10, var2425=$i17, var425=$i2}
; {r0=var1311, null_type=var1157, i4=var3049, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var1306, $c0=var2899, $i12=var1794, i5=var2028, $r7=var1547, $c6=var1080, $i13=var1979, $i7=var3538, $i15=var917, i8=var3772, $c1=var160, $i16=var10, i9=var2721, $c10=var2376, $i17=var2425, $i2=var425}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i4 = 0;	$c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, 0);	$i12 = (int) $c0;	if $i12 != 60 goto i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4);	i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(40, r0, i4);	$r7 = "ZCBSIFJDL[T";	$c6 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i5);	$i13 = (int) $c6;	$i7 = virtualinvoke $r7.<java.lang.String: int indexOf(int)>($i13);	$i15 = (int) -1;	if $i7 == $i15 goto i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5);	i8 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(41, r0, i5);	$c1 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i8);	$i16 = (int) $c1;	if $i16 != 86 goto i9 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkTypeSignature(java.lang.String,int)>(r0, i8);	i9 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkTypeSignature(java.lang.String,int)>(r0, i8);	$c10 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i9);	$i17 = (int) $c10;	if $i17 != 94 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	if i9 == $i2 goto return;	return
;block_num 8
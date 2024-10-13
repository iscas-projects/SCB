(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2584 0)
(declare-sort var768 0)
(declare-sort var1316 0)
(declare-sort var2178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun enumConstants/-659022926 (var2584) (Array Int var768))
(declare-fun name/1633728430 (var768) String)
(declare-fun nameWithColonUTF16/-2048851183 (var1316) (Array Int Int))
(declare-fun cast-from-var2584-to-var1316 (var2584) var1316)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2178_copyOf/-394027424 ((Array Int Int) Int) (Array Int Int))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-const null-var2584 var2584)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var476 var2584) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterEnum 
(assert (not (= var476 null-var2584)))
(declare-const var758 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var758 null-Int)))
(define-const var1760 (Array Int var768) (enumConstants/-659022926 var476)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: java.lang.Enum[] enumConstants> 
(define-const var3266 var768 (select var1760 var758)) ; Statement: $r2 = $r1[i0] 
(assert true)
(define-const var3491 String (name/1633728430 var3266)) ; Statement: r3 = virtualinvoke $r2.<java.lang.Enum: java.lang.String name()>() 
(define-const var3318 (Array Int Int) (nameWithColonUTF16/-2048851183 (cast-from-var2584-to-var1316 var476))) ; Statement: $r5 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: char[] nameWithColonUTF16> 
(define-const var1532 (Array Int Int) (nameWithColonUTF16/-2048851183 (cast-from-var2584-to-var1316 var476))) ; Statement: $r4 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: char[] nameWithColonUTF16> 
(define-const var2043 Int (getLength-Arr-Int-1 var1532)) ; Statement: $i2 = lengthof $r4 
(assert true)
(define-const var876 Int (length/-134980193 var3491)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var585 Int (+ var2043 var876)) ; Statement: $i3 = $i2 + $i1 
(define-const var29 Int (+ var585 2)) ; Statement: $i4 = $i3 + 2 
(define-const var3072 (Array Int Int) (var2178_copyOf/-394027424 var3318 var29)) ; Statement: r6 = staticinvoke <java.util.Arrays: char[] copyOf(char[],int)>($r5, $i4) 
(define-const var1403 (Array Int Int) (nameWithColonUTF16/-2048851183 (cast-from-var2584-to-var1316 var476))) ; Statement: $r7 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: char[] nameWithColonUTF16> 
(define-const var3192 Int (getLength-Arr-Int-1 var1403)) ; Statement: $i5 = lengthof $r7 
(declare-const var3072!1 (Array Int Int))
(assert (not (= var3072!1 null-__Array__Int__Int__)))
(assert (= (select var3072!1 var3192) 34)) ; Statement: r6[$i5] = 34 
(assert true)
(define-const var2608 Int (length/-134980193 var3491)) ; Statement: $i8 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var1448 (Array Int Int) (nameWithColonUTF16/-2048851183 (cast-from-var2584-to-var1316 var476))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: char[] nameWithColonUTF16> 
(define-const var3077 Int (getLength-Arr-Int-1 var1448)) ; Statement: $i6 = lengthof $r8 
(define-const var867 Int (+ var3077 1)) ; Statement: $i7 = $i6 + 1 
(assert true)
;(assert (getChars/1306883398 var3491 0 var2608 var3072!1 var867)) ; Statement: virtualinvoke r3.<java.lang.String: void getChars(int,int,char[],int)>(0, $i8, r6, $i7) 

(declare-const var3491!1 String)
(declare-const var500 Int)
(declare-const var2608!1 Int)
(declare-const var3072!2 (Array Int Int))
(declare-const var867!1 Int)
(define-const var1311 Int (getLength-Arr-Int-1 var3072!2)) ; Statement: $i9 = lengthof r6 
(define-const var2433 Int (- var1311 1)) ; Statement: $i10 = $i9 - 1 
(declare-const var3072!3 (Array Int Int))
(assert (not (= var3072!3 null-__Array__Int__Int__)))
(assert (= (select var3072!3 var2433) 34)) ; Statement: r6[$i10] = 34 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {enumConstants/-659022926=([com.alibaba.fastjson2.writer.FieldWriterEnum], java.lang.Enum[]), name/1633728430=([java.lang.Enum], java.lang.String), nameWithColonUTF16/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], char[]), cast-from-var2584-to-var1316=([com.alibaba.fastjson2.writer.FieldWriterEnum], com.alibaba.fastjson2.writer.FieldWriter), getLength-Arr-Int-1=([char[]], int), length/-134980193=([java.lang.String], int), var2178_copyOf/-394027424=([char[], int], char[]), getChars/1306883398=([java.lang.String, int, int, char[], int], void)}
; {var2584=com.alibaba.fastjson2.writer.FieldWriterEnum, var476=r0, var758=i0, var768=java.lang.Enum, var1760=$r1, var3266=$r2, var3491=r3, var1316=com.alibaba.fastjson2.writer.FieldWriter, var3318=$r5, var1532=$r4, var2043=$i2, var876=$i1, var585=$i3, var29=$i4, var2178=java.util.Arrays, var3072=r6, var1403=$r7, var3192=$i5, var2608=$i8, var1448=$r8, var3077=$i6, var867=$i7, var500=0, var1311=$i9, var2433=$i10}
; {com.alibaba.fastjson2.writer.FieldWriterEnum=var2584, r0=var476, i0=var758, java.lang.Enum=var768, $r1=var1760, $r2=var3266, r3=var3491, com.alibaba.fastjson2.writer.FieldWriter=var1316, $r5=var3318, $r4=var1532, $i2=var2043, $i1=var876, $i3=var585, $i4=var29, java.util.Arrays=var2178, r6=var3072, $r7=var1403, $i5=var3192, $i8=var2608, $r8=var1448, $i6=var3077, $i7=var867, 0=var500, $i9=var1311, $i10=var2433}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: void getChars(int,int,char[],int)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterEnum;	i0 := @parameter0: int;	$r1 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: java.lang.Enum[] enumConstants>;	$r2 = $r1[i0];	r3 = virtualinvoke $r2.<java.lang.Enum: java.lang.String name()>();	$r5 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: char[] nameWithColonUTF16>;	$r4 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: char[] nameWithColonUTF16>;	$i2 = lengthof $r4;	$i1 = virtualinvoke r3.<java.lang.String: int length()>();	$i3 = $i2 + $i1;	$i4 = $i3 + 2;	r6 = staticinvoke <java.util.Arrays: char[] copyOf(char[],int)>($r5, $i4);	$r7 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: char[] nameWithColonUTF16>;	$i5 = lengthof $r7;	r6[$i5] = 34;	$i8 = virtualinvoke r3.<java.lang.String: int length()>();	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: char[] nameWithColonUTF16>;	$i6 = lengthof $r8;	$i7 = $i6 + 1;	virtualinvoke r3.<java.lang.String: void getChars(int,int,char[],int)>(0, $i8, r6, $i7);	$i9 = lengthof r6;	$i10 = $i9 - 1;	r6[$i10] = 34;	return r6
;block_num 1
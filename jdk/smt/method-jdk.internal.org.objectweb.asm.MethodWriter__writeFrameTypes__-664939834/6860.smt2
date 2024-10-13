(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var579 0)
(declare-sort var96 0)
(declare-sort var3666 0)
(declare-sort var1129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun frame/-1797295458 (var579) (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun cw/-1797295458 (var579) var96)
(declare-fun typeTable/790748385 (var96) (Array Int var3666))
(declare-fun strVal1/-41352451 (var3666) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun stackMap/-1797295458 (var579) var1129)
(declare-fun putByte/-1899345463 (var1129 Int) var1129)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun newClass/107425462 (var96 String) Int)
(declare-fun putShort/-1693588013 (var1129 Int) var1129)
(declare-const null-var579 var579)
(declare-const null-Int Int)
(declare-const var3621 var579) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.MethodWriter 
(assert (not (= var3621 null-var579)))
(declare-const var3290 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3290 null-Int)))
(declare-const var3790 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3790 null-Int)))
(define-const var731 Int var3290) ; Statement: i10 = i0 
(assert true) ; Non Conditional
 ; Statement: if i10 >= i1 goto return 
(assert (not (>= var731 var3790))) ; Negate: Cond: i10 >= i1  
(define-const var1968 (Array Int Int) (frame/-1797295458 var3621)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame> 
(define-const var3032 Int (select var1968 var731)) ; Statement: i2 = $r1[i10] 
(define-const var1209 Int (bv2nat (bvand ((_ int2bv 64) var3032) ((_ int2bv 64) (- 268435456))))) ; Statement: i11 = i2 & -268435456 
 ; Statement: if i11 != 0 goto $r24 = new java.lang.StringBuilder 
(assert (not (= var1209 0))) ; Cond: i11 != 0 
(define-const var2417 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2417)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2417!1 String)
(assert (= var2417!1 ""))
(define-const var3015 Int (div var1209 (to_int (^ 2 28)))) ; Statement: i13 = i11 >> 28 
(assert true) ; Non Conditional
(define-const var427 Int var3015) ; Statement: $i3 = i13 
(define-const var387 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
(define-const var3015!1 Int (+ var3015 var387)) ; Statement: i13 = i13 + $i16 
 ; Statement: if $i3 <= 0 goto $i4 = i2 & 267386880 
(assert (<= var427 0)) ; Cond: $i3 <= 0 
(define-const var2758 Int (bv2nat (bvand ((_ int2bv 64) var3032) ((_ int2bv 64) 267386880)))) ; Statement: $i4 = i2 & 267386880 
 ; Statement: if $i4 != 24117248 goto $i5 = i2 & 15 
(assert (not (not (= var2758 24117248)))) ; Negate: Cond: $i4 != 24117248  
(assert true)
;(assert (append/-1166366385 var2417!1 76)) ; Statement: virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(declare-const var2417!2 String)
(assert (str.prefixof var2417!1 var2417!2))
(define-const var1364 var96 (cw/-1797295458 var3621)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw> 
(define-const var1435 (Array Int var3666) (typeTable/790748385 var1364)) ; Statement: $r4 = $r3.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item[] typeTable> 
(define-const var3014 Int (bv2nat (bvand ((_ int2bv 64) var3032) ((_ int2bv 64) 1048575)))) ; Statement: $i6 = i2 & 1048575 
(define-const var1574 var3666 (select var1435 var3014)) ; Statement: $r5 = $r4[$i6] 
(define-const var1815 String (strVal1/-41352451 var1574)) ; Statement: $r6 = $r5.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1> 
(assert true)
;(assert (append/672562846 var2417!2 var1815)) ; Statement: virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2417!3 String)
(assert (= var2417!3 (str.++ var2417!2 var1815)))
(assert true)
;(assert (append/-1166366385 var2417!3 59)) ; Statement: virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var2417!4 String)
(assert (str.prefixof var2417!3 var2417!4))
 ; Statement: goto [?= $r20 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ByteVector stackMap>] 
(assert true) ; Non Conditional
(define-const var2035 var1129 (stackMap/-1797295458 var3621)) ; Statement: $r20 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ByteVector stackMap> 
(assert true)
(define-const var801 var1129 (putByte/-1899345463 var2035 7)) ; Statement: $r21 = virtualinvoke $r20.<jdk.internal.org.objectweb.asm.ByteVector: jdk.internal.org.objectweb.asm.ByteVector putByte(int)>(7) 
(define-const var1818 var96 (cw/-1797295458 var3621)) ; Statement: $r22 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw> 
(assert true)
(define-const var3820 String (toString/-2075883882 var2417!4)) ; Statement: $r23 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1729 Int (newClass/107425462 var1818 var3820)) ; Statement: $i14 = virtualinvoke $r22.<jdk.internal.org.objectweb.asm.ClassWriter: int newClass(java.lang.String)>($r23) 
(assert true)
;(assert (putShort/-1693588013 var801 var1729)) ; Statement: virtualinvoke $r21.<jdk.internal.org.objectweb.asm.ByteVector: jdk.internal.org.objectweb.asm.ByteVector putShort(int)>($i14) 

(declare-const var801!1 var1129)
(declare-const var1729!1 Int)
(assert true) ; Non Conditional
(define-const var731!1 Int (+ var731 1)) ; Statement: i10 = i10 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i10 >= i1 goto return 
(assert (>= var731!1 var3790)) ; Cond: i10 >= i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {frame/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-Int-to-Int=([int], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), cw/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], jdk.internal.org.objectweb.asm.ClassWriter), typeTable/790748385=([jdk.internal.org.objectweb.asm.ClassWriter], jdk.internal.org.objectweb.asm.Item[]), strVal1/-41352451=([jdk.internal.org.objectweb.asm.Item], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), stackMap/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], jdk.internal.org.objectweb.asm.ByteVector), putByte/-1899345463=([jdk.internal.org.objectweb.asm.ByteVector, int], jdk.internal.org.objectweb.asm.ByteVector), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), newClass/107425462=([jdk.internal.org.objectweb.asm.ClassWriter, java.lang.String], int), putShort/-1693588013=([jdk.internal.org.objectweb.asm.ByteVector, int], jdk.internal.org.objectweb.asm.ByteVector)}
; {var579=jdk.internal.org.objectweb.asm.MethodWriter, var3621=r0, var3290=i0, var3790=i1, var731=i10, var1968=$r1, var3032=i2, var1209=i11, var2417=$r24, var3015=i13, var427=$i3, var387=$i16, var2758=$i4, var96=jdk.internal.org.objectweb.asm.ClassWriter, var1364=$r3, var3666=jdk.internal.org.objectweb.asm.Item, var1435=$r4, var3014=$i6, var1574=$r5, var1815=$r6, var1129=jdk.internal.org.objectweb.asm.ByteVector, var2035=$r20, var801=$r21, var1818=$r22, var3820=$r23, var1729=$i14}
; {jdk.internal.org.objectweb.asm.MethodWriter=var579, r0=var3621, i0=var3290, i1=var3790, i10=var731, $r1=var1968, i2=var3032, i11=var1209, $r24=var2417, i13=var3015, $i3=var427, $i16=var387, $i4=var2758, jdk.internal.org.objectweb.asm.ClassWriter=var96, $r3=var1364, jdk.internal.org.objectweb.asm.Item=var3666, $r4=var1435, $i6=var3014, $r5=var1574, $r6=var1815, jdk.internal.org.objectweb.asm.ByteVector=var1129, $r20=var2035, $r21=var801, $r22=var1818, $r23=var3820, $i14=var1729}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.MethodWriter;	i0 := @parameter0: int;	i1 := @parameter1: int;	i10 = i0;	if i10 >= i1 goto return;	$r1 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;	i2 = $r1[i10];	i11 = i2 & -268435456;	if i11 != 0 goto $r24 = new java.lang.StringBuilder;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	i13 = i11 >> 28;	$i3 = i13;	$i16 = (int) -1;	i13 = i13 + $i16;	if $i3 <= 0 goto $i4 = i2 & 267386880;	$i4 = i2 & 267386880;	if $i4 != 24117248 goto $i5 = i2 & 15;	virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	$r3 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw>;	$r4 = $r3.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item[] typeTable>;	$i6 = i2 & 1048575;	$r5 = $r4[$i6];	$r6 = $r5.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1>;	virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	goto [?= $r20 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ByteVector stackMap>];	$r20 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ByteVector stackMap>;	$r21 = virtualinvoke $r20.<jdk.internal.org.objectweb.asm.ByteVector: jdk.internal.org.objectweb.asm.ByteVector putByte(int)>(7);	$r22 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw>;	$r23 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$i14 = virtualinvoke $r22.<jdk.internal.org.objectweb.asm.ClassWriter: int newClass(java.lang.String)>($r23);	virtualinvoke $r21.<jdk.internal.org.objectweb.asm.ByteVector: jdk.internal.org.objectweb.asm.ByteVector putShort(int)>($i14);	i10 = i10 + 1;	goto [?= (branch)];	if i10 >= i1 goto return;	return
;block_num 11
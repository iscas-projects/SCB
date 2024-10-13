(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2120 0)
(declare-sort var3856 0)
(declare-sort var443 0)
(declare-sort var2302 0)
(declare-sort var3708 0)
(declare-sort var3700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun enumConstants/-659022926 (var2120) (Array Int var3856))
(declare-fun name/1633728430 (var3856) String)
(declare-fun getBytes/-163691139 (String var443) (Array Int Int))
(declare-fun nameWithColonUTF8/-2048851183 (var3708) (Array Int Int))
(declare-fun cast-from-var2120-to-var3708 (var2120) var3708)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3700_copyOf/317732420 ((Array Int Int) Int) (Array Int Int))
(declare-const null-var2120 var2120)
(declare-const null-Int Int)
(declare-const var2302-UTF_8 var443)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2892 var2120) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterEnum 
(assert (not (= var2892 null-var2120)))
(declare-const var2925 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2925 null-Int)))
(define-const var2717 (Array Int var3856) (enumConstants/-659022926 var2892)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: java.lang.Enum[] enumConstants> 
(define-const var1896 var3856 (select var2717 var2925)) ; Statement: $r2 = $r1[i0] 
(assert true)
(define-const var3627 String (name/1633728430 var1896)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.Enum: java.lang.String name()>() 
(define-const var141 var443 var2302-UTF_8) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var1708 (Array Int Int) (getBytes/-163691139 var3627 var141)) ; Statement: r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var754 (Array Int Int) (nameWithColonUTF8/-2048851183 (cast-from-var2120-to-var3708 var2892))) ; Statement: $r7 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: byte[] nameWithColonUTF8> 
(define-const var2003 (Array Int Int) (nameWithColonUTF8/-2048851183 (cast-from-var2120-to-var3708 var2892))) ; Statement: $r6 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: byte[] nameWithColonUTF8> 
(define-const var52 Int (getLength-Arr-Int-1 var2003)) ; Statement: $i2 = lengthof $r6 
(define-const var1108 Int (getLength-Arr-Int-1 var1708)) ; Statement: $i1 = lengthof r5 
(define-const var436 Int (+ var52 var1108)) ; Statement: $i3 = $i2 + $i1 
(define-const var2032 Int (+ var436 2)) ; Statement: $i4 = $i3 + 2 
(define-const var1471 (Array Int Int) (var3700_copyOf/317732420 var754 var2032)) ; Statement: r8 = staticinvoke <java.util.Arrays: byte[] copyOf(byte[],int)>($r7, $i4) 
(define-const var1087 (Array Int Int) (nameWithColonUTF8/-2048851183 (cast-from-var2120-to-var3708 var2892))) ; Statement: $r9 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: byte[] nameWithColonUTF8> 
(define-const var1616 Int (getLength-Arr-Int-1 var1087)) ; Statement: $i5 = lengthof $r9 
(declare-const var1471!1 (Array Int Int))
(assert (not (= var1471!1 null-__Array__Int__Int__)))
(assert (= (select var1471!1 var1616) 34)) ; Statement: r8[$i5] = 34 
(define-const var3072 (Array Int Int) (nameWithColonUTF8/-2048851183 (cast-from-var2120-to-var3708 var2892))) ; Statement: $r10 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: byte[] nameWithColonUTF8> 
(define-const var1364 Int (getLength-Arr-Int-1 var3072)) ; Statement: $i6 = lengthof $r10 
(define-const var485 Int (+ var1364 1)) ; Statement: i12 = $i6 + 1 
(define-const var3153 Int (getLength-Arr-Int-1 var1708)) ; Statement: i7 = lengthof r5 
(define-const var2999 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i7 goto $i8 = lengthof r8 
(assert (>= var2999 var3153)) ; Cond: i13 >= i7 
(define-const var2866 Int (getLength-Arr-Int-1 var1471!1)) ; Statement: $i8 = lengthof r8 
(define-const var2610 Int (- var2866 1)) ; Statement: $i9 = $i8 - 1 
(declare-const var1471!2 (Array Int Int))
(assert (not (= var1471!2 null-__Array__Int__Int__)))
(assert (= (select var1471!2 var2610) 34)) ; Statement: r8[$i9] = 34 
 ; Statement: return r8 
(check-sat)
(get-model)
(get-unsat-core)
; {enumConstants/-659022926=([com.alibaba.fastjson2.writer.FieldWriterEnum], java.lang.Enum[]), name/1633728430=([java.lang.Enum], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), nameWithColonUTF8/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], byte[]), cast-from-var2120-to-var3708=([com.alibaba.fastjson2.writer.FieldWriterEnum], com.alibaba.fastjson2.writer.FieldWriter), getLength-Arr-Int-1=([byte[]], int), var3700_copyOf/317732420=([byte[], int], byte[])}
; {var2120=com.alibaba.fastjson2.writer.FieldWriterEnum, var2892=r0, var2925=i0, var3856=java.lang.Enum, var2717=$r1, var1896=$r2, var3627=$r4, var443=java.nio.charset.Charset, var2302=java.nio.charset.StandardCharsets, var141=$r3, var1708=r5, var3708=com.alibaba.fastjson2.writer.FieldWriter, var754=$r7, var2003=$r6, var52=$i2, var1108=$i1, var436=$i3, var2032=$i4, var3700=java.util.Arrays, var1471=r8, var1087=$r9, var1616=$i5, var3072=$r10, var1364=$i6, var485=i12, var3153=i7, var2999=i13, var2866=$i8, var2610=$i9}
; {com.alibaba.fastjson2.writer.FieldWriterEnum=var2120, r0=var2892, i0=var2925, java.lang.Enum=var3856, $r1=var2717, $r2=var1896, $r4=var3627, java.nio.charset.Charset=var443, java.nio.charset.StandardCharsets=var2302, $r3=var141, r5=var1708, com.alibaba.fastjson2.writer.FieldWriter=var3708, $r7=var754, $r6=var2003, $i2=var52, $i1=var1108, $i3=var436, $i4=var2032, java.util.Arrays=var3700, r8=var1471, $r9=var1087, $i5=var1616, $r10=var3072, $i6=var1364, i12=var485, i7=var3153, i13=var2999, $i8=var2866, $i9=var2610}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterEnum;	i0 := @parameter0: int;	$r1 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: java.lang.Enum[] enumConstants>;	$r2 = $r1[i0];	$r4 = virtualinvoke $r2.<java.lang.Enum: java.lang.String name()>();	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r7 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: byte[] nameWithColonUTF8>;	$r6 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: byte[] nameWithColonUTF8>;	$i2 = lengthof $r6;	$i1 = lengthof r5;	$i3 = $i2 + $i1;	$i4 = $i3 + 2;	r8 = staticinvoke <java.util.Arrays: byte[] copyOf(byte[],int)>($r7, $i4);	$r9 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: byte[] nameWithColonUTF8>;	$i5 = lengthof $r9;	r8[$i5] = 34;	$r10 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnum: byte[] nameWithColonUTF8>;	$i6 = lengthof $r10;	i12 = $i6 + 1;	i7 = lengthof r5;	i13 = 0;	if i13 >= i7 goto $i8 = lengthof r8;	$i8 = lengthof r8;	$i9 = $i8 - 1;	r8[$i9] = 34;	return r8
;block_num 3
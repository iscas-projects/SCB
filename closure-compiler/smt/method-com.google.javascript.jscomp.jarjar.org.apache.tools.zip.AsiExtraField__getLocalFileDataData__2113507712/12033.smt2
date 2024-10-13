(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3654 0)
(declare-sort var435 0)
(declare-sort var1809 0)
(declare-sort var2921 0)
(declare-sort var2181 0)
(declare-sort var2001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLocalFileDataLength/219633214 (var3654) var435)
(declare-fun getValue/249171271 (var435) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getMode/-1076651565 (var3654) Int)
(declare-fun var435_getBytes/-1521889443 (Int) (Array Int Int))
(declare-fun var1809_arraycopy/-325913181 (var2921 Int var2921 Int Int) void)
(declare-fun cast-from-__Array__Int__Int__-to-var2921 ((Array Int Int)) var2921)
(declare-fun getLinkedFile/-758387313 (var3654) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2181_getBytes/-1938722040 (Int) (Array Int Int))
(declare-fun getUserId/-1476566000 (var3654) Int)
(declare-fun getGroupId/1443936138 (var3654) Int)
(declare-fun crc/-736190852 (var3654) var2001)
(declare-fun reset/2089457514 (var2001) void)
(declare-fun update/-1141632158 (var2001 (Array Int Int)) void)
(declare-fun getValue/212411758 (var2001) Int)
(declare-const null-var3654 var3654)
(declare-const var122 var3654) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField 
(assert (not (= var122 null-var3654)))
(assert true)
(define-const var3462 var435 (getLocalFileDataLength/219633214 var122)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort getLocalFileDataLength()>() 
(assert true)
(define-const var373 Int (getValue/249171271 var3462)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort: int getValue()>() 
(define-const var3772 Int (- var373 4)) ; Statement: $i1 = $i0 - 4 
(define-const var1490 (Array Int Int) arr-Int-init) ; Statement: r2 = newarray (byte)[$i1] 
(assert true)
(define-const var2482 Int (getMode/-1076651565 var122)) ; Statement: $i2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: int getMode()>() 
(define-const var2960 (Array Int Int) (var435_getBytes/-1521889443 var2482)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort: byte[] getBytes(int)>($i2) 
;(assert (var1809_arraycopy/-325913181 (cast-from-__Array__Int__Int__-to-var2921 var2960) 0 (cast-from-__Array__Int__Int__-to-var2921 var1490) 0 2)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r3, 0, r2, 0, 2) 

(declare-const var2960!1 (Array Int Int))
(declare-const var821 Int)
(declare-const var1490!1 (Array Int Int))
(declare-const var821!1 Int)
(declare-const var2300 Int)
(assert true)
(define-const var89 String (getLinkedFile/-758387313 var122)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.lang.String getLinkedFile()>() 
(assert true)
(define-const var1743 (Array Int Int) (getBytes/1068683673 var89)) ; Statement: r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>() 
(define-const var1144 Int (getLength-Arr-Int-1 var1743)) ; Statement: $i3 = lengthof r5 
(define-const var2832 Int (cast-from-Int-to-Int var1144)) ; Statement: $l4 = (long) $i3 
(define-const var3569 (Array Int Int) (var2181_getBytes/-1938722040 var2832)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong: byte[] getBytes(long)>($l4) 
;(assert (var1809_arraycopy/-325913181 (cast-from-__Array__Int__Int__-to-var2921 var3569) 0 (cast-from-__Array__Int__Int__-to-var2921 var1490!1) 2 4)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r6, 0, r2, 2, 4) 

(declare-const var3569!1 (Array Int Int))
(declare-const var821!2 Int)
(declare-const var1490!2 (Array Int Int))
(declare-const var2300!1 Int)
(declare-const var1851 Int)
(assert true)
(define-const var1825 Int (getUserId/-1476566000 var122)) ; Statement: $i5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: int getUserId()>() 
(define-const var901 (Array Int Int) (var435_getBytes/-1521889443 var1825)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort: byte[] getBytes(int)>($i5) 
;(assert (var1809_arraycopy/-325913181 (cast-from-__Array__Int__Int__-to-var2921 var901) 0 (cast-from-__Array__Int__Int__-to-var2921 var1490!2) 6 2)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r7, 0, r2, 6, 2) 

(declare-const var901!1 (Array Int Int))
(declare-const var821!3 Int)
(declare-const var1490!3 (Array Int Int))
(declare-const var2935 Int)
(declare-const var2300!2 Int)
(assert true)
(define-const var167 Int (getGroupId/1443936138 var122)) ; Statement: $i6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: int getGroupId()>() 
(define-const var726 (Array Int Int) (var435_getBytes/-1521889443 var167)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort: byte[] getBytes(int)>($i6) 
;(assert (var1809_arraycopy/-325913181 (cast-from-__Array__Int__Int__-to-var2921 var726) 0 (cast-from-__Array__Int__Int__-to-var2921 var1490!3) 8 2)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r8, 0, r2, 8, 2) 

(declare-const var726!1 (Array Int Int))
(declare-const var821!4 Int)
(declare-const var1490!4 (Array Int Int))
(declare-const var1505 Int)
(declare-const var2300!3 Int)
(define-const var3661 Int (getLength-Arr-Int-1 var1743)) ; Statement: $i7 = lengthof r5 
;(assert (var1809_arraycopy/-325913181 (cast-from-__Array__Int__Int__-to-var2921 var1743) 0 (cast-from-__Array__Int__Int__-to-var2921 var1490!4) 10 var3661)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r5, 0, r2, 10, $i7) 

(declare-const var1743!1 (Array Int Int))
(declare-const var821!5 Int)
(declare-const var1490!5 (Array Int Int))
(declare-const var2211 Int)
(declare-const var3661!1 Int)
(define-const var3003 var2001 (crc/-736190852 var122)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.util.zip.CRC32 crc> 
(assert true)
;(assert (reset/2089457514 var3003)) ; Statement: virtualinvoke $r9.<java.util.zip.CRC32: void reset()>() 

(declare-const var3003!1 var2001)
(define-const var2705 var2001 (crc/-736190852 var122)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.util.zip.CRC32 crc> 
(assert true)
;(assert (update/-1141632158 var2705 var1490!5)) ; Statement: virtualinvoke $r10.<java.util.zip.CRC32: void update(byte[])>(r2) 

(declare-const var2705!1 var2001)
(declare-const var1490!6 (Array Int Int))
(define-const var3900 var2001 (crc/-736190852 var122)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.util.zip.CRC32 crc> 
(assert true)
(define-const var1961 Int (getValue/212411758 var3900)) ; Statement: l8 = virtualinvoke $r11.<java.util.zip.CRC32: long getValue()>() 
(define-const var410 Int (getLength-Arr-Int-1 var1490!6)) ; Statement: $i9 = lengthof r2 
(define-const var1361 Int (+ var410 4)) ; Statement: $i10 = $i9 + 4 
(define-const var241 (Array Int Int) arr-Int-init) ; Statement: r12 = newarray (byte)[$i10] 
(define-const var1396 (Array Int Int) (var2181_getBytes/-1938722040 var1961)) ; Statement: $r13 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong: byte[] getBytes(long)>(l8) 
;(assert (var1809_arraycopy/-325913181 (cast-from-__Array__Int__Int__-to-var2921 var1396) 0 (cast-from-__Array__Int__Int__-to-var2921 var241) 0 4)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r13, 0, r12, 0, 4) 

(declare-const var1396!1 (Array Int Int))
(declare-const var821!6 Int)
(declare-const var241!1 (Array Int Int))
(declare-const var821!7 Int)
(declare-const var1851!1 Int)
(define-const var2292 Int (getLength-Arr-Int-1 var1490!6)) ; Statement: $i11 = lengthof r2 
;(assert (var1809_arraycopy/-325913181 (cast-from-__Array__Int__Int__-to-var2921 var1490!6) 0 (cast-from-__Array__Int__Int__-to-var2921 var241!1) 4 var2292)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r2, 0, r12, 4, $i11) 

(declare-const var1490!7 (Array Int Int))
(declare-const var821!8 Int)
(declare-const var241!2 (Array Int Int))
(declare-const var1851!2 Int)
(declare-const var2292!1 Int)
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getLocalFileDataLength/219633214=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField], com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort), getValue/249171271=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort], int), arr-Int-init=([], byte[]), getMode/-1076651565=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField], int), var435_getBytes/-1521889443=([int], byte[]), var1809_arraycopy/-325913181=([java.lang.Object, int, java.lang.Object, int, int], void), cast-from-__Array__Int__Int__-to-var2921=([byte[]], java.lang.Object), getLinkedFile/-758387313=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getLength-Arr-Int-1=([byte[]], int), cast-from-Int-to-Int=([int], long), var2181_getBytes/-1938722040=([long], byte[]), getUserId/-1476566000=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField], int), getGroupId/1443936138=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField], int), crc/-736190852=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField], java.util.zip.CRC32), reset/2089457514=([java.util.zip.CRC32], void), update/-1141632158=([java.util.zip.CRC32, byte[]], void), getValue/212411758=([java.util.zip.CRC32], long)}
; {var3654=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField, var122=r0, var435=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort, var3462=$r1, var373=$i0, var3772=$i1, var1490=r2, var2482=$i2, var2960=$r3, var1809=java.lang.System, var2921=java.lang.Object, var821=0, var2300=2, var89=$r4, var1743=r5, var1144=$i3, var2832=$l4, var2181=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong, var3569=$r6, var1851=4, var1825=$i5, var901=$r7, var2935=6, var167=$i6, var726=$r8, var1505=8, var3661=$i7, var2211=10, var2001=java.util.zip.CRC32, var3003=$r9, var2705=$r10, var3900=$r11, var1961=l8, var410=$i9, var1361=$i10, var241=r12, var1396=$r13, var2292=$i11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField=var3654, r0=var122, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort=var435, $r1=var3462, $i0=var373, $i1=var3772, r2=var1490, $i2=var2482, $r3=var2960, java.lang.System=var1809, java.lang.Object=var2921, 0=var821, 2=var2300, $r4=var89, r5=var1743, $i3=var1144, $l4=var2832, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong=var2181, $r6=var3569, 4=var1851, $i5=var1825, $r7=var901, 6=var2935, $i6=var167, $r8=var726, 8=var1505, $i7=var3661, 10=var2211, java.util.zip.CRC32=var2001, $r9=var3003, $r10=var2705, $r11=var3900, l8=var1961, $i9=var410, $i10=var1361, r12=var241, $r13=var1396, $i11=var2292}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort getLocalFileDataLength()>();	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort: int getValue()>();	$i1 = $i0 - 4;	r2 = newarray (byte)[$i1];	$i2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: int getMode()>();	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort: byte[] getBytes(int)>($i2);	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r3, 0, r2, 0, 2);	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.lang.String getLinkedFile()>();	r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>();	$i3 = lengthof r5;	$l4 = (long) $i3;	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong: byte[] getBytes(long)>($l4);	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r6, 0, r2, 2, 4);	$i5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: int getUserId()>();	$r7 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort: byte[] getBytes(int)>($i5);	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r7, 0, r2, 6, 2);	$i6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: int getGroupId()>();	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort: byte[] getBytes(int)>($i6);	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r8, 0, r2, 8, 2);	$i7 = lengthof r5;	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r5, 0, r2, 10, $i7);	$r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.util.zip.CRC32 crc>;	virtualinvoke $r9.<java.util.zip.CRC32: void reset()>();	$r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.util.zip.CRC32 crc>;	virtualinvoke $r10.<java.util.zip.CRC32: void update(byte[])>(r2);	$r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.util.zip.CRC32 crc>;	l8 = virtualinvoke $r11.<java.util.zip.CRC32: long getValue()>();	$i9 = lengthof r2;	$i10 = $i9 + 4;	r12 = newarray (byte)[$i10];	$r13 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong: byte[] getBytes(long)>(l8);	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r13, 0, r12, 0, 4);	$i11 = lengthof r2;	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r2, 0, r12, 4, $i11);	return r12
;block_num 1
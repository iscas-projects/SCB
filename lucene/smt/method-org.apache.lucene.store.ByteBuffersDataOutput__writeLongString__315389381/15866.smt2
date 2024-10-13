(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2778 0)
(declare-sort var567 0)
(declare-sort var2008 0)
(declare-sort var889 0)
(declare-sort var2201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2008_calcUTF16toUTF8Length/1943595681 (String Int Int) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun writeVInt/1930308024 (var889 Int) void)
(declare-fun cast-from-var2778-to-var889 (var2778) var889)
(declare-fun var2201_min/-1112089438 (Int Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-const null-var2778 var2778)
(declare-const null-String String)
(declare-const var3568 var2778) ; Statement: r1 := @this: org.apache.lucene.store.ByteBuffersDataOutput 
(assert (not (= var3568 null-var2778)))
(declare-const var2542 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2542 null-String)))
(assert true)
(define-const var3037 Int (length/-134980193 var2542)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3328 Int (var2008_calcUTF16toUTF8Length/1943595681 (cast-from-String-to-String var2542) 0 var3037)) ; Statement: i1 = staticinvoke <org.apache.lucene.util.UnicodeUtil: int calcUTF16toUTF8Length(java.lang.CharSequence,int,int)>(r0, 0, $i0) 
(assert true)
;(assert (writeVInt/1930308024 (cast-from-var2778-to-var889 var3568) var3328)) ; Statement: virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataOutput: void writeVInt(int)>(i1) 

(declare-const var3568!1 var2778)
(declare-const var3328!1 Int)
(define-const var1426 Int (var2201_min/-1112089438 var3328!1 3072)) ; Statement: $i2 = staticinvoke <java.lang.Math: int min(int,int)>(i1, 3072) 
(define-const var3143 (Array Int Int) arr-Int-init) ; Statement: r2 = newarray (byte)[$i2] 
(define-const var1878 Int 0) ; Statement: i9 = 0 
(assert true)
(define-const var2163 Int (length/-134980193 var2542)) ; Statement: i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i9 >= i3 goto return 
(assert (>= var1878 var2163)) ; Cond: i9 >= i3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2008_calcUTF16toUTF8Length/1943595681=([java.lang.CharSequence, int, int], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), writeVInt/1930308024=([org.apache.lucene.store.DataOutput, int], void), cast-from-var2778-to-var889=([org.apache.lucene.store.ByteBuffersDataOutput], org.apache.lucene.store.DataOutput), var2201_min/-1112089438=([int, int], int), arr-Int-init=([], byte[])}
; {var2778=org.apache.lucene.store.ByteBuffersDataOutput, var3568=r1, var2542=r0, var567=null_type, var3037=$i0, var2008=org.apache.lucene.util.UnicodeUtil, var3328=i1, var889=org.apache.lucene.store.DataOutput, var2201=java.lang.Math, var1426=$i2, var3143=r2, var1878=i9, var2163=i3}
; {org.apache.lucene.store.ByteBuffersDataOutput=var2778, r1=var3568, r0=var2542, null_type=var567, $i0=var3037, org.apache.lucene.util.UnicodeUtil=var2008, i1=var3328, org.apache.lucene.store.DataOutput=var889, java.lang.Math=var2201, $i2=var1426, r2=var3143, i9=var1878, i3=var2163}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r1 := @this: org.apache.lucene.store.ByteBuffersDataOutput;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	i1 = staticinvoke <org.apache.lucene.util.UnicodeUtil: int calcUTF16toUTF8Length(java.lang.CharSequence,int,int)>(r0, 0, $i0);	virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataOutput: void writeVInt(int)>(i1);	$i2 = staticinvoke <java.lang.Math: int min(int,int)>(i1, 3072);	r2 = newarray (byte)[$i2];	i9 = 0;	i3 = virtualinvoke r0.<java.lang.String: int length()>();	if i9 >= i3 goto return;	return
;block_num 3
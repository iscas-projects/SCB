(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun alphabets/1357768735 (var2990) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2990 var2990)
(declare-const null-Int Int)
(declare-const var3424 var2990) ; Statement: r1 := @this: cn.hutool.core.codec.Base16Codec 
(assert (not (= var3424 null-var2990)))
(declare-const var1812 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1812 null-Int)))
(define-const var1375 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1375)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1375!1 String)
(assert (= var1375!1 ""))
(assert true)
(define-const var2208 String (append/672562846 var1375!1 "\u005cu")) ; Statement: $r3 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u") 
(declare-const var1375!2 String)
(assert (= var1375!2 (str.++ var1375!1 "\u005cu")))
(define-const var3287 (Array Int Int) (alphabets/1357768735 var3424)) ; Statement: $r2 = r1.<cn.hutool.core.codec.Base16Codec: char[] alphabets> 
(define-const var1593 Int (cast-from-Int-to-Int var1812)) ; Statement: $i12 = (int) c0 
(define-const var3723 Int (div var1593 (to_int (^ 2 12)))) ; Statement: $i1 = $i12 >> 12 
(define-const var3237 Int (bv2nat (bvand ((_ int2bv 64) var3723) ((_ int2bv 64) 15)))) ; Statement: $i2 = $i1 & 15 
(define-const var326 Int (select var3287 var3237)) ; Statement: $c3 = $r2[$i2] 
(assert true)
(define-const var944 String (append/-1166366385 var2208 var326)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var2208!1 String)
(assert (str.prefixof var2208 var2208!1))
(define-const var491 (Array Int Int) (alphabets/1357768735 var3424)) ; Statement: $r4 = r1.<cn.hutool.core.codec.Base16Codec: char[] alphabets> 
(define-const var2656 Int (cast-from-Int-to-Int var1812)) ; Statement: $i13 = (int) c0 
(define-const var81 Int (div var2656 (to_int (^ 2 8)))) ; Statement: $i4 = $i13 >> 8 
(define-const var751 Int (bv2nat (bvand ((_ int2bv 64) var81) ((_ int2bv 64) 15)))) ; Statement: $i5 = $i4 & 15 
(define-const var892 Int (select var491 var751)) ; Statement: $c6 = $r4[$i5] 
(assert true)
(define-const var2682 String (append/-1166366385 var944 var892)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6) 
(declare-const var944!1 String)
(assert (str.prefixof var944 var944!1))
(define-const var318 (Array Int Int) (alphabets/1357768735 var3424)) ; Statement: $r6 = r1.<cn.hutool.core.codec.Base16Codec: char[] alphabets> 
(define-const var2475 Int (cast-from-Int-to-Int var1812)) ; Statement: $i14 = (int) c0 
(define-const var2379 Int (div var2475 (to_int (^ 2 4)))) ; Statement: $i7 = $i14 >> 4 
(define-const var3334 Int (bv2nat (bvand ((_ int2bv 64) var2379) ((_ int2bv 64) 15)))) ; Statement: $i8 = $i7 & 15 
(define-const var2174 Int (select var318 var3334)) ; Statement: $c9 = $r6[$i8] 
(assert true)
(define-const var2898 String (append/-1166366385 var2682 var2174)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c9) 
(declare-const var2682!1 String)
(assert (str.prefixof var2682 var2682!1))
(define-const var1513 (Array Int Int) (alphabets/1357768735 var3424)) ; Statement: $r8 = r1.<cn.hutool.core.codec.Base16Codec: char[] alphabets> 
(define-const var2545 Int (bv2nat (bvand ((_ int2bv 64) var1812) ((_ int2bv 64) 15)))) ; Statement: $c10 = c0 & 15 
(define-const var413 Int (cast-from-Int-to-Int var2545)) ; Statement: $i15 = (int) $c10 
(define-const var2384 Int (select var1513 var413)) ; Statement: $c11 = $r8[$i15] 
(assert true)
(define-const var2977 String (append/-1166366385 var2898 var2384)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11) 
(declare-const var2898!1 String)
(assert (str.prefixof var2898 var2898!1))
(assert true)
(define-const var2303 String (toString/-2075883882 var2977)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), alphabets/1357768735=([cn.hutool.core.codec.Base16Codec], char[]), cast-from-Int-to-Int=([char], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2990=cn.hutool.core.codec.Base16Codec, var3424=r1, var1812=c0, var1375=$r12, var2208=$r3, var3287=$r2, var1593=$i12, var3723=$i1, var3237=$i2, var326=$c3, var944=$r5, var491=$r4, var2656=$i13, var81=$i4, var751=$i5, var892=$c6, var2682=$r7, var318=$r6, var2475=$i14, var2379=$i7, var3334=$i8, var2174=$c9, var2898=$r9, var1513=$r8, var2545=$c10, var413=$i15, var2384=$c11, var2977=$r10, var2303=$r11}
; {cn.hutool.core.codec.Base16Codec=var2990, r1=var3424, c0=var1812, $r12=var1375, $r3=var2208, $r2=var3287, $i12=var1593, $i1=var3723, $i2=var3237, $c3=var326, $r5=var944, $r4=var491, $i13=var2656, $i4=var81, $i5=var751, $c6=var892, $r7=var2682, $r6=var318, $i14=var2475, $i7=var2379, $i8=var3334, $c9=var2174, $r9=var2898, $r8=var1513, $c10=var2545, $i15=var413, $c11=var2384, $r10=var2977, $r11=var2303}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.codec.Base16Codec;	c0 := @parameter0: char;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u");	$r2 = r1.<cn.hutool.core.codec.Base16Codec: char[] alphabets>;	$i12 = (int) c0;	$i1 = $i12 >> 12;	$i2 = $i1 & 15;	$c3 = $r2[$i2];	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	$r4 = r1.<cn.hutool.core.codec.Base16Codec: char[] alphabets>;	$i13 = (int) c0;	$i4 = $i13 >> 8;	$i5 = $i4 & 15;	$c6 = $r4[$i5];	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6);	$r6 = r1.<cn.hutool.core.codec.Base16Codec: char[] alphabets>;	$i14 = (int) c0;	$i7 = $i14 >> 4;	$i8 = $i7 & 15;	$c9 = $r6[$i8];	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c9);	$r8 = r1.<cn.hutool.core.codec.Base16Codec: char[] alphabets>;	$c10 = c0 & 15;	$i15 = (int) $c10;	$c11 = $r8[$i15];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1
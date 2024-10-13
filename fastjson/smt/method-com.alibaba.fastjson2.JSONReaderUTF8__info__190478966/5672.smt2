(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2931 0)
(declare-sort var423 0)
(declare-sort var223 0)
(declare-sort var829 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/1287024874 (var223) Int)
(declare-fun cast-from-var2931-to-var223 (var2931) var223)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun ch/1287024874 (var223) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun bytes/956814203 (var2931) (Array Int Int))
(declare-fun start/956814203 (var2931) Int)
(declare-fun length/956814203 (var2931) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var829_min/-1112089438 (Int Int) Int)
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2931 var2931)
(declare-const null-String String)
(declare-const var2103 var2931) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8 
(assert (not (= var2103 null-var2931)))
(declare-const var3252 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3252 null-String)))
(define-const var1234 Int 1) ; Statement: i6 = 1 
(define-const var888 Int 0) ; Statement: i7 = 0 
(define-const var3344 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var3972 Int (offset/1287024874 (cast-from-var2931-to-var223 var2103))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset> 
 ; Statement: if i8 >= $i0 goto $r18 = new java.lang.StringBuilder 
(assert (>= var3344 var3972)) ; Cond: i8 >= $i0 
(define-const var1847 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1847)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1847!1 String)
(assert (= var1847!1 ""))
 ; Statement: if r2 == null goto $r9 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(assert (= var3252 null-String)) ; Cond: r2 == null 
(assert true)
(define-const var3729 String (append/672562846 var1847!1 "offset ")) ; Statement: $r9 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(declare-const var1847!2 String)
(assert (= var1847!2 (str.++ var1847!1 "offset ")))
(define-const var1663 Int (offset/1287024874 (cast-from-var2931-to-var223 var2103))) ; Statement: $i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset> 
(assert true)
(define-const var2136 String (append/-1001720160 var3729 var1663)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var3729!1 String)
(assert (str.prefixof var3729 var3729!1))
(assert true)
(define-const var3186 String (append/672562846 var2136 ", character ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ") 
(declare-const var2136!1 String)
(assert (= var2136!1 (str.++ var2136 ", character ")))
(define-const var1115 Int (ch/1287024874 (cast-from-var2931-to-var223 var2103))) ; Statement: $c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: char ch> 
(assert true)
(define-const var3550 String (append/-1166366385 var3186 var1115)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10) 
(declare-const var3186!1 String)
(assert (str.prefixof var3186 var3186!1))
(assert true)
(define-const var101 String (append/672562846 var3550 ", line ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ") 
(declare-const var3550!1 String)
(assert (= var3550!1 (str.++ var3550 ", line ")))
(assert true)
(define-const var2813 String (append/-1001720160 var101 var1234)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var101!1 String)
(assert (str.prefixof var101 var101!1))
(assert true)
(define-const var229 String (append/672562846 var2813 ", column ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var2813!1 String)
(assert (= var2813!1 (str.++ var2813 ", column ")))
(assert true)
(define-const var1917 String (append/-1001720160 var229 var888)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7) 
(declare-const var229!1 String)
(assert (str.prefixof var229 var229!1))
(assert true)
(define-const var3083 String (append/672562846 var1917 ", fastjson-version ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ") 
(declare-const var1917!1 String)
(assert (= var1917!1 (str.++ var1917 ", fastjson-version ")))
(assert true)
(define-const var323 String (append/672562846 var3083 "2.0.48")) ; Statement: $r3 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48") 
(declare-const var3083!1 String)
(assert (= var3083!1 (str.++ var3083 "2.0.48")))
 ; Statement: if i6 <= 1 goto $c11 = 32 
(assert (<= var1234 1)) ; Cond: i6 <= 1 
(define-const var1129 Int 32) ; Statement: $c11 = 32 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var323 var1129)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11) 
(declare-const var323!1 String)
(assert (str.prefixof var323 var323!1))
(define-const var2385 String String-init) ; Statement: $r19 = new java.lang.String 
(define-const var515 (Array Int Int) (bytes/956814203 var2103)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes> 
(define-const var2398 Int (start/956814203 var2103)) ; Statement: $i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int start> 
(define-const var3364 Int (length/956814203 var2103)) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int length> 
(define-const var2151 Int (cast-from-Int-to-Int 65535)) ; Statement: $i14 = (int) 65535 
(define-const var2028 Int (var829_min/-1112089438 var3364 var2151)) ; Statement: $i3 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i14) 
(assert true)
;(assert (<init>/-1380519146 var2385 var515 var2398 var2028)) ; Statement: specialinvoke $r19.<java.lang.String: void <init>(byte[],int,int)>($r5, $i2, $i3) 

(declare-const var2385!1 String)
(declare-const var515!1 (Array Int Int))
(declare-const var2398!1 Int)
(declare-const var2028!1 Int)
(assert true)
;(assert (append/672562846 var1847!2 var2385!1)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1847!3 String)
(assert (= var1847!3 (str.++ var1847!2 var2385!1)))
(assert true)
(define-const var1776 String (toString/-2075883882 var1847!3)) ; Statement: $r6 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var2931-to-var223=([com.alibaba.fastjson2.JSONReaderUTF8], com.alibaba.fastjson2.JSONReader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), bytes/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], byte[]), start/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], int), length/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], int), cast-from-Int-to-Int=([int], int), var829_min/-1112089438=([int, int], int), <init>/-1380519146=([java.lang.String, byte[], int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2931=com.alibaba.fastjson2.JSONReaderUTF8, var2103=r0, var3252=r2, var423=null_type, var1234=i6, var888=i7, var3344=i8, var223=com.alibaba.fastjson2.JSONReader, var3972=$i0, var1847=$r18, var3729=$r9, var1663=$i9, var2136=$r10, var3186=$r11, var1115=$c10, var3550=$r12, var101=$r13, var2813=$r14, var229=$r15, var1917=$r16, var3083=$r17, var323=$r3, var1129=$c11, var2385=$r19, var515=$r5, var2398=$i2, var3364=$i1, var2151=$i14, var829=java.lang.Math, var2028=$i3, var1776=$r6}
; {com.alibaba.fastjson2.JSONReaderUTF8=var2931, r0=var2103, r2=var3252, null_type=var423, i6=var1234, i7=var888, i8=var3344, com.alibaba.fastjson2.JSONReader=var223, $i0=var3972, $r18=var1847, $r9=var3729, $i9=var1663, $r10=var2136, $r11=var3186, $c10=var1115, $r12=var3550, $r13=var101, $r14=var2813, $r15=var229, $r16=var1917, $r17=var3083, $r3=var323, $c11=var1129, $r19=var2385, $r5=var515, $i2=var2398, $i1=var3364, $i14=var2151, java.lang.Math=var829, $i3=var2028, $r6=var1776}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: void <init>(byte[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: void <init>(byte[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8;	r2 := @parameter0: java.lang.String;	i6 = 1;	i7 = 0;	i8 = 0;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset>;	if i8 >= $i0 goto $r18 = new java.lang.StringBuilder;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	if r2 == null goto $r9 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$r9 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ");	$c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: char ch>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ");	$r3 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48");	if i6 <= 1 goto $c11 = 32;	$c11 = 32;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11);	$r19 = new java.lang.String;	$r5 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes>;	$i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int start>;	$i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int length>;	$i14 = (int) 65535;	$i3 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i14);	specialinvoke $r19.<java.lang.String: void <init>(byte[],int,int)>($r5, $i2, $i3);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r6 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 6
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1688 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun unicode/-1140632295 (var1688) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun code/-1140632295 (var1688) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1688 var1688)
(declare-const var3847 var1688) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding$Simple8BitChar 
(assert (not (= var3847 null-var1688)))
(define-const var1408 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1408)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1408!1 String)
(assert (= var1408!1 ""))
(assert true)
(define-const var2112 String (append/672562846 var1408!1 "0x")) ; Statement: $r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0x") 
(declare-const var1408!2 String)
(assert (= var1408!2 (str.++ var1408!1 "0x")))
(define-const var886 Int (unicode/-1140632295 var3847)) ; Statement: $c0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding$Simple8BitChar: char unicode> 
(define-const var3280 Int (bv2nat (bvand ((_ int2bv 64) 65535) ((_ int2bv 64) var886)))) ; Statement: $c1 = 65535 & $c0 
(define-const var975 Int (cast-from-Int-to-Int var3280)) ; Statement: $i4 = (int) $c1 
(define-const var2634 String (Int_toHexString/1865784998 var975)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4) 
(assert true)
(define-const var2126 String (append/672562846 var2112 var2634)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2112!1 String)
(assert (= var2112!1 (str.++ var2112 var2634)))
(assert true)
(define-const var2686 String (append/672562846 var2126 "->0x")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("->0x") 
(declare-const var2126!1 String)
(assert (= var2126!1 (str.++ var2126 "->0x")))
(define-const var1215 Int (code/-1140632295 var3847)) ; Statement: $b2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding$Simple8BitChar: byte code> 
(define-const var1966 Int (cast-from-Int-to-Int var1215)) ; Statement: $s5 = (short) $b2 
(define-const var3329 Int (bv2nat (bvand ((_ int2bv 64) 255) ((_ int2bv 64) var1966)))) ; Statement: $s3 = 255 & $s5 
(define-const var2276 Int (cast-from-Int-to-Int var3329)) ; Statement: $i6 = (int) $s3 
(define-const var2843 String (Int_toHexString/1865784998 var2276)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6) 
(assert true)
(define-const var646 String (append/672562846 var2686 var2843)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2686!1 String)
(assert (= var2686!1 (str.++ var2686 var2843)))
(assert true)
(define-const var3282 String (toString/-2075883882 var646)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), unicode/-1140632295=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding$Simple8BitChar], char), cast-from-Int-to-Int=([char], int), Int_toHexString/1865784998=([int], java.lang.String), code/-1140632295=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding$Simple8BitChar], byte), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1688=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding$Simple8BitChar, var3847=r1, var1408=$r9, var2112=$r3, var886=$c0, var3280=$c1, var975=$i4, var2634=$r2, var2126=$r4, var2686=$r6, var1215=$b2, var1966=$s5, var3329=$s3, var2276=$i6, var2843=$r5, var646=$r7, var3282=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding$Simple8BitChar=var1688, r1=var3847, $r9=var1408, $r3=var2112, $c0=var886, $c1=var3280, $i4=var975, $r2=var2634, $r4=var2126, $r6=var2686, $b2=var1215, $s5=var1966, $s3=var3329, $i6=var2276, $r5=var2843, $r7=var646, $r8=var3282}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding$Simple8BitChar;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0x");	$c0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding$Simple8BitChar: char unicode>;	$c1 = 65535 & $c0;	$i4 = (int) $c1;	$r2 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("->0x");	$b2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding$Simple8BitChar: byte code>;	$s5 = (short) $b2;	$s3 = 255 & $s5;	$i6 = (int) $s3;	$r5 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1
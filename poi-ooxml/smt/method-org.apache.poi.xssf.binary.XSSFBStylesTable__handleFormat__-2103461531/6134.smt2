(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1612 0)
(declare-sort var901 0)
(declare-sort var3961 0)
(declare-sort var644 0)
(declare-sort var1644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var901_readXLWideString/38065351 ((Array Int Int) Int String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun numberFormats/-1197559905 (var1612) var3961)
(declare-fun Int_valueOf/-440343065 (Int) Int)
(declare-fun var644_put/1464166817 (var644 var1644 var1644) var1644)
(declare-fun cast-from-var3961-to-var644 (var3961) var644)
(declare-fun cast-from-Int-to-var1644 (Int) var1644)
(declare-fun cast-from-String-to-var1644 (String) var1644)
(declare-const null-var1612 var1612)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3789 var1612) ; Statement: r3 := @this: org.apache.poi.xssf.binary.XSSFBStylesTable 
(assert (not (= var3789 null-var1612)))
(declare-const var1458 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1458 null-__Array__Int__Int__)))
(define-const var1680 Int (select var1458 0)) ; Statement: $b0 = r0[0] 
(define-const var3333 Int (cast-from-Int-to-Int var1680)) ; Statement: $s3 = (short) $b0 
(define-const var3757 Int (bv2nat (bvand ((_ int2bv 64) var3333) ((_ int2bv 64) 255)))) ; Statement: s1 = $s3 & 255 
(define-const var1700 Int (cast-from-Int-to-Int var3757)) ; Statement: $i4 = (int) s1 
 ; Statement: if $i4 <= 32767 goto $r8 = new java.lang.StringBuilder 
(assert (<= var1700 32767)) ; Cond: $i4 <= 32767 
(define-const var2413 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2413)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2413!1 String)
(assert (= var2413!1 ""))
;(assert (var901_readXLWideString/38065351 var1458 2 var2413!1)) ; Statement: staticinvoke <org.apache.poi.xssf.binary.XSSFBUtils: int readXLWideString(byte[],int,java.lang.StringBuilder)>(r0, 2, $r8) 

(declare-const var1458!1 (Array Int Int))
(declare-const var1024 Int)
(declare-const var2413!2 String)
(assert true)
(define-const var3678 String (toString/-2075883882 var2413!2)) ; Statement: r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var247 var3961 (numberFormats/-1197559905 var3789)) ; Statement: $r4 = r3.<org.apache.poi.xssf.binary.XSSFBStylesTable: java.util.SortedMap numberFormats> 
(define-const var852 Int (cast-from-Int-to-Int var3757)) ; Statement: $s2 = (short) s1 
(define-const var212 Int (Int_valueOf/-440343065 var852)) ; Statement: $r5 = staticinvoke <java.lang.Short: java.lang.Short valueOf(short)>($s2) 
;(assert (var644_put/1464166817 (cast-from-var3961-to-var644 var247) (cast-from-Int-to-var1644 var212) (cast-from-String-to-var1644 var3678))) ; Statement: interfaceinvoke $r4.<java.util.SortedMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, r2) 

(declare-const var247!1 var3961)
(declare-const var212!1 Int)
(declare-const var3678!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], short), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var901_readXLWideString/38065351=([byte[], int, java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), numberFormats/-1197559905=([org.apache.poi.xssf.binary.XSSFBStylesTable], java.util.SortedMap), Int_valueOf/-440343065=([short], java.lang.Short), var644_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3961-to-var644=([java.util.SortedMap], java.util.Map), cast-from-Int-to-var1644=([java.lang.Short], java.lang.Object), cast-from-String-to-var1644=([java.lang.String], java.lang.Object)}
; {var1612=org.apache.poi.xssf.binary.XSSFBStylesTable, var3789=r3, var1458=r0, var1680=$b0, var3333=$s3, var3757=s1, var1700=$i4, var2413=$r8, var901=org.apache.poi.xssf.binary.XSSFBUtils, var1024=2, var3678=r2, var3961=java.util.SortedMap, var247=$r4, var852=$s2, var212=$r5, var644=java.util.Map, var1644=java.lang.Object}
; {org.apache.poi.xssf.binary.XSSFBStylesTable=var1612, r3=var3789, r0=var1458, $b0=var1680, $s3=var3333, s1=var3757, $i4=var1700, $r8=var2413, org.apache.poi.xssf.binary.XSSFBUtils=var901, 2=var1024, r2=var3678, java.util.SortedMap=var3961, $r4=var247, $s2=var852, $r5=var212, java.util.Map=var644, java.lang.Object=var1644}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.poi.xssf.binary.XSSFBStylesTable;	r0 := @parameter0: byte[];	$b0 = r0[0];	$s3 = (short) $b0;	s1 = $s3 & 255;	$i4 = (int) s1;	if $i4 <= 32767 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	staticinvoke <org.apache.poi.xssf.binary.XSSFBUtils: int readXLWideString(byte[],int,java.lang.StringBuilder)>(r0, 2, $r8);	r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = r3.<org.apache.poi.xssf.binary.XSSFBStylesTable: java.util.SortedMap numberFormats>;	$s2 = (short) s1;	$r5 = staticinvoke <java.lang.Short: java.lang.Short valueOf(short)>($s2);	interfaceinvoke $r4.<java.util.SortedMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, r2);	return
;block_num 2
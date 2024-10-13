(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var931 0)
(declare-sort var466 0)
(declare-sort var1510 0)
(declare-sort var842 0)
(declare-sort var1052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun ordinal/-291641772 (var842) Int)
(declare-fun cast-from-var466-to-var842 (var466) var842)
(declare-fun valueToRoman/-151546093 (var931 Int) String)
(declare-fun toLowerCase/1946809429 (String var1052) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var931 var931)
(declare-const null-var466 var466)
(declare-const null-Int Int)
(declare-const var1510-$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber (Array Int Int))
(declare-const var1052-ROOT var1052)
(declare-const var2636 var931) ; Statement: r3 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape 
(assert (not (= var2636 null-var931)))
(declare-const var274 var466) ; Statement: r1 := @parameter0: org.apache.poi.xssf.usermodel.ListAutoNumber 
(assert (not (= var274 null-var466)))
(declare-const var1829 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1829 null-Int)))
(define-const var3337 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3337)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3337!1 String)
(assert (= var3337!1 ""))
(define-const var3700 (Array Int Int) var1510-$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber) ; Statement: $r2 = <org.apache.poi.xssf.usermodel.XSSFSimpleShape$1: int[] $SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber> 
(assert true)
(define-const var596 Int (ordinal/-291641772 (cast-from-var466-to-var842 var274))) ; Statement: $i0 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.ListAutoNumber: int ordinal()>() 
(define-const var1655 Int (select var3700 var596)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 2: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 3: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 4: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 5: goto $r17 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 6: goto $r15 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 7: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 8: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 9: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 11: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 12: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 13: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 14: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 15: goto $r6 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     case 16: goto $r4 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     default: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(8226); } 
(assert (and (= var1655 15) (and (not (= var1655 14)) (and (not (= var1655 13)) (and (not (= var1655 12)) (and (not (= var1655 11)) (and (not (= var1655 10)) (and (not (= var1655 9)) (and (not (= var1655 8)) (and (not (= var1655 7)) (and (not (= var1655 6)) (and (not (= var1655 5)) (and (not (= var1655 4)) (and (not (= var1655 3)) (and (not (= var1655 2)) (and (not (= var1655 1)) true)))))))))))))))) ; Intersect: Cond: $i1 == 15  and Intersect: Negate: Cond: $i1 == 14   and Intersect: Negate: Cond: $i1 == 13   and Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional               
(assert true)
(define-const var3444 String (valueToRoman/-151546093 var2636 var1829)) ; Statement: $r6 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2) 
(define-const var2738 var1052 var1052-ROOT) ; Statement: $r5 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1424 String (toLowerCase/1946809429 var3444 var2738)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r5) 
(assert true)
;(assert (append/672562846 var3337!1 var1424)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3337!2 String)
(assert (= var3337!2 (str.++ var3337!1 var1424)))
(assert true)
;(assert (append/-1166366385 var3337!2 46)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3337!3 String)
(assert (str.prefixof var3337!2 var3337!3))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3337!3 " ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3337!4 String)
(assert (= var3337!4 (str.++ var3337!3 " ")))
(assert true)
(define-const var2367 String (toString/-2075883882 var3337!4)) ; Statement: $r25 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), ordinal/-291641772=([java.lang.Enum], int), cast-from-var466-to-var842=([org.apache.poi.xssf.usermodel.ListAutoNumber], java.lang.Enum), valueToRoman/-151546093=([org.apache.poi.xssf.usermodel.XSSFSimpleShape, int], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var931=org.apache.poi.xssf.usermodel.XSSFSimpleShape, var2636=r3, var466=org.apache.poi.xssf.usermodel.ListAutoNumber, var274=r1, var1829=i2, var3337=$r0, var1510=org.apache.poi.xssf.usermodel.XSSFSimpleShape$1, var3700=$r2, var842=java.lang.Enum, var596=$i0, var1655=$i1, var3444=$r6, var1052=java.util.Locale, var2738=$r5, var1424=$r7, var2367=$r25}
; {org.apache.poi.xssf.usermodel.XSSFSimpleShape=var931, r3=var2636, org.apache.poi.xssf.usermodel.ListAutoNumber=var466, r1=var274, i2=var1829, $r0=var3337, org.apache.poi.xssf.usermodel.XSSFSimpleShape$1=var1510, $r2=var3700, java.lang.Enum=var842, $i0=var596, $i1=var1655, $r6=var3444, java.util.Locale=var1052, $r5=var2738, $r7=var1424, $r25=var2367}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape;	r1 := @parameter0: org.apache.poi.xssf.usermodel.ListAutoNumber;	i2 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = <org.apache.poi.xssf.usermodel.XSSFSimpleShape$1: int[] $SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber>;	$i0 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.ListAutoNumber: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 2: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 3: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 4: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 5: goto $r17 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 6: goto $r15 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 7: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 8: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 9: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 11: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 12: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 13: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 14: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 15: goto $r6 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     case 16: goto $r4 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     default: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(8226); };	$r6 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);	$r5 = <java.util.Locale: java.util.Locale ROOT>;	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ")];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r25 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r25
;block_num 3
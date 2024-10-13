(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var95 0)
(declare-sort var2289 0)
(declare-sort var1466 0)
(declare-sort var1082 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun ordinal/-291641772 (var1082) Int)
(declare-fun cast-from-var2289-to-var1082 (var2289) var1082)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var95 var95)
(declare-const null-var2289 var2289)
(declare-const null-Int Int)
(declare-const var1466-$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber (Array Int Int))
(declare-const var389 var95) ; Statement: r3 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape 
(assert (not (= var389 null-var95)))
(declare-const var2049 var2289) ; Statement: r1 := @parameter0: org.apache.poi.xssf.usermodel.ListAutoNumber 
(assert (not (= var2049 null-var2289)))
(declare-const var568 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var568 null-Int)))
(define-const var2028 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2028)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2028!1 String)
(assert (= var2028!1 ""))
(define-const var3473 (Array Int Int) var1466-$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber) ; Statement: $r2 = <org.apache.poi.xssf.usermodel.XSSFSimpleShape$1: int[] $SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber> 
(assert true)
(define-const var3582 Int (ordinal/-291641772 (cast-from-var2289-to-var1082 var2049))) ; Statement: $i0 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.ListAutoNumber: int ordinal()>() 
(define-const var1217 Int (select var3473 var3582)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 2: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 3: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 4: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 5: goto $r17 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 6: goto $r15 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 7: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 8: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 9: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 11: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 12: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 13: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 14: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 15: goto $r6 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     case 16: goto $r4 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     default: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(8226); } 
(assert (and (not (= var1217 16)) (and (not (= var1217 15)) (and (not (= var1217 14)) (and (not (= var1217 13)) (and (not (= var1217 12)) (and (not (= var1217 11)) (and (not (= var1217 10)) (and (not (= var1217 9)) (and (not (= var1217 8)) (and (not (= var1217 7)) (and (not (= var1217 6)) (and (not (= var1217 5)) (and (not (= var1217 4)) (and (not (= var1217 3)) (and (not (= var1217 2)) (and (not (= var1217 1)) true))))))))))))))))) ; Intersect: Negate: Cond: $i1 == 16   and Intersect: Negate: Cond: $i1 == 15   and Intersect: Negate: Cond: $i1 == 14   and Intersect: Negate: Cond: $i1 == 13   and Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional                
(assert true)
;(assert (append/-1166366385 var2028!1 8226)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(8226) 
(declare-const var2028!2 String)
(assert (str.prefixof var2028!1 var2028!2))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2028!2 " ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2028!3 String)
(assert (= var2028!3 (str.++ var2028!2 " ")))
(assert true)
(define-const var1486 String (toString/-2075883882 var2028!3)) ; Statement: $r25 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2289-to-var1082=([org.apache.poi.xssf.usermodel.ListAutoNumber], java.lang.Enum), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var95=org.apache.poi.xssf.usermodel.XSSFSimpleShape, var389=r3, var2289=org.apache.poi.xssf.usermodel.ListAutoNumber, var2049=r1, var568=i2, var2028=$r0, var1466=org.apache.poi.xssf.usermodel.XSSFSimpleShape$1, var3473=$r2, var1082=java.lang.Enum, var3582=$i0, var1217=$i1, var1486=$r25}
; {org.apache.poi.xssf.usermodel.XSSFSimpleShape=var95, r3=var389, org.apache.poi.xssf.usermodel.ListAutoNumber=var2289, r1=var2049, i2=var568, $r0=var2028, org.apache.poi.xssf.usermodel.XSSFSimpleShape$1=var1466, $r2=var3473, java.lang.Enum=var1082, $i0=var3582, $i1=var1217, $r25=var1486}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape;	r1 := @parameter0: org.apache.poi.xssf.usermodel.ListAutoNumber;	i2 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = <org.apache.poi.xssf.usermodel.XSSFSimpleShape$1: int[] $SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber>;	$i0 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.ListAutoNumber: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 2: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 3: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 4: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 5: goto $r17 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 6: goto $r15 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 7: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 8: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 9: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 11: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 12: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 13: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 14: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 15: goto $r6 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     case 16: goto $r4 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     default: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(8226); };	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(8226);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r25 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r25
;block_num 3
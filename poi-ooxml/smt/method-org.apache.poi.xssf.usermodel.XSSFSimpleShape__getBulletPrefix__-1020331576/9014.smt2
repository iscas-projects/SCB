(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var565 0)
(declare-sort var3207 0)
(declare-sort var2730 0)
(declare-sort var3499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun ordinal/-291641772 (var3499) Int)
(declare-fun cast-from-var3207-to-var3499 (var3207) var3499)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var565 var565)
(declare-const null-var3207 var3207)
(declare-const null-Int Int)
(declare-const var2730-$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber (Array Int Int))
(declare-const var3806 var565) ; Statement: r3 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape 
(assert (not (= var3806 null-var565)))
(declare-const var705 var3207) ; Statement: r1 := @parameter0: org.apache.poi.xssf.usermodel.ListAutoNumber 
(assert (not (= var705 null-var3207)))
(declare-const var1036 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1036 null-Int)))
(define-const var2899 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2899)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2899!1 String)
(assert (= var2899!1 ""))
(define-const var764 (Array Int Int) var2730-$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber) ; Statement: $r2 = <org.apache.poi.xssf.usermodel.XSSFSimpleShape$1: int[] $SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber> 
(assert true)
(define-const var2659 Int (ordinal/-291641772 (cast-from-var3207-to-var3499 var705))) ; Statement: $i0 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.ListAutoNumber: int ordinal()>() 
(define-const var3094 Int (select var764 var2659)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 2: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 3: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 4: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 5: goto $r17 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 6: goto $r15 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 7: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 8: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 9: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 11: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 12: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 13: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 14: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 15: goto $r6 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     case 16: goto $r4 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     default: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(8226); } 
(assert (and (= var3094 10) (and (not (= var3094 9)) (and (not (= var3094 8)) (and (not (= var3094 7)) (and (not (= var3094 6)) (and (not (= var3094 5)) (and (not (= var3094 4)) (and (not (= var3094 3)) (and (not (= var3094 2)) (and (not (= var3094 1)) true))))))))))) ; Intersect: Cond: $i1 == 10  and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional          
(assert true)
;(assert (append/-1001720160 var2899!1 var1036)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var2899!2 String)
(assert (str.prefixof var2899!1 var2899!2))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2899!2 " ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2899!3 String)
(assert (= var2899!3 (str.++ var2899!2 " ")))
(assert true)
(define-const var3600 String (toString/-2075883882 var2899!3)) ; Statement: $r25 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3207-to-var3499=([org.apache.poi.xssf.usermodel.ListAutoNumber], java.lang.Enum), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var565=org.apache.poi.xssf.usermodel.XSSFSimpleShape, var3806=r3, var3207=org.apache.poi.xssf.usermodel.ListAutoNumber, var705=r1, var1036=i2, var2899=$r0, var2730=org.apache.poi.xssf.usermodel.XSSFSimpleShape$1, var764=$r2, var3499=java.lang.Enum, var2659=$i0, var3094=$i1, var3600=$r25}
; {org.apache.poi.xssf.usermodel.XSSFSimpleShape=var565, r3=var3806, org.apache.poi.xssf.usermodel.ListAutoNumber=var3207, r1=var705, i2=var1036, $r0=var2899, org.apache.poi.xssf.usermodel.XSSFSimpleShape$1=var2730, $r2=var764, java.lang.Enum=var3499, $i0=var2659, $i1=var3094, $r25=var3600}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape;	r1 := @parameter0: org.apache.poi.xssf.usermodel.ListAutoNumber;	i2 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = <org.apache.poi.xssf.usermodel.XSSFSimpleShape$1: int[] $SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber>;	$i0 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.ListAutoNumber: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 2: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 3: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 4: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 5: goto $r17 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 6: goto $r15 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 7: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 8: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 9: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 11: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 12: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 13: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 14: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 15: goto $r6 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     case 16: goto $r4 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     default: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(8226); };	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ")];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r25 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r25
;block_num 3
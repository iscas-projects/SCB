(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3899 0)
(declare-sort var1831 0)
(declare-sort var2890 0)
(declare-sort var148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun ordinal/-291641772 (var148) Int)
(declare-fun cast-from-var1831-to-var148 (var1831) var148)
(declare-fun valueToAlpha/456124852 (var3899 Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3899 var3899)
(declare-const null-var1831 var1831)
(declare-const null-Int Int)
(declare-const var2890-$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber (Array Int Int))
(declare-const var3 var3899) ; Statement: r3 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape 
(assert (not (= var3 null-var3899)))
(declare-const var2181 var1831) ; Statement: r1 := @parameter0: org.apache.poi.xssf.usermodel.ListAutoNumber 
(assert (not (= var2181 null-var1831)))
(declare-const var3559 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3559 null-Int)))
(define-const var1712 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1712)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1712!1 String)
(assert (= var1712!1 ""))
(define-const var2662 (Array Int Int) var2890-$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber) ; Statement: $r2 = <org.apache.poi.xssf.usermodel.XSSFSimpleShape$1: int[] $SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber> 
(assert true)
(define-const var3259 Int (ordinal/-291641772 (cast-from-var1831-to-var148 var2181))) ; Statement: $i0 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.ListAutoNumber: int ordinal()>() 
(define-const var3488 Int (select var2662 var3259)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 2: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 3: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 4: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 5: goto $r17 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 6: goto $r15 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 7: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 8: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 9: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 11: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 12: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 13: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 14: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 15: goto $r6 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     case 16: goto $r4 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     default: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(8226); } 
(assert (and (= var3488 6) (and (not (= var3488 5)) (and (not (= var3488 4)) (and (not (= var3488 3)) (and (not (= var3488 2)) (and (not (= var3488 1)) true))))))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(assert true)
(define-const var3298 String (valueToAlpha/456124852 var3 var3559)) ; Statement: $r15 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2) 
(assert true)
;(assert (append/672562846 var1712!1 var3298)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1712!2 String)
(assert (= var1712!2 (str.++ var1712!1 var3298)))
(assert true)
;(assert (append/-1166366385 var1712!2 46)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1712!3 String)
(assert (str.prefixof var1712!2 var1712!3))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1712!3 " ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1712!4 String)
(assert (= var1712!4 (str.++ var1712!3 " ")))
(assert true)
(define-const var77 String (toString/-2075883882 var1712!4)) ; Statement: $r25 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1831-to-var148=([org.apache.poi.xssf.usermodel.ListAutoNumber], java.lang.Enum), valueToAlpha/456124852=([org.apache.poi.xssf.usermodel.XSSFSimpleShape, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3899=org.apache.poi.xssf.usermodel.XSSFSimpleShape, var3=r3, var1831=org.apache.poi.xssf.usermodel.ListAutoNumber, var2181=r1, var3559=i2, var1712=$r0, var2890=org.apache.poi.xssf.usermodel.XSSFSimpleShape$1, var2662=$r2, var148=java.lang.Enum, var3259=$i0, var3488=$i1, var3298=$r15, var77=$r25}
; {org.apache.poi.xssf.usermodel.XSSFSimpleShape=var3899, r3=var3, org.apache.poi.xssf.usermodel.ListAutoNumber=var1831, r1=var2181, i2=var3559, $r0=var1712, org.apache.poi.xssf.usermodel.XSSFSimpleShape$1=var2890, $r2=var2662, java.lang.Enum=var148, $i0=var3259, $i1=var3488, $r15=var3298, $r25=var77}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape;	r1 := @parameter0: org.apache.poi.xssf.usermodel.ListAutoNumber;	i2 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = <org.apache.poi.xssf.usermodel.XSSFSimpleShape$1: int[] $SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber>;	$i0 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.ListAutoNumber: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 2: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 3: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 4: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 5: goto $r17 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 6: goto $r15 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 7: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 8: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 9: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 11: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 12: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 13: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 14: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 15: goto $r6 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     case 16: goto $r4 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     default: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(8226); };	$r15 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ")];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r25 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r25
;block_num 3
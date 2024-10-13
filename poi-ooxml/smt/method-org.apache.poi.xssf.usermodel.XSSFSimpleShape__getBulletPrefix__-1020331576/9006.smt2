(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3269 0)
(declare-sort var383 0)
(declare-sort var3451 0)
(declare-sort var3029 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun ordinal/-291641772 (var3029) Int)
(declare-fun cast-from-var383-to-var3029 (var383) var3029)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3269 var3269)
(declare-const null-var383 var383)
(declare-const null-Int Int)
(declare-const var3451-$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber (Array Int Int))
(declare-const var3968 var3269) ; Statement: r3 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape 
(assert (not (= var3968 null-var3269)))
(declare-const var2299 var383) ; Statement: r1 := @parameter0: org.apache.poi.xssf.usermodel.ListAutoNumber 
(assert (not (= var2299 null-var383)))
(declare-const var3320 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3320 null-Int)))
(define-const var2237 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2237)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2237!1 String)
(assert (= var2237!1 ""))
(define-const var3904 (Array Int Int) var3451-$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber) ; Statement: $r2 = <org.apache.poi.xssf.usermodel.XSSFSimpleShape$1: int[] $SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber> 
(assert true)
(define-const var1240 Int (ordinal/-291641772 (cast-from-var383-to-var3029 var2299))) ; Statement: $i0 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.ListAutoNumber: int ordinal()>() 
(define-const var3368 Int (select var3904 var1240)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 2: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 3: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 4: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 5: goto $r17 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 6: goto $r15 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 7: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 8: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 9: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 11: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 12: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 13: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 14: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 15: goto $r6 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     case 16: goto $r4 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     default: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(8226); } 
(assert (and (= var3368 9) (and (not (= var3368 8)) (and (not (= var3368 7)) (and (not (= var3368 6)) (and (not (= var3368 5)) (and (not (= var3368 4)) (and (not (= var3368 3)) (and (not (= var3368 2)) (and (not (= var3368 1)) true)))))))))) ; Intersect: Cond: $i1 == 9  and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional         
(assert true)
;(assert (append/-1001720160 var2237!1 var3320)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var2237!2 String)
(assert (str.prefixof var2237!1 var2237!2))
(assert true)
;(assert (append/-1166366385 var2237!2 46)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2237!3 String)
(assert (str.prefixof var2237!2 var2237!3))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2237!3 " ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2237!4 String)
(assert (= var2237!4 (str.++ var2237!3 " ")))
(assert true)
(define-const var3310 String (toString/-2075883882 var2237!4)) ; Statement: $r25 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), ordinal/-291641772=([java.lang.Enum], int), cast-from-var383-to-var3029=([org.apache.poi.xssf.usermodel.ListAutoNumber], java.lang.Enum), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3269=org.apache.poi.xssf.usermodel.XSSFSimpleShape, var3968=r3, var383=org.apache.poi.xssf.usermodel.ListAutoNumber, var2299=r1, var3320=i2, var2237=$r0, var3451=org.apache.poi.xssf.usermodel.XSSFSimpleShape$1, var3904=$r2, var3029=java.lang.Enum, var1240=$i0, var3368=$i1, var3310=$r25}
; {org.apache.poi.xssf.usermodel.XSSFSimpleShape=var3269, r3=var3968, org.apache.poi.xssf.usermodel.ListAutoNumber=var383, r1=var2299, i2=var3320, $r0=var2237, org.apache.poi.xssf.usermodel.XSSFSimpleShape$1=var3451, $r2=var3904, java.lang.Enum=var3029, $i0=var1240, $i1=var3368, $r25=var3310}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape;	r1 := @parameter0: org.apache.poi.xssf.usermodel.ListAutoNumber;	i2 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = <org.apache.poi.xssf.usermodel.XSSFSimpleShape$1: int[] $SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber>;	$i0 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.ListAutoNumber: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 2: goto $r21 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_LC_PARENT_BOTH>;     case 3: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 4: goto $r19 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ALPHA_UC_PARENT_BOTH>;     case 5: goto $r17 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 6: goto $r15 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToAlpha(int)>(i2);     case 7: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 8: goto $r14 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ARABIC_PARENT_BOTH>;     case 9: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);     case 11: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 12: goto $r10 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_LC_PARENT_BOTH>;     case 13: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 14: goto $r8 = <org.apache.poi.xssf.usermodel.ListAutoNumber: org.apache.poi.xssf.usermodel.ListAutoNumber ROMAN_UC_PARENT_BOTH>;     case 15: goto $r6 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     case 16: goto $r4 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.lang.String valueToRoman(int)>(i2);     default: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(8226); };	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ")];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r25 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r25
;block_num 3
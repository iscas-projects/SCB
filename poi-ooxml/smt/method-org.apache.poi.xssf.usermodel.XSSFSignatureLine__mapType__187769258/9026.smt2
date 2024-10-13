(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3615 0)
(declare-sort var1398 0)
(declare-sort var3563 0)
(declare-sort var2100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/1680590726 (var3615) Int)
(declare-fun var3563-init () var3563)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2100) String)
(declare-fun cast-from-var3615-to-var2100 (var3615) var2100)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-937058452 (var3563 String) void)
(declare-const null-var3615 var3615)
(declare-const var1398-$SwitchMap$org$apache$poi$common$usermodel$PictureType (Array Int Int))
(declare-const var946 var3615) ; Statement: r0 := @parameter0: org.apache.poi.common.usermodel.PictureType 
(assert (not (= var946 null-var3615)))
(define-const var1963 (Array Int Int) var1398-$SwitchMap$org$apache$poi$common$usermodel$PictureType) ; Statement: $r1 = <org.apache.poi.xssf.usermodel.XSSFSignatureLine$1: int[] $SwitchMap$org$apache$poi$common$usermodel$PictureType> 
(assert true)
(define-const var312 Int (ordinal/1680590726 var946)) ; Statement: $i0 = virtualinvoke r0.<org.apache.poi.common.usermodel.PictureType: int ordinal()>() 
(define-const var1705 Int (select var1963 var312)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r12 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_BMP>;     case 2: goto $r11 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_DIB>;     case 3: goto $r10 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_EMF>;     case 4: goto $r9 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_EPS>;     case 5: goto $r8 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_GIF>;     case 6: goto $r7 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_JPEG>;     case 7: goto $r6 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_PICT>;     case 8: goto $r5 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_PNG>;     case 9: goto $r4 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_TIFF>;     case 10: goto $r3 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_WMF>;     case 11: goto $r2 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_WPG>;     default: goto $r13 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException; } 
(assert (and (not (= var1705 11)) (and (not (= var1705 10)) (and (not (= var1705 9)) (and (not (= var1705 8)) (and (not (= var1705 7)) (and (not (= var1705 6)) (and (not (= var1705 5)) (and (not (= var1705 4)) (and (not (= var1705 3)) (and (not (= var1705 2)) (and (not (= var1705 1)) true)))))))))))) ; Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional           
(define-const var3640 var3563 var3563-init) ; Statement: $r13 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException 
(define-const var3048 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3048)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3048!1 String)
(assert (= var3048!1 ""))
(assert true)
(define-const var1852 String (append/672562846 var3048!1 "Unsupported picture format ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported picture format ") 
(declare-const var3048!2 String)
(assert (= var3048!2 (str.++ var3048!1 "Unsupported picture format ")))
(assert true)
(define-const var3898 String (append/-1031950772 var1852 (cast-from-var3615-to-var2100 var946))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1852!1 String)
(assert (str.prefixof var1852 var1852!1))
(assert true)
(define-const var3067 String (toString/-2075883882 var3898)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-937058452 var3640 var3067)) ; Statement: specialinvoke $r13.<org.apache.poi.openxml4j.exceptions.InvalidFormatException: void <init>(java.lang.String)>($r17) 

(declare-const var3640!1 var3563)
(declare-const var3067!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/1680590726=([org.apache.poi.common.usermodel.PictureType], int), var3563-init=([], org.apache.poi.openxml4j.exceptions.InvalidFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3615-to-var2100=([org.apache.poi.common.usermodel.PictureType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-937058452=([org.apache.poi.openxml4j.exceptions.InvalidFormatException, java.lang.String], void)}
; {var3615=org.apache.poi.common.usermodel.PictureType, var946=r0, var1398=org.apache.poi.xssf.usermodel.XSSFSignatureLine$1, var1963=$r1, var312=$i0, var1705=$i1, var3563=org.apache.poi.openxml4j.exceptions.InvalidFormatException, var3640=$r13, var3048=$r14, var1852=$r15, var2100=java.lang.Object, var3898=$r16, var3067=$r17}
; {org.apache.poi.common.usermodel.PictureType=var3615, r0=var946, org.apache.poi.xssf.usermodel.XSSFSignatureLine$1=var1398, $r1=var1963, $i0=var312, $i1=var1705, org.apache.poi.openxml4j.exceptions.InvalidFormatException=var3563, $r13=var3640, $r14=var3048, $r15=var1852, java.lang.Object=var2100, $r16=var3898, $r17=var3067}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.poi.common.usermodel.PictureType;	$r1 = <org.apache.poi.xssf.usermodel.XSSFSignatureLine$1: int[] $SwitchMap$org$apache$poi$common$usermodel$PictureType>;	$i0 = virtualinvoke r0.<org.apache.poi.common.usermodel.PictureType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r12 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_BMP>;     case 2: goto $r11 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_DIB>;     case 3: goto $r10 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_EMF>;     case 4: goto $r9 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_EPS>;     case 5: goto $r8 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_GIF>;     case 6: goto $r7 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_JPEG>;     case 7: goto $r6 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_PICT>;     case 8: goto $r5 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_PNG>;     case 9: goto $r4 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_TIFF>;     case 10: goto $r3 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_WMF>;     case 11: goto $r2 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation IMAGE_WPG>;     default: goto $r13 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException; };	$r13 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported picture format ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.apache.poi.openxml4j.exceptions.InvalidFormatException: void <init>(java.lang.String)>($r17);	throw $r13
;block_num 2
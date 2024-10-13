(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1408 0)
(declare-sort var2083 0)
(declare-sort var2513 0)
(declare-sort var2674 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/1680590726 (var1408) Int)
(declare-fun var2513-init () var2513)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2674) String)
(declare-fun cast-from-var1408-to-var2674 (var1408) var2674)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-937058452 (var2513 String) void)
(declare-const null-var1408 var1408)
(declare-const var2083-$SwitchMap$org$apache$poi$common$usermodel$PictureType (Array Int Int))
(declare-const var2106 var1408) ; Statement: r0 := @parameter0: org.apache.poi.common.usermodel.PictureType 
(assert (not (= var2106 null-var1408)))
(define-const var1586 (Array Int Int) var2083-$SwitchMap$org$apache$poi$common$usermodel$PictureType) ; Statement: $r1 = <org.apache.poi.xwpf.usermodel.XWPFSignatureLine$1: int[] $SwitchMap$org$apache$poi$common$usermodel$PictureType> 
(assert true)
(define-const var2688 Int (ordinal/1680590726 var2106)) ; Statement: $i0 = virtualinvoke r0.<org.apache.poi.common.usermodel.PictureType: int ordinal()>() 
(define-const var170 Int (select var1586 var2688)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r13 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType BMP>;     case 2: goto $r12 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType DIB>;     case 3: goto $r11 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType EMF>;     case 4: goto $r10 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType EPS>;     case 5: goto $r9 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType GIF>;     case 6: goto $r8 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType JPEG>;     case 7: goto $r7 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType PICT>;     case 8: goto $r6 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType PNG>;     case 9: goto $r5 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType TIFF>;     case 10: goto $r4 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType WMF>;     case 11: goto $r3 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType WPG>;     case 12: goto $r2 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType WDP>;     default: goto $r14 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException; } 
(assert (and (not (= var170 12)) (and (not (= var170 11)) (and (not (= var170 10)) (and (not (= var170 9)) (and (not (= var170 8)) (and (not (= var170 7)) (and (not (= var170 6)) (and (not (= var170 5)) (and (not (= var170 4)) (and (not (= var170 3)) (and (not (= var170 2)) (and (not (= var170 1)) true))))))))))))) ; Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional            
(define-const var2696 var2513 var2513-init) ; Statement: $r14 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException 
(define-const var1709 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1709)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1709!1 String)
(assert (= var1709!1 ""))
(assert true)
(define-const var642 String (append/672562846 var1709!1 "Unsupported picture format ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported picture format ") 
(declare-const var1709!2 String)
(assert (= var1709!2 (str.++ var1709!1 "Unsupported picture format ")))
(assert true)
(define-const var653 String (append/-1031950772 var642 (cast-from-var1408-to-var2674 var2106))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var642!1 String)
(assert (str.prefixof var642 var642!1))
(assert true)
(define-const var535 String (toString/-2075883882 var653)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-937058452 var2696 var535)) ; Statement: specialinvoke $r14.<org.apache.poi.openxml4j.exceptions.InvalidFormatException: void <init>(java.lang.String)>($r18) 

(declare-const var2696!1 var2513)
(declare-const var535!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/1680590726=([org.apache.poi.common.usermodel.PictureType], int), var2513-init=([], org.apache.poi.openxml4j.exceptions.InvalidFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1408-to-var2674=([org.apache.poi.common.usermodel.PictureType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-937058452=([org.apache.poi.openxml4j.exceptions.InvalidFormatException, java.lang.String], void)}
; {var1408=org.apache.poi.common.usermodel.PictureType, var2106=r0, var2083=org.apache.poi.xwpf.usermodel.XWPFSignatureLine$1, var1586=$r1, var2688=$i0, var170=$i1, var2513=org.apache.poi.openxml4j.exceptions.InvalidFormatException, var2696=$r14, var1709=$r15, var642=$r16, var2674=java.lang.Object, var653=$r17, var535=$r18}
; {org.apache.poi.common.usermodel.PictureType=var1408, r0=var2106, org.apache.poi.xwpf.usermodel.XWPFSignatureLine$1=var2083, $r1=var1586, $i0=var2688, $i1=var170, org.apache.poi.openxml4j.exceptions.InvalidFormatException=var2513, $r14=var2696, $r15=var1709, $r16=var642, java.lang.Object=var2674, $r17=var653, $r18=var535}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.poi.common.usermodel.PictureType;	$r1 = <org.apache.poi.xwpf.usermodel.XWPFSignatureLine$1: int[] $SwitchMap$org$apache$poi$common$usermodel$PictureType>;	$i0 = virtualinvoke r0.<org.apache.poi.common.usermodel.PictureType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r13 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType BMP>;     case 2: goto $r12 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType DIB>;     case 3: goto $r11 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType EMF>;     case 4: goto $r10 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType EPS>;     case 5: goto $r9 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType GIF>;     case 6: goto $r8 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType JPEG>;     case 7: goto $r7 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType PICT>;     case 8: goto $r6 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType PNG>;     case 9: goto $r5 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType TIFF>;     case 10: goto $r4 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType WMF>;     case 11: goto $r3 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType WPG>;     case 12: goto $r2 = <org.apache.poi.common.usermodel.PictureType: org.apache.poi.common.usermodel.PictureType WDP>;     default: goto $r14 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException; };	$r14 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported picture format ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.apache.poi.openxml4j.exceptions.InvalidFormatException: void <init>(java.lang.String)>($r18);	throw $r14
;block_num 2
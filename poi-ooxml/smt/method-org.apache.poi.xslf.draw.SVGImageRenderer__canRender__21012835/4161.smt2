(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3607 0)
(declare-sort var151 0)
(declare-sort var763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentType/753921265 (var763) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var3607 var3607)
(declare-const null-String String)
(declare-const var763-SVG var763)
(declare-const var3891 var3607) ; Statement: r3 := @this: org.apache.poi.xslf.draw.SVGImageRenderer 
(assert (not (= var3891 null-var3607)))
(declare-const var884 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var884 null-String)))
(define-const var1793 var763 var763-SVG) ; Statement: $r0 = <org.apache.poi.sl.usermodel.PictureData$PictureType: org.apache.poi.sl.usermodel.PictureData$PictureType SVG> 
(define-const var1983 String (contentType/753921265 var1793)) ; Statement: $r2 = $r0.<org.apache.poi.sl.usermodel.PictureData$PictureType: java.lang.String contentType> 
(assert true)
(define-const var1417 Bool (equalsIgnoreCase/-92311102 var1983 var884)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {contentType/753921265=([org.apache.poi.sl.usermodel.PictureData$PictureType], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3607=org.apache.poi.xslf.draw.SVGImageRenderer, var3891=r3, var884=r1, var151=null_type, var763=org.apache.poi.sl.usermodel.PictureData$PictureType, var1793=$r0, var1983=$r2, var1417=$z0}
; {org.apache.poi.xslf.draw.SVGImageRenderer=var3607, r3=var3891, r1=var884, null_type=var151, org.apache.poi.sl.usermodel.PictureData$PictureType=var763, $r0=var1793, $r2=var1983, $z0=var1417}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.poi.xslf.draw.SVGImageRenderer;	r1 := @parameter0: java.lang.String;	$r0 = <org.apache.poi.sl.usermodel.PictureData$PictureType: org.apache.poi.sl.usermodel.PictureData$PictureType SVG>;	$r2 = $r0.<org.apache.poi.sl.usermodel.PictureData$PictureType: java.lang.String contentType>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1);	return $z0
;block_num 1
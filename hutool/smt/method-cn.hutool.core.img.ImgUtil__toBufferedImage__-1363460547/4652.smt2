(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2938 0)
(declare-sort var1317 0)
(declare-sort var1451 0)
(declare-sort var2289 0)
(declare-sort var2001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var2001_toBufferedImage/23818751 (var2938 Int var1451) var2289)
(declare-const null-var2938 var2938)
(declare-const null-String String)
(declare-const null-var1451 var1451)
(declare-const var1518 var2938) ; Statement: r2 := @parameter0: java.awt.Image 
(assert (not (= var1518 null-var2938)))
(declare-const var967 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var967 null-String)))
(declare-const var973 var1451) ; Statement: r3 := @parameter2: java.awt.Color 
(assert (not (= var973 null-var1451)))
(define-const var2498 String "png") ; Statement: $r1 = "png" 
(assert true)
(define-const var3369 Bool (equalsIgnoreCase/-92311102 var2498 var967)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $b0 = 1 
(assert (= (ite var3369 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1024 Int 1) ; Statement: $b0 = 1 
(assert true) ; Non Conditional
(define-const var3948 var2289 (var2001_toBufferedImage/23818751 var1518 var1024 var973)) ; Statement: $r4 = staticinvoke <cn.hutool.core.img.ImgUtil: java.awt.image.BufferedImage toBufferedImage(java.awt.Image,int,java.awt.Color)>(r2, $b0, r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var2001_toBufferedImage/23818751=([java.awt.Image, int, java.awt.Color], java.awt.image.BufferedImage)}
; {var2938=java.awt.Image, var1518=r2, var967=r0, var1317=null_type, var1451=java.awt.Color, var973=r3, var2498=$r1, var3369=$z0, var1024=$b0, var2289=java.awt.image.BufferedImage, var2001=cn.hutool.core.img.ImgUtil, var3948=$r4}
; {java.awt.Image=var2938, r2=var1518, r0=var967, null_type=var1317, java.awt.Color=var1451, r3=var973, $r1=var2498, $z0=var3369, $b0=var1024, java.awt.image.BufferedImage=var2289, cn.hutool.core.img.ImgUtil=var2001, $r4=var3948}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.awt.Image;	r0 := @parameter1: java.lang.String;	r3 := @parameter2: java.awt.Color;	$r1 = "png";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $b0 = 1;	$b0 = 1;	$r4 = staticinvoke <cn.hutool.core.img.ImgUtil: java.awt.image.BufferedImage toBufferedImage(java.awt.Image,int,java.awt.Color)>(r2, $b0, r3);	return $r4
;block_num 3
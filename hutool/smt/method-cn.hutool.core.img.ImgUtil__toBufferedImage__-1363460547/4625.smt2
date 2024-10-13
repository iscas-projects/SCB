(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var176 0)
(declare-sort var484 0)
(declare-sort var1675 0)
(declare-sort var2199 0)
(declare-sort var2927 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var2927_toBufferedImage/23818751 (var176 Int var1675) var2199)
(declare-const null-var176 var176)
(declare-const null-String String)
(declare-const null-var1675 var1675)
(declare-const var3662 var176) ; Statement: r2 := @parameter0: java.awt.Image 
(assert (not (= var3662 null-var176)))
(declare-const var3830 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3830 null-String)))
(declare-const var968 var1675) ; Statement: r3 := @parameter2: java.awt.Color 
(assert (not (= var968 null-var1675)))
(define-const var1869 String "png") ; Statement: $r1 = "png" 
(assert true)
(define-const var3159 Bool (equalsIgnoreCase/-92311102 var1869 var3830)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $b0 = 1 
(assert (not (= (ite var3159 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var204 Int 2) ; Statement: $b0 = 2 
 ; Statement: goto [?= $r4 = staticinvoke <cn.hutool.core.img.ImgUtil: java.awt.image.BufferedImage toBufferedImage(java.awt.Image,int,java.awt.Color)>(r2, $b0, r3)] 
(assert true) ; Non Conditional
(define-const var375 var2199 (var2927_toBufferedImage/23818751 var3662 var204 var968)) ; Statement: $r4 = staticinvoke <cn.hutool.core.img.ImgUtil: java.awt.image.BufferedImage toBufferedImage(java.awt.Image,int,java.awt.Color)>(r2, $b0, r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var2927_toBufferedImage/23818751=([java.awt.Image, int, java.awt.Color], java.awt.image.BufferedImage)}
; {var176=java.awt.Image, var3662=r2, var3830=r0, var484=null_type, var1675=java.awt.Color, var968=r3, var1869=$r1, var3159=$z0, var204=$b0, var2199=java.awt.image.BufferedImage, var2927=cn.hutool.core.img.ImgUtil, var375=$r4}
; {java.awt.Image=var176, r2=var3662, r0=var3830, null_type=var484, java.awt.Color=var1675, r3=var968, $r1=var1869, $z0=var3159, $b0=var204, java.awt.image.BufferedImage=var2199, cn.hutool.core.img.ImgUtil=var2927, $r4=var375}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.awt.Image;	r0 := @parameter1: java.lang.String;	r3 := @parameter2: java.awt.Color;	$r1 = "png";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $b0 = 1;	$b0 = 2;	goto [?= $r4 = staticinvoke <cn.hutool.core.img.ImgUtil: java.awt.image.BufferedImage toBufferedImage(java.awt.Image,int,java.awt.Color)>(r2, $b0, r3)];	$r4 = staticinvoke <cn.hutool.core.img.ImgUtil: java.awt.image.BufferedImage toBufferedImage(java.awt.Image,int,java.awt.Color)>(r2, $b0, r3);	return $r4
;block_num 3
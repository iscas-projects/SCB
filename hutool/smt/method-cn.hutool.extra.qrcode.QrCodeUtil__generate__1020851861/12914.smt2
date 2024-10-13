(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1307 0)
(declare-sort var3098 0)
(declare-sort var1405 0)
(declare-sort var3022 0)
(declare-sort var497 0)
(declare-sort var2626 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3022_generate/-1394465834 (String Int Int) var1405)
(declare-fun var497_write/1615010862 (var2626 String var3098) void)
(declare-fun cast-from-var1405-to-var2626 (var1405) var2626)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3098 var3098)
(declare-const var1064 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1064 null-String)))
(declare-const var3467 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3467 null-Int)))
(declare-const var2998 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2998 null-Int)))
(declare-const var2646 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var2646 null-String)))
(declare-const var1112 var3098) ; Statement: r4 := @parameter4: java.io.OutputStream 
(assert (not (= var1112 null-var3098)))
(define-const var3980 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var515 Int (hashCode/-467973558 var2646)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r2 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r1, i1, i2); }; } 
(assert (and (not (= var515 115312)) (and (not (= var515 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r2 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r1, i1, i2); } 
(assert (and (not (= var3980 1)) (and (not (= var3980 0)) true))) ; Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional  
(define-const var2231 var1405 (var3022_generate/-1394465834 var1064 var3467 var2998)) ; Statement: r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r1, i1, i2) 
;(assert (var497_write/1615010862 (cast-from-var1405-to-var2626 var2231) var2646 var1112)) ; Statement: staticinvoke <cn.hutool.core.img.ImgUtil: void write(java.awt.Image,java.lang.String,java.io.OutputStream)>(r9, r0, r4) 

(declare-const var2231!1 var1405)
(declare-const var2646!1 String)
(declare-const var1112!1 var3098)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var3022_generate/-1394465834=([java.lang.String, int, int], java.awt.image.BufferedImage), var497_write/1615010862=([java.awt.Image, java.lang.String, java.io.OutputStream], void), cast-from-var1405-to-var2626=([java.awt.image.BufferedImage], java.awt.Image)}
; {var1064=r1, var1307=null_type, var3467=i1, var2998=i2, var2646=r0, var3098=java.io.OutputStream, var1112=r4, var3980=b3, var515=$i0, var1405=java.awt.image.BufferedImage, var3022=cn.hutool.extra.qrcode.QrCodeUtil, var2231=r9, var497=cn.hutool.core.img.ImgUtil, var2626=java.awt.Image}
; {r1=var1064, null_type=var1307, i1=var3467, i2=var2998, r0=var2646, java.io.OutputStream=var3098, r4=var1112, b3=var3980, $i0=var515, java.awt.image.BufferedImage=var1405, cn.hutool.extra.qrcode.QrCodeUtil=var3022, r9=var2231, cn.hutool.core.img.ImgUtil=var497, java.awt.Image=var2626}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i2 := @parameter2: int;	r0 := @parameter3: java.lang.String;	r4 := @parameter4: java.io.OutputStream;	b3 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r2 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r1, i1, i2); }; };	lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r2 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r1, i1, i2); };	r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r1, i1, i2);	staticinvoke <cn.hutool.core.img.ImgUtil: void write(java.awt.Image,java.lang.String,java.io.OutputStream)>(r9, r0, r4);	return
;block_num 4
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var248 0)
(declare-sort var696 0)
(declare-sort var409 0)
(declare-sort var728 0)
(declare-sort var887 0)
(declare-sort var1117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun generateCode/384893431 (var696) void)
(declare-fun cast-from-var248-to-var696 (var248) var696)
(declare-fun var409-init () var409)
(declare-fun <init>/-707998177 (var409) void)
(declare-fun var728-init () var728)
(declare-fun <init>/-393263454 (var728) void)
(declare-fun start/-369845069 (var728 var887) Bool)
(declare-fun cast-from-var409-to-var887 (var409) var887)
(declare-fun quality/1786080976 (var248) Int)
(declare-fun setQuality/21630946 (var728 Int) void)
(declare-fun setDelay/-206019802 (var728 Int) void)
(declare-fun repeat/1786080976 (var248) Int)
(declare-fun setRepeat/-1723017520 (var728 Int) void)
(declare-fun code/1032264574 (var696) String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun arr-var1117-init () (Array Int var1117))
(declare-fun finish/550575759 (var728) Bool)
(declare-fun toByteArray/1343874077 (var409) (Array Int Int))
(declare-fun imageBytes/1032264574 (var696) (Array Int Int))
(declare-const null-var248 var248)
(declare-const var3595 var248) ; Statement: r0 := @this: cn.hutool.captcha.GifCaptcha 
(assert (not (= var3595 null-var248)))
(assert true)
;(assert (generateCode/384893431 (cast-from-var248-to-var696 var3595))) ; Statement: virtualinvoke r0.<cn.hutool.captcha.GifCaptcha: void generateCode()>() 

(declare-const var3595!1 var248)
(define-const var2438 var409 var409-init) ; Statement: $r1 = new java.io.ByteArrayOutputStream 
(assert true)
;(assert (<init>/-707998177 var2438)) ; Statement: specialinvoke $r1.<java.io.ByteArrayOutputStream: void <init>()>() 

(declare-const var2438!1 var409)
(define-const var2404 var728 var728-init) ; Statement: $r2 = new cn.hutool.core.img.gif.AnimatedGifEncoder 
(assert true)
;(assert (<init>/-393263454 var2404)) ; Statement: specialinvoke $r2.<cn.hutool.core.img.gif.AnimatedGifEncoder: void <init>()>() 

(declare-const var2404!1 var728)
(assert true)
;(assert (start/-369845069 var2404!1 (cast-from-var409-to-var887 var2438!1))) ; Statement: virtualinvoke $r2.<cn.hutool.core.img.gif.AnimatedGifEncoder: boolean start(java.io.OutputStream)>($r1) 

(declare-const var2404!2 var728)
(declare-const var2438!2 var409)
(define-const var596 Int (quality/1786080976 var3595!1)) ; Statement: $i0 = r0.<cn.hutool.captcha.GifCaptcha: int quality> 
(assert true)
;(assert (setQuality/21630946 var2404!2 var596)) ; Statement: virtualinvoke $r2.<cn.hutool.core.img.gif.AnimatedGifEncoder: void setQuality(int)>($i0) 

(declare-const var2404!3 var728)
(declare-const var596!1 Int)
(assert true)
;(assert (setDelay/-206019802 var2404!3 100)) ; Statement: virtualinvoke $r2.<cn.hutool.core.img.gif.AnimatedGifEncoder: void setDelay(int)>(100) 

(declare-const var2404!4 var728)
(declare-const var1302 Int)
(define-const var3279 Int (repeat/1786080976 var3595!1)) ; Statement: $i1 = r0.<cn.hutool.captcha.GifCaptcha: int repeat> 
(assert true)
;(assert (setRepeat/-1723017520 var2404!4 var3279)) ; Statement: virtualinvoke $r2.<cn.hutool.core.img.gif.AnimatedGifEncoder: void setRepeat(int)>($i1) 

(declare-const var2404!5 var728)
(declare-const var3279!1 Int)
(define-const var3282 String (code/1032264574 (cast-from-var248-to-var696 var3595!1))) ; Statement: $r3 = r0.<cn.hutool.captcha.GifCaptcha: java.lang.String code> 
(assert true)
(define-const var3929 (Array Int Int) (toCharArray/415275702 var3282)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>() 
(define-const var630 Int (getLength-Arr-Int-1 var3929)) ; Statement: $i2 = lengthof r4 
(define-const var2361 (Array Int var1117) arr-var1117-init) ; Statement: r5 = newarray (java.awt.Color)[$i2] 
(define-const var1636 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var2558 Int (getLength-Arr-Int-1 var3929)) ; Statement: $i3 = lengthof r4 
 ; Statement: if i6 >= $i3 goto virtualinvoke $r2.<cn.hutool.core.img.gif.AnimatedGifEncoder: boolean finish()>() 
(assert (>= var1636 var2558)) ; Cond: i6 >= $i3 
(assert true)
;(assert (finish/550575759 var2404!5)) ; Statement: virtualinvoke $r2.<cn.hutool.core.img.gif.AnimatedGifEncoder: boolean finish()>() 

(declare-const var2404!6 var728)
(assert true)
(define-const var3601 (Array Int Int) (toByteArray/1343874077 var2438!2)) ; Statement: $r6 = virtualinvoke $r1.<java.io.ByteArrayOutputStream: byte[] toByteArray()>() 
(declare-const var3595!2 var248)
(assert (not (= var3595!2 null-var248)))
(assert (= (imageBytes/1032264574 (cast-from-var248-to-var696 var3595!2)) var3601)) ; Statement: r0.<cn.hutool.captcha.GifCaptcha: byte[] imageBytes> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {generateCode/384893431=([cn.hutool.captcha.AbstractCaptcha], void), cast-from-var248-to-var696=([cn.hutool.captcha.GifCaptcha], cn.hutool.captcha.AbstractCaptcha), var409-init=([], java.io.ByteArrayOutputStream), <init>/-707998177=([java.io.ByteArrayOutputStream], void), var728-init=([], cn.hutool.core.img.gif.AnimatedGifEncoder), <init>/-393263454=([cn.hutool.core.img.gif.AnimatedGifEncoder], void), start/-369845069=([cn.hutool.core.img.gif.AnimatedGifEncoder, java.io.OutputStream], boolean), cast-from-var409-to-var887=([java.io.ByteArrayOutputStream], java.io.OutputStream), quality/1786080976=([cn.hutool.captcha.GifCaptcha], int), setQuality/21630946=([cn.hutool.core.img.gif.AnimatedGifEncoder, int], void), setDelay/-206019802=([cn.hutool.core.img.gif.AnimatedGifEncoder, int], void), repeat/1786080976=([cn.hutool.captcha.GifCaptcha], int), setRepeat/-1723017520=([cn.hutool.core.img.gif.AnimatedGifEncoder, int], void), code/1032264574=([cn.hutool.captcha.AbstractCaptcha], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), arr-var1117-init=([], java.awt.Color[]), finish/550575759=([cn.hutool.core.img.gif.AnimatedGifEncoder], boolean), toByteArray/1343874077=([java.io.ByteArrayOutputStream], byte[]), imageBytes/1032264574=([cn.hutool.captcha.AbstractCaptcha], byte[])}
; {var248=cn.hutool.captcha.GifCaptcha, var3595=r0, var696=cn.hutool.captcha.AbstractCaptcha, var409=java.io.ByteArrayOutputStream, var2438=$r1, var728=cn.hutool.core.img.gif.AnimatedGifEncoder, var2404=$r2, var887=java.io.OutputStream, var596=$i0, var1302=100, var3279=$i1, var3282=$r3, var3929=r4, var630=$i2, var1117=java.awt.Color, var2361=r5, var1636=i6, var2558=$i3, var3601=$r6}
; {cn.hutool.captcha.GifCaptcha=var248, r0=var3595, cn.hutool.captcha.AbstractCaptcha=var696, java.io.ByteArrayOutputStream=var409, $r1=var2438, cn.hutool.core.img.gif.AnimatedGifEncoder=var728, $r2=var2404, java.io.OutputStream=var887, $i0=var596, 100=var1302, $i1=var3279, $r3=var3282, r4=var3929, $i2=var630, java.awt.Color=var1117, r5=var2361, i6=var1636, $i3=var2558, $r6=var3601}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: cn.hutool.captcha.GifCaptcha;	virtualinvoke r0.<cn.hutool.captcha.GifCaptcha: void generateCode()>();	$r1 = new java.io.ByteArrayOutputStream;	specialinvoke $r1.<java.io.ByteArrayOutputStream: void <init>()>();	$r2 = new cn.hutool.core.img.gif.AnimatedGifEncoder;	specialinvoke $r2.<cn.hutool.core.img.gif.AnimatedGifEncoder: void <init>()>();	virtualinvoke $r2.<cn.hutool.core.img.gif.AnimatedGifEncoder: boolean start(java.io.OutputStream)>($r1);	$i0 = r0.<cn.hutool.captcha.GifCaptcha: int quality>;	virtualinvoke $r2.<cn.hutool.core.img.gif.AnimatedGifEncoder: void setQuality(int)>($i0);	virtualinvoke $r2.<cn.hutool.core.img.gif.AnimatedGifEncoder: void setDelay(int)>(100);	$i1 = r0.<cn.hutool.captcha.GifCaptcha: int repeat>;	virtualinvoke $r2.<cn.hutool.core.img.gif.AnimatedGifEncoder: void setRepeat(int)>($i1);	$r3 = r0.<cn.hutool.captcha.GifCaptcha: java.lang.String code>;	r4 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>();	$i2 = lengthof r4;	r5 = newarray (java.awt.Color)[$i2];	i6 = 0;	$i3 = lengthof r4;	if i6 >= $i3 goto virtualinvoke $r2.<cn.hutool.core.img.gif.AnimatedGifEncoder: boolean finish()>();	virtualinvoke $r2.<cn.hutool.core.img.gif.AnimatedGifEncoder: boolean finish()>();	$r6 = virtualinvoke $r1.<java.io.ByteArrayOutputStream: byte[] toByteArray()>();	r0.<cn.hutool.captcha.GifCaptcha: byte[] imageBytes> = $r6;	return
;block_num 3
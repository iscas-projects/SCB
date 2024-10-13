(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3406 0)
(declare-sort var677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun numberLength/1084060246 (var3406) Int)
(declare-fun var677_repeat/-2130777133 (Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-const null-var3406 var3406)
(declare-const var2992 var3406) ; Statement: r1 := @this: cn.hutool.captcha.generator.MathGenerator 
(assert (not (= var2992 null-var3406)))
(define-const var283 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var283)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var283!1 String)
(assert (= var283!1 ""))
(assert true)
(define-const var3174 String (append/672562846 var283!1 "1")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("1") 
(declare-const var283!2 String)
(assert (= var283!2 (str.++ var283!1 "1")))
(define-const var2511 Int (numberLength/1084060246 var2992)) ; Statement: $i0 = r1.<cn.hutool.captcha.generator.MathGenerator: int numberLength> 
(define-const var2172 String (var677_repeat/-2130777133 48 var2511)) ; Statement: $r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String repeat(char,int)>(48, $i0) 
(assert true)
(define-const var2400 String (append/672562846 var3174 var2172)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3174!1 String)
(assert (= var3174!1 (str.++ var3174 var2172)))
(assert true)
(define-const var1157 String (toString/-2075883882 var2400)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2928 Int (Int_parseInt/1370970945 var1157)) ; Statement: $i1 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), numberLength/1084060246=([cn.hutool.captcha.generator.MathGenerator], int), var677_repeat/-2130777133=([char, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int)}
; {var3406=cn.hutool.captcha.generator.MathGenerator, var2992=r1, var283=$r0, var3174=$r3, var2511=$i0, var677=cn.hutool.core.text.CharSequenceUtil, var2172=$r2, var2400=$r4, var1157=$r5, var2928=$i1}
; {cn.hutool.captcha.generator.MathGenerator=var3406, r1=var2992, $r0=var283, $r3=var3174, $i0=var2511, cn.hutool.core.text.CharSequenceUtil=var677, $r2=var2172, $r4=var2400, $r5=var1157, $i1=var2928}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.captcha.generator.MathGenerator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("1");	$i0 = r1.<cn.hutool.captcha.generator.MathGenerator: int numberLength>;	$r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String repeat(char,int)>(48, $i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$i1 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5);	return $i1
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1223 0)
(declare-sort var242 0)
(declare-sort var2000 0)
(declare-sort var2161 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLimit/-2094117305 (var1223) Int)
(declare-fun var242_randomInt/1206967757 (Int) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun numberLength/1084060246 (var1223) Int)
(declare-fun var2000_padAfter/-1402115278 (String Int Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2161_builder/-311177978 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var242_randomChar/1323016329 (String) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1223 var1223)
(declare-const var880 var1223) ; Statement: r0 := @this: cn.hutool.captcha.generator.MathGenerator 
(assert (not (= var880 null-var1223)))
(assert true)
(define-const var1786 Int (getLimit/-2094117305 var880)) ; Statement: i0 = specialinvoke r0.<cn.hutool.captcha.generator.MathGenerator: int getLimit()>() 
(define-const var1631 Int (var242_randomInt/1206967757 var1786)) ; Statement: $i1 = staticinvoke <cn.hutool.core.util.RandomUtil: int randomInt(int)>(i0) 
(define-const var649 String (Int_toString/1350422511 var1631)) ; Statement: r7 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i1) 
(define-const var2518 Int (var242_randomInt/1206967757 var1786)) ; Statement: $i2 = staticinvoke <cn.hutool.core.util.RandomUtil: int randomInt(int)>(i0) 
(define-const var2532 String (Int_toString/1350422511 var2518)) ; Statement: r8 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(define-const var2744 Int (numberLength/1084060246 var880)) ; Statement: $i3 = r0.<cn.hutool.captcha.generator.MathGenerator: int numberLength> 
(define-const var613 String (var2000_padAfter/-1402115278 (cast-from-String-to-String var649) var2744 32)) ; Statement: r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String padAfter(java.lang.CharSequence,int,char)>(r7, $i3, 32) 
(define-const var216 Int (numberLength/1084060246 var880)) ; Statement: $i4 = r0.<cn.hutool.captcha.generator.MathGenerator: int numberLength> 
(define-const var3975 String (var2000_padAfter/-1402115278 (cast-from-String-to-String var2532) var216 32)) ; Statement: r10 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String padAfter(java.lang.CharSequence,int,char)>(r8, $i4, 32) 
(define-const var2709 String var2161_builder/-311177978) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert true)
(define-const var384 String (append/672562846 var2709 var613)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var2709!1 String)
(assert (= var2709!1 (str.++ var2709 var613)))
(define-const var2915 Int (var242_randomChar/1323016329 "+-*")) ; Statement: $c5 = staticinvoke <cn.hutool.core.util.RandomUtil: char randomChar(java.lang.String)>("+-*") 
(assert true)
(define-const var2920 String (append/-1166366385 var384 var2915)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c5) 
(declare-const var384!1 String)
(assert (str.prefixof var384 var384!1))
(assert true)
(define-const var1861 String (append/672562846 var2920 var3975)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var2920!1 String)
(assert (= var2920!1 (str.++ var2920 var3975)))
(assert true)
(define-const var24 String (append/-1166366385 var1861 61)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61) 
(declare-const var1861!1 String)
(assert (str.prefixof var1861 var1861!1))
(assert true)
(define-const var943 String (toString/-2075883882 var24)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getLimit/-2094117305=([cn.hutool.captcha.generator.MathGenerator], int), var242_randomInt/1206967757=([int], int), Int_toString/1350422511=([int], java.lang.String), numberLength/1084060246=([cn.hutool.captcha.generator.MathGenerator], int), var2000_padAfter/-1402115278=([java.lang.CharSequence, int, char], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2161_builder/-311177978=([], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var242_randomChar/1323016329=([java.lang.String], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1223=cn.hutool.captcha.generator.MathGenerator, var880=r0, var1786=i0, var242=cn.hutool.core.util.RandomUtil, var1631=$i1, var649=r7, var2518=$i2, var2532=r8, var2744=$i3, var2000=cn.hutool.core.text.CharSequenceUtil, var613=r9, var216=$i4, var3975=r10, var2161=cn.hutool.core.util.StrUtil, var2709=$r1, var384=$r2, var2915=$c5, var2920=$r3, var1861=$r4, var24=$r5, var943=$r6}
; {cn.hutool.captcha.generator.MathGenerator=var1223, r0=var880, i0=var1786, cn.hutool.core.util.RandomUtil=var242, $i1=var1631, r7=var649, $i2=var2518, r8=var2532, $i3=var2744, cn.hutool.core.text.CharSequenceUtil=var2000, r9=var613, $i4=var216, r10=var3975, cn.hutool.core.util.StrUtil=var2161, $r1=var2709, $r2=var384, $c5=var2915, $r3=var2920, $r4=var1861, $r5=var24, $r6=var943}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.captcha.generator.MathGenerator;	i0 = specialinvoke r0.<cn.hutool.captcha.generator.MathGenerator: int getLimit()>();	$i1 = staticinvoke <cn.hutool.core.util.RandomUtil: int randomInt(int)>(i0);	r7 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i1);	$i2 = staticinvoke <cn.hutool.core.util.RandomUtil: int randomInt(int)>(i0);	r8 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$i3 = r0.<cn.hutool.captcha.generator.MathGenerator: int numberLength>;	r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String padAfter(java.lang.CharSequence,int,char)>(r7, $i3, 32);	$i4 = r0.<cn.hutool.captcha.generator.MathGenerator: int numberLength>;	r10 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String padAfter(java.lang.CharSequence,int,char)>(r8, $i4, 32);	$r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$c5 = staticinvoke <cn.hutool.core.util.RandomUtil: char randomChar(java.lang.String)>("+-*");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c5);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
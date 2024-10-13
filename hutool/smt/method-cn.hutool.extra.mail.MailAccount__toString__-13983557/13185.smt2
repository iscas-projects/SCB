(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1287 0)
(declare-sort var2604 0)
(declare-sort var2846 0)
(declare-sort var1135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun host/-1362711965 (var1287) String)
(declare-fun port/-1362711965 (var1287) Int)
(declare-fun append/-1031950772 (String var2604) String)
(declare-fun cast-from-Int-to-var2604 (Int) var2604)
(declare-fun auth/-1362711965 (var1287) var2846)
(declare-fun cast-from-var2846-to-var2604 (var2846) var2604)
(declare-fun user/-1362711965 (var1287) String)
(declare-fun pass/-1362711965 (var1287) String)
(declare-fun var1135_isEmpty/1540305040 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun from/-1362711965 (var1287) String)
(declare-fun starttlsEnable/-1362711965 (var1287) Bool)
(declare-fun append/-388390247 (String Bool) String)
(declare-fun socketFactoryClass/-1362711965 (var1287) String)
(declare-fun socketFactoryFallback/-1362711965 (var1287) Bool)
(declare-fun socketFactoryPort/-1362711965 (var1287) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1287 var1287)
(declare-const var3848 var1287) ; Statement: r1 := @this: cn.hutool.extra.mail.MailAccount 
(assert (not (= var3848 null-var1287)))
(define-const var744 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var744)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var744!1 String)
(assert (= var744!1 ""))
(assert true)
(define-const var2015 String (append/672562846 var744!1 "MailAccount [host=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MailAccount [host=") 
(declare-const var744!2 String)
(assert (= var744!2 (str.++ var744!1 "MailAccount [host=")))
(define-const var78 String (host/-1362711965 var3848)) ; Statement: $r2 = r1.<cn.hutool.extra.mail.MailAccount: java.lang.String host> 
(assert true)
(define-const var642 String (append/672562846 var2015 var78)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2015!1 String)
(assert (= var2015!1 (str.++ var2015 var78)))
(assert true)
(define-const var3418 String (append/672562846 var642 ", port=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", port=") 
(declare-const var642!1 String)
(assert (= var642!1 (str.++ var642 ", port=")))
(define-const var2759 Int (port/-1362711965 var3848)) ; Statement: $r5 = r1.<cn.hutool.extra.mail.MailAccount: java.lang.Integer port> 
(assert true)
(define-const var2513 String (append/-1031950772 var3418 (cast-from-Int-to-var2604 var2759))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3418!1 String)
(assert (str.prefixof var3418 var3418!1))
(assert true)
(define-const var1629 String (append/672562846 var2513 ", auth=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", auth=") 
(declare-const var2513!1 String)
(assert (= var2513!1 (str.++ var2513 ", auth=")))
(define-const var3840 var2846 (auth/-1362711965 var3848)) ; Statement: $r8 = r1.<cn.hutool.extra.mail.MailAccount: java.lang.Boolean auth> 
(assert true)
(define-const var575 String (append/-1031950772 var1629 (cast-from-var2846-to-var2604 var3840))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1629!1 String)
(assert (str.prefixof var1629 var1629!1))
(assert true)
(define-const var638 String (append/672562846 var575 ", user=")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", user=") 
(declare-const var575!1 String)
(assert (= var575!1 (str.++ var575 ", user=")))
(define-const var2600 String (user/-1362711965 var3848)) ; Statement: $r11 = r1.<cn.hutool.extra.mail.MailAccount: java.lang.String user> 
(assert true)
(define-const var3586 String (append/672562846 var638 var2600)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var638!1 String)
(assert (= var638!1 (str.++ var638 var2600)))
(assert true)
(define-const var3577 String (append/672562846 var3586 ", pass=")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", pass=") 
(declare-const var3586!1 String)
(assert (= var3586!1 (str.++ var3586 ", pass=")))
(define-const var3561 String (pass/-1362711965 var3848)) ; Statement: $r14 = r1.<cn.hutool.extra.mail.MailAccount: java.lang.String pass> 
(define-const var2718 Bool (var1135_isEmpty/1540305040 (cast-from-String-to-String var3561))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isEmpty(java.lang.CharSequence)>($r14) 
 ; Statement: if $z0 == 0 goto $r31 = "******" 
(assert (not (= (ite var2718 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3496 String "") ; Statement: $r31 = "" 
 ; Statement: goto [?= $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3609 String (append/672562846 var3577 var3496)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31) 
(declare-const var3577!1 String)
(assert (= var3577!1 (str.++ var3577 var3496)))
(assert true)
(define-const var2515 String (append/672562846 var3609 ", from=")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", from=") 
(declare-const var3609!1 String)
(assert (= var3609!1 (str.++ var3609 ", from=")))
(define-const var1922 String (from/-1362711965 var3848)) ; Statement: $r17 = r1.<cn.hutool.extra.mail.MailAccount: java.lang.String 'from'> 
(assert true)
(define-const var2699 String (append/672562846 var2515 var1922)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2515!1 String)
(assert (= var2515!1 (str.++ var2515 var1922)))
(assert true)
(define-const var2027 String (append/672562846 var2699 ", startttlsEnable=")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", startttlsEnable=") 
(declare-const var2699!1 String)
(assert (= var2699!1 (str.++ var2699 ", startttlsEnable=")))
(define-const var230 Bool (starttlsEnable/-1362711965 var3848)) ; Statement: $z1 = r1.<cn.hutool.extra.mail.MailAccount: boolean starttlsEnable> 
(assert true)
(define-const var2091 String (append/-388390247 var2027 var230)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z1) 
(declare-const var2027!1 String)
(assert (str.prefixof var2027 var2027!1))
(assert true)
(define-const var1515 String (append/672562846 var2091 ", socketFactoryClass=")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", socketFactoryClass=") 
(declare-const var2091!1 String)
(assert (= var2091!1 (str.++ var2091 ", socketFactoryClass=")))
(define-const var190 String (socketFactoryClass/-1362711965 var3848)) ; Statement: $r22 = r1.<cn.hutool.extra.mail.MailAccount: java.lang.String socketFactoryClass> 
(assert true)
(define-const var894 String (append/672562846 var1515 var190)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1515!1 String)
(assert (= var1515!1 (str.++ var1515 var190)))
(assert true)
(define-const var3900 String (append/672562846 var894 ", socketFactoryFallback=")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", socketFactoryFallback=") 
(declare-const var894!1 String)
(assert (= var894!1 (str.++ var894 ", socketFactoryFallback=")))
(define-const var2242 Bool (socketFactoryFallback/-1362711965 var3848)) ; Statement: $z2 = r1.<cn.hutool.extra.mail.MailAccount: boolean socketFactoryFallback> 
(assert true)
(define-const var690 String (append/-388390247 var3900 var2242)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z2) 
(declare-const var3900!1 String)
(assert (str.prefixof var3900 var3900!1))
(assert true)
(define-const var3879 String (append/672562846 var690 ", socketFactoryPort=")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", socketFactoryPort=") 
(declare-const var690!1 String)
(assert (= var690!1 (str.++ var690 ", socketFactoryPort=")))
(define-const var3509 Int (socketFactoryPort/-1362711965 var3848)) ; Statement: $i0 = r1.<cn.hutool.extra.mail.MailAccount: int socketFactoryPort> 
(assert true)
(define-const var996 String (append/-1001720160 var3879 var3509)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3879!1 String)
(assert (str.prefixof var3879 var3879!1))
(assert true)
(define-const var1758 String (append/672562846 var996 "]")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var996!1 String)
(assert (= var996!1 (str.++ var996 "]")))
(assert true)
(define-const var1494 String (toString/-2075883882 var1758)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), host/-1362711965=([cn.hutool.extra.mail.MailAccount], java.lang.String), port/-1362711965=([cn.hutool.extra.mail.MailAccount], java.lang.Integer), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Int-to-var2604=([java.lang.Integer], java.lang.Object), auth/-1362711965=([cn.hutool.extra.mail.MailAccount], java.lang.Boolean), cast-from-var2846-to-var2604=([java.lang.Boolean], java.lang.Object), user/-1362711965=([cn.hutool.extra.mail.MailAccount], java.lang.String), pass/-1362711965=([cn.hutool.extra.mail.MailAccount], java.lang.String), var1135_isEmpty/1540305040=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), from/-1362711965=([cn.hutool.extra.mail.MailAccount], java.lang.String), starttlsEnable/-1362711965=([cn.hutool.extra.mail.MailAccount], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), socketFactoryClass/-1362711965=([cn.hutool.extra.mail.MailAccount], java.lang.String), socketFactoryFallback/-1362711965=([cn.hutool.extra.mail.MailAccount], boolean), socketFactoryPort/-1362711965=([cn.hutool.extra.mail.MailAccount], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1287=cn.hutool.extra.mail.MailAccount, var3848=r1, var744=$r0, var2015=$r3, var78=$r2, var642=$r4, var3418=$r6, var2759=$r5, var2604=java.lang.Object, var2513=$r7, var1629=$r9, var2846=java.lang.Boolean, var3840=$r8, var575=$r10, var638=$r12, var2600=$r11, var3586=$r13, var3577=$r15, var3561=$r14, var1135=cn.hutool.core.text.CharSequenceUtil, var2718=$z0, var3496=$r31, var3609=$r16, var2515=$r18, var1922=$r17, var2699=$r19, var2027=$r20, var230=$z1, var2091=$r21, var1515=$r23, var190=$r22, var894=$r24, var3900=$r25, var2242=$z2, var690=$r26, var3879=$r27, var3509=$i0, var996=$r28, var1758=$r29, var1494=$r30}
; {cn.hutool.extra.mail.MailAccount=var1287, r1=var3848, $r0=var744, $r3=var2015, $r2=var78, $r4=var642, $r6=var3418, $r5=var2759, java.lang.Object=var2604, $r7=var2513, $r9=var1629, java.lang.Boolean=var2846, $r8=var3840, $r10=var575, $r12=var638, $r11=var2600, $r13=var3586, $r15=var3577, $r14=var3561, cn.hutool.core.text.CharSequenceUtil=var1135, $z0=var2718, $r31=var3496, $r16=var3609, $r18=var2515, $r17=var1922, $r19=var2699, $r20=var2027, $z1=var230, $r21=var2091, $r23=var1515, $r22=var190, $r24=var894, $r25=var3900, $z2=var2242, $r26=var690, $r27=var3879, $i0=var3509, $r28=var996, $r29=var1758, $r30=var1494}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 16,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.extra.mail.MailAccount;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MailAccount [host=");	$r2 = r1.<cn.hutool.extra.mail.MailAccount: java.lang.String host>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", port=");	$r5 = r1.<cn.hutool.extra.mail.MailAccount: java.lang.Integer port>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", auth=");	$r8 = r1.<cn.hutool.extra.mail.MailAccount: java.lang.Boolean auth>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", user=");	$r11 = r1.<cn.hutool.extra.mail.MailAccount: java.lang.String user>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", pass=");	$r14 = r1.<cn.hutool.extra.mail.MailAccount: java.lang.String pass>;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isEmpty(java.lang.CharSequence)>($r14);	if $z0 == 0 goto $r31 = "******";	$r31 = "";	goto [?= $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31)];	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31);	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", from=");	$r17 = r1.<cn.hutool.extra.mail.MailAccount: java.lang.String 'from'>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", startttlsEnable=");	$z1 = r1.<cn.hutool.extra.mail.MailAccount: boolean starttlsEnable>;	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z1);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", socketFactoryClass=");	$r22 = r1.<cn.hutool.extra.mail.MailAccount: java.lang.String socketFactoryClass>;	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", socketFactoryFallback=");	$z2 = r1.<cn.hutool.extra.mail.MailAccount: boolean socketFactoryFallback>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z2);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", socketFactoryPort=");	$i0 = r1.<cn.hutool.extra.mail.MailAccount: int socketFactoryPort>;	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	return $r30
;block_num 3
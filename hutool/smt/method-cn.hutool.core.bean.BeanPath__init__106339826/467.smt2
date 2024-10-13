(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var448 0)
(declare-sort var3272 0)
(declare-sort var1457 0)
(declare-sort var33 0)
(declare-sort var1586 0)
(declare-sort var2837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1457-init () var1457)
(declare-fun <init>/-325640736 (var1457) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var33-init () var33)
(declare-fun arr-var1586-init () (Array Int var1586))
(declare-fun cast-from-String-to-var1586 (String) var1586)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1586 (Int) var1586)
(declare-fun var2837_format/-950946974 (String (Array Int var1586)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun <init>/875830710 (var33 String) void)
(declare-const null-var448 var448)
(declare-const null-String String)
(declare-const null-__Array__Int__var1586__ (Array Int var1586))
(declare-const var119 var448) ; Statement: r3 := @this: cn.hutool.core.bean.BeanPath 
(assert (not (= var119 null-var448)))
(declare-const var1083 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1083 null-String)))
(define-const var1028 var1457 var1457-init) ; Statement: $r20 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1028)) ; Statement: specialinvoke $r20.<java.util.ArrayList: void <init>()>() 

(declare-const var1028!1 var1457)
(assert true)
(define-const var1840 Int (length/-134980193 var1083)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var706 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var706)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var706!1 String)
(assert (= var706!1 ""))
(define-const var3671 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var446 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var1979 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var756 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var261 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var3157 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var3157 var1840)) ; Cond: i4 >= i0 
 ; Statement: if z4 == 0 goto $i1 = virtualinvoke $r21.<java.lang.StringBuilder: int length()>() 
(assert (not (= (ite var756 1 0) 0))) ; Negate: Cond: z4 == 0  
(define-const var2227 var33 var33-init) ; Statement: $r24 = new java.lang.IllegalArgumentException 
(define-const var1754 (Array Int var1586) arr-var1586-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(declare-const var1754!1 (Array Int var1586))
(assert (not (= var1754!1 null-__Array__Int__var1586__)))
(assert (= (select var1754!1 0) (cast-from-String-to-var1586 var1083))) ; Statement: $r7[0] = r1 
(define-const var185 Int (- var1840 1)) ; Statement: $i2 = i0 - 1 
(define-const var474 Int (Int_valueOf/-1371140006 var185)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
(declare-const var1754!2 (Array Int var1586))
(assert (not (= var1754!2 null-__Array__Int__var1586__)))
(assert (= (select var1754!2 1) (cast-from-Int-to-var1586 var474))) ; Statement: $r7[1] = $r8 
(define-const var3159 String (var2837_format/-950946974 (cast-from-String-to-String "Bad expression \u0027{}\u0027:{}, we find \u0027[\u0027 but no \u0027]\u0027 !") var1754!2)) ; Statement: $r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String format(java.lang.CharSequence,java.lang.Object[])>("Bad expression \'{}\':{}, we find \'[\' but no \']\' !", $r7) 
(assert true)
;(assert (<init>/875830710 var2227 var3159)) ; Statement: specialinvoke $r24.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var2227!1 var33)
(declare-const var3159!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var1457-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var33-init=([], java.lang.IllegalArgumentException), arr-var1586-init=([], java.lang.Object[]), cast-from-String-to-var1586=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1586=([java.lang.Integer], java.lang.Object), var2837_format/-950946974=([java.lang.CharSequence, java.lang.Object[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var448=cn.hutool.core.bean.BeanPath, var119=r3, var1083=r1, var3272=null_type, var1457=java.util.ArrayList, var1028=$r20, var1840=i0, var706=$r21, var3671=z1, var446=z6, var1979=z5, var756=z4, var261=z2, var3157=i4, var33=java.lang.IllegalArgumentException, var2227=$r24, var1586=java.lang.Object, var1754=$r7, var185=$i2, var474=$r8, var2837=cn.hutool.core.text.CharSequenceUtil, var3159=$r9}
; {cn.hutool.core.bean.BeanPath=var448, r3=var119, r1=var1083, null_type=var3272, java.util.ArrayList=var1457, $r20=var1028, i0=var1840, $r21=var706, z1=var3671, z6=var446, z5=var1979, z4=var756, z2=var261, i4=var3157, java.lang.IllegalArgumentException=var33, $r24=var2227, java.lang.Object=var1586, $r7=var1754, $i2=var185, $r8=var474, cn.hutool.core.text.CharSequenceUtil=var2837, $r9=var3159}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r3 := @this: cn.hutool.core.bean.BeanPath;	r1 := @parameter0: java.lang.String;	$r20 = new java.util.ArrayList;	specialinvoke $r20.<java.util.ArrayList: void <init>()>();	i0 = virtualinvoke r1.<java.lang.String: int length()>();	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	z1 = 0;	z6 = 0;	z5 = 0;	z4 = 0;	z2 = 0;	i4 = 0;	if i4 >= i0 goto (branch);	if z4 == 0 goto $i1 = virtualinvoke $r21.<java.lang.StringBuilder: int length()>();	$r24 = new java.lang.IllegalArgumentException;	$r7 = newarray (java.lang.Object)[2];	$r7[0] = r1;	$i2 = i0 - 1;	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	$r7[1] = $r8;	$r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String format(java.lang.CharSequence,java.lang.Object[])>("Bad expression \'{}\':{}, we find \'[\' but no \']\' !", $r7);	specialinvoke $r24.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r24
;block_num 4
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var776 0)
(declare-sort var2519 0)
(declare-sort var1964 0)
(declare-sort var1439 0)
(declare-sort var3796 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2519_ipv4ToLong/-1532561075 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-var1964-init () (Array Int var1964))
(declare-fun var1439_isTrue/296736586 (Bool String (Array Int var1964)) void)
(declare-fun var3796_splitToArray/-262974706 (String Int) (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun length/-171891354 (String) Int)
(declare-fun substring/235658101 (String Int Int) String)
(declare-const null-String String)
(declare-const var3912 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3912 null-String)))
(declare-const var1704 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1704 null-String)))
(define-const var440 Int (var2519_ipv4ToLong/-1532561075 var1704)) ; Statement: l0 = staticinvoke <cn.hutool.core.net.Ipv4Util: long ipv4ToLong(java.lang.String)>(r0) 
(define-const var3533 Int (var2519_ipv4ToLong/-1532561075 var3912)) ; Statement: l1 = staticinvoke <cn.hutool.core.net.Ipv4Util: long ipv4ToLong(java.lang.String)>(r1) 
(define-const var548 Int (ite (> var3533 var440) 1 (ite (< var3533 var440) (- 1) 0))) ; Statement: $b2 = l1 cmp l0 
(define-const var1497 Int (cast-from-Int-to-Int var548)) ; Statement: $i11 = (int) $b2 
 ; Statement: if $i11 >= 0 goto $z0 = 0 
(assert (>= var1497 0)) ; Cond: $i11 >= 0 
(define-const var2926 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
(define-const var1262 (Array Int var1964) arr-var1964-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
;(assert (var1439_isTrue/296736586 var2926 "to IP must be greater than from IP!" var1262)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: void isTrue(boolean,java.lang.String,java.lang.Object[])>($z0, "to IP must be greater than from IP!", $r2) 

(declare-const var2926!1 Bool)
(declare-const var2158 String)
(declare-const var1262!1 (Array Int var1964))
(define-const var962 (Array Int String) (var3796_splitToArray/-262974706 (cast-from-String-to-String var3912) 46)) ; Statement: $r8 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r1, 46) 
(define-const var3835 (Array Int String) (var3796_splitToArray/-262974706 (cast-from-String-to-String var1704) 46)) ; Statement: $r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r0, 46) 
(define-const var1589 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1589)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1589!1 String)
(assert (= var1589!1 ""))
(define-const var3477 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(define-const var1961 Int (getLength-Arr-String-1 var3835)) ; Statement: $i10 = lengthof $r9 
 ; Statement: if i9 >= $i10 goto $i3 = virtualinvoke $r10.<java.lang.StringBuilder: int length()>() 
(assert (>= var3477 var1961)) ; Cond: i9 >= $i10 
(assert true)
(define-const var1311 Int (length/-171891354 var1589!1)) ; Statement: $i3 = virtualinvoke $r10.<java.lang.StringBuilder: int length()>() 
(define-const var1366 Int (- var1311 1)) ; Statement: $i4 = $i3 - 1 
(assert true)
(define-const var3078 String (substring/235658101 var1589!1 0 var1366)) ; Statement: $r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String substring(int,int)>(0, $i4) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2519_ipv4ToLong/-1532561075=([java.lang.String], long), cast-from-Int-to-Int=([byte], int), arr-var1964-init=([], java.lang.Object[]), var1439_isTrue/296736586=([boolean, java.lang.String, java.lang.Object[]], void), var3796_splitToArray/-262974706=([java.lang.CharSequence, char], java.lang.String[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-String-1=([java.lang.String[]], int), length/-171891354=([java.lang.StringBuilder], int), substring/235658101=([java.lang.StringBuilder, int, int], java.lang.String)}
; {var3912=r1, var776=null_type, var1704=r0, var2519=cn.hutool.core.net.Ipv4Util, var440=l0, var3533=l1, var548=$b2, var1497=$i11, var2926=$z0, var1964=java.lang.Object, var1262=$r2, var1439=cn.hutool.core.lang.Assert, var2158="to IP must be greater than from IP!", var3796=cn.hutool.core.text.CharSequenceUtil, var962=$r8, var3835=$r9, var1589=$r10, var3477=i9, var1961=$i10, var1311=$i3, var1366=$i4, var3078=$r4}
; {r1=var3912, null_type=var776, r0=var1704, cn.hutool.core.net.Ipv4Util=var2519, l0=var440, l1=var3533, $b2=var548, $i11=var1497, $z0=var2926, java.lang.Object=var1964, $r2=var1262, cn.hutool.core.lang.Assert=var1439, "to IP must be greater than from IP!"=var2158, cn.hutool.core.text.CharSequenceUtil=var3796, $r8=var962, $r9=var3835, $r10=var1589, i9=var3477, $i10=var1961, $i3=var1311, $i4=var1366, $r4=var3078}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String substring(int,int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String substring(int,int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	l0 = staticinvoke <cn.hutool.core.net.Ipv4Util: long ipv4ToLong(java.lang.String)>(r0);	l1 = staticinvoke <cn.hutool.core.net.Ipv4Util: long ipv4ToLong(java.lang.String)>(r1);	$b2 = l1 cmp l0;	$i11 = (int) $b2;	if $i11 >= 0 goto $z0 = 0;	$z0 = 0;	$r2 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: void isTrue(boolean,java.lang.String,java.lang.Object[])>($z0, "to IP must be greater than from IP!", $r2);	$r8 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r1, 46);	$r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r0, 46);	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	i9 = 0;	$i10 = lengthof $r9;	if i9 >= $i10 goto $i3 = virtualinvoke $r10.<java.lang.StringBuilder: int length()>();	$i3 = virtualinvoke $r10.<java.lang.StringBuilder: int length()>();	$i4 = $i3 - 1;	$r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String substring(int,int)>(0, $i4);	return $r4
;block_num 5
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3580 0)
(declare-sort var862 0)
(declare-sort var1063 0)
(declare-sort var1899 0)
(declare-sort var2760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var862_ipv4ToLong/-1532561075 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-var1063-init () (Array Int var1063))
(declare-fun var1899_isTrue/296736586 (Bool String (Array Int var1063)) void)
(declare-fun var2760_splitToArray/-262974706 (String Int) (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun length/-171891354 (String) Int)
(declare-fun substring/235658101 (String Int Int) String)
(declare-const null-String String)
(declare-const var1386 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1386 null-String)))
(declare-const var991 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var991 null-String)))
(define-const var820 Int (var862_ipv4ToLong/-1532561075 var991)) ; Statement: l0 = staticinvoke <cn.hutool.core.net.Ipv4Util: long ipv4ToLong(java.lang.String)>(r0) 
(define-const var1361 Int (var862_ipv4ToLong/-1532561075 var1386)) ; Statement: l1 = staticinvoke <cn.hutool.core.net.Ipv4Util: long ipv4ToLong(java.lang.String)>(r1) 
(define-const var2011 Int (ite (> var1361 var820) 1 (ite (< var1361 var820) (- 1) 0))) ; Statement: $b2 = l1 cmp l0 
(define-const var3701 Int (cast-from-Int-to-Int var2011)) ; Statement: $i11 = (int) $b2 
 ; Statement: if $i11 >= 0 goto $z0 = 0 
(assert (not (>= var3701 0))) ; Negate: Cond: $i11 >= 0  
(define-const var3723 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= $r2 = newarray (java.lang.Object)[0]] 
(assert true) ; Non Conditional
(define-const var3957 (Array Int var1063) arr-var1063-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
;(assert (var1899_isTrue/296736586 var3723 "to IP must be greater than from IP!" var3957)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: void isTrue(boolean,java.lang.String,java.lang.Object[])>($z0, "to IP must be greater than from IP!", $r2) 

(declare-const var3723!1 Bool)
(declare-const var1160 String)
(declare-const var3957!1 (Array Int var1063))
(define-const var1069 (Array Int String) (var2760_splitToArray/-262974706 (cast-from-String-to-String var1386) 46)) ; Statement: $r8 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r1, 46) 
(define-const var2526 (Array Int String) (var2760_splitToArray/-262974706 (cast-from-String-to-String var991) 46)) ; Statement: $r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r0, 46) 
(define-const var2497 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2497)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2497!1 String)
(assert (= var2497!1 ""))
(define-const var3044 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(define-const var1177 Int (getLength-Arr-String-1 var2526)) ; Statement: $i10 = lengthof $r9 
 ; Statement: if i9 >= $i10 goto $i3 = virtualinvoke $r10.<java.lang.StringBuilder: int length()>() 
(assert (>= var3044 var1177)) ; Cond: i9 >= $i10 
(assert true)
(define-const var928 Int (length/-171891354 var2497!1)) ; Statement: $i3 = virtualinvoke $r10.<java.lang.StringBuilder: int length()>() 
(define-const var3348 Int (- var928 1)) ; Statement: $i4 = $i3 - 1 
(assert true)
(define-const var11 String (substring/235658101 var2497!1 0 var3348)) ; Statement: $r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String substring(int,int)>(0, $i4) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var862_ipv4ToLong/-1532561075=([java.lang.String], long), cast-from-Int-to-Int=([byte], int), arr-var1063-init=([], java.lang.Object[]), var1899_isTrue/296736586=([boolean, java.lang.String, java.lang.Object[]], void), var2760_splitToArray/-262974706=([java.lang.CharSequence, char], java.lang.String[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-String-1=([java.lang.String[]], int), length/-171891354=([java.lang.StringBuilder], int), substring/235658101=([java.lang.StringBuilder, int, int], java.lang.String)}
; {var1386=r1, var3580=null_type, var991=r0, var862=cn.hutool.core.net.Ipv4Util, var820=l0, var1361=l1, var2011=$b2, var3701=$i11, var3723=$z0, var1063=java.lang.Object, var3957=$r2, var1899=cn.hutool.core.lang.Assert, var1160="to IP must be greater than from IP!", var2760=cn.hutool.core.text.CharSequenceUtil, var1069=$r8, var2526=$r9, var2497=$r10, var3044=i9, var1177=$i10, var928=$i3, var3348=$i4, var11=$r4}
; {r1=var1386, null_type=var3580, r0=var991, cn.hutool.core.net.Ipv4Util=var862, l0=var820, l1=var1361, $b2=var2011, $i11=var3701, $z0=var3723, java.lang.Object=var1063, $r2=var3957, cn.hutool.core.lang.Assert=var1899, "to IP must be greater than from IP!"=var1160, cn.hutool.core.text.CharSequenceUtil=var2760, $r8=var1069, $r9=var2526, $r10=var2497, i9=var3044, $i10=var1177, $i3=var928, $i4=var3348, $r4=var11}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String substring(int,int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String substring(int,int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	l0 = staticinvoke <cn.hutool.core.net.Ipv4Util: long ipv4ToLong(java.lang.String)>(r0);	l1 = staticinvoke <cn.hutool.core.net.Ipv4Util: long ipv4ToLong(java.lang.String)>(r1);	$b2 = l1 cmp l0;	$i11 = (int) $b2;	if $i11 >= 0 goto $z0 = 0;	$z0 = 1;	goto [?= $r2 = newarray (java.lang.Object)[0]];	$r2 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: void isTrue(boolean,java.lang.String,java.lang.Object[])>($z0, "to IP must be greater than from IP!", $r2);	$r8 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r1, 46);	$r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r0, 46);	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	i9 = 0;	$i10 = lengthof $r9;	if i9 >= $i10 goto $i3 = virtualinvoke $r10.<java.lang.StringBuilder: int length()>();	$i3 = virtualinvoke $r10.<java.lang.StringBuilder: int length()>();	$i4 = $i3 - 1;	$r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String substring(int,int)>(0, $i4);	return $r4
;block_num 5
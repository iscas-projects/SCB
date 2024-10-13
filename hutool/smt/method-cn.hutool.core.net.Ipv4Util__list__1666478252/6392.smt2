(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var284 0)
(declare-sort var2189 0)
(declare-sort var1554 0)
(declare-sort var3433 0)
(declare-sort var866 0)
(declare-sort var3680 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2189_getBeginIpStr/-1232029826 (String Int) String)
(declare-fun var2189_getEndIpStr/-144310480 (String Int) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1554_subPre/839217248 (String Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1554_subSuf/167588959 (String Int) String)
(declare-fun var866_requireNonNull/-961817614 (var3433) var3433)
(declare-fun cast-from-String-to-var3433 (String) var3433)
(declare-fun cast-from-var3433-to-String (var3433) String)
(declare-fun Int_parseInt/1370970945 (String) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2189_list/952981262 (String String) var3680)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3992 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3992 null-String)))
(declare-const var1521 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1521 null-Int)))
(declare-const var2183 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2183 null-Bool)))
 ; Statement: if i0 != 32 goto r18 = staticinvoke <cn.hutool.core.net.Ipv4Util: java.lang.String getBeginIpStr(java.lang.String,int)>(r0, i0) 
(assert (not (= var1521 32))) ; Cond: i0 != 32 
(define-const var2831 String (var2189_getBeginIpStr/-1232029826 var3992 var1521)) ; Statement: r18 = staticinvoke <cn.hutool.core.net.Ipv4Util: java.lang.String getBeginIpStr(java.lang.String,int)>(r0, i0) 
(define-const var1986 String (var2189_getEndIpStr/-144310480 var3992 var1521)) ; Statement: r19 = staticinvoke <cn.hutool.core.net.Ipv4Util: java.lang.String getEndIpStr(java.lang.String,int)>(r0, i0) 
 ; Statement: if z0 == 0 goto $i1 = virtualinvoke r18.<java.lang.String: int lastIndexOf(int)>(46) 
(assert (= (ite var2183 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3796 Int (lastIndexOf/-1292097097 var2831 46)) ; Statement: $i1 = virtualinvoke r18.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var1815 Int (+ var3796 1)) ; Statement: i7 = $i1 + 1 
(define-const var852 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var852)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var852!1 String)
(assert (= var852!1 ""))
(define-const var496 String (var1554_subPre/839217248 (cast-from-String-to-String var2831) var1815)) ; Statement: $r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r18, i7) 
(assert true)
(define-const var1156 String (append/672562846 var852!1 var496)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var852!2 String)
(assert (= var852!2 (str.++ var852!1 var496)))
(define-const var1929 String (var1554_subSuf/167588959 (cast-from-String-to-String var2831) var1815)) ; Statement: $r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subSuf(java.lang.CharSequence,int)>(r18, i7) 
(define-const var340 var3433 (var866_requireNonNull/-961817614 (cast-from-String-to-var3433 var1929))) ; Statement: $r4 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r3) 
(define-const var908 String (cast-from-var3433-to-String var340)) ; Statement: $r5 = (java.lang.String) $r4 
(define-const var2761 Int (Int_parseInt/1370970945 var908)) ; Statement: $i2 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5) 
(define-const var21 Int (+ var2761 1)) ; Statement: $i3 = $i2 + 1 
(assert true)
(define-const var370 String (append/-1001720160 var1156 var21)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var1156!1 String)
(assert (str.prefixof var1156 var1156!1))
(assert true)
(define-const var3114 String (toString/-2075883882 var370)) ; Statement: r20 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var614 Int (lastIndexOf/-1292097097 var1986 46)) ; Statement: $i4 = virtualinvoke r19.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2887 Int (+ var614 1)) ; Statement: i8 = $i4 + 1 
(define-const var879 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var879)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var879!1 String)
(assert (= var879!1 ""))
(define-const var1257 String (var1554_subPre/839217248 (cast-from-String-to-String var1986) var2887)) ; Statement: $r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r19, i8) 
(assert true)
(define-const var1934 String (append/672562846 var879!1 var1257)) ; Statement: $r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var879!2 String)
(assert (= var879!2 (str.++ var879!1 var1257)))
(define-const var3104 String (var1554_subSuf/167588959 (cast-from-String-to-String var1986) var2887)) ; Statement: $r10 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subSuf(java.lang.CharSequence,int)>(r19, i8) 
(define-const var1655 var3433 (var866_requireNonNull/-961817614 (cast-from-String-to-var3433 var3104))) ; Statement: $r11 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r10) 
(define-const var109 String (cast-from-var3433-to-String var1655)) ; Statement: $r12 = (java.lang.String) $r11 
(define-const var1476 Int (Int_parseInt/1370970945 var109)) ; Statement: $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r12) 
(define-const var1448 Int (- var1476 1)) ; Statement: $i6 = $i5 - 1 
(assert true)
(define-const var2799 String (append/-1001720160 var1934 var1448)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var1934!1 String)
(assert (str.prefixof var1934 var1934!1))
(assert true)
(define-const var3723 String (toString/-2075883882 var2799)) ; Statement: r21 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2963 var3680 (var2189_list/952981262 var3114 var3723)) ; Statement: $r15 = staticinvoke <cn.hutool.core.net.Ipv4Util: java.util.List list(java.lang.String,java.lang.String)>(r20, r21) 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2189_getBeginIpStr/-1232029826=([java.lang.String, int], java.lang.String), var2189_getEndIpStr/-144310480=([java.lang.String, int], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1554_subPre/839217248=([java.lang.CharSequence, int], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1554_subSuf/167588959=([java.lang.CharSequence, int], java.lang.String), var866_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var3433=([java.lang.String], java.lang.Object), cast-from-var3433-to-String=([java.lang.Object], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2189_list/952981262=([java.lang.String, java.lang.String], java.util.List)}
; {var3992=r0, var284=null_type, var1521=i0, var2183=z0, var2189=cn.hutool.core.net.Ipv4Util, var2831=r18, var1986=r19, var3796=$i1, var1815=i7, var852=$r1, var1554=cn.hutool.core.text.CharSequenceUtil, var496=$r2, var1156=$r6, var1929=$r3, var3433=java.lang.Object, var866=java.util.Objects, var340=$r4, var908=$r5, var2761=$i2, var21=$i3, var370=$r7, var3114=r20, var614=$i4, var2887=i8, var879=$r8, var1257=$r9, var1934=$r13, var3104=$r10, var1655=$r11, var109=$r12, var1476=$i5, var1448=$i6, var2799=$r14, var3723=r21, var3680=java.util.List, var2963=$r15}
; {r0=var3992, null_type=var284, i0=var1521, z0=var2183, cn.hutool.core.net.Ipv4Util=var2189, r18=var2831, r19=var1986, $i1=var3796, i7=var1815, $r1=var852, cn.hutool.core.text.CharSequenceUtil=var1554, $r2=var496, $r6=var1156, $r3=var1929, java.lang.Object=var3433, java.util.Objects=var866, $r4=var340, $r5=var908, $i2=var2761, $i3=var21, $r7=var370, r20=var3114, $i4=var614, i8=var2887, $r8=var879, $r9=var1257, $r13=var1934, $r10=var3104, $r11=var1655, $r12=var109, $i5=var1476, $i6=var1448, $r14=var2799, r21=var3723, java.util.List=var3680, $r15=var2963}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 2,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	z0 := @parameter2: boolean;	if i0 != 32 goto r18 = staticinvoke <cn.hutool.core.net.Ipv4Util: java.lang.String getBeginIpStr(java.lang.String,int)>(r0, i0);	r18 = staticinvoke <cn.hutool.core.net.Ipv4Util: java.lang.String getBeginIpStr(java.lang.String,int)>(r0, i0);	r19 = staticinvoke <cn.hutool.core.net.Ipv4Util: java.lang.String getEndIpStr(java.lang.String,int)>(r0, i0);	if z0 == 0 goto $i1 = virtualinvoke r18.<java.lang.String: int lastIndexOf(int)>(46);	$i1 = virtualinvoke r18.<java.lang.String: int lastIndexOf(int)>(46);	i7 = $i1 + 1;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r18, i7);	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subSuf(java.lang.CharSequence,int)>(r18, i7);	$r4 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r3);	$r5 = (java.lang.String) $r4;	$i2 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5);	$i3 = $i2 + 1;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	r20 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$i4 = virtualinvoke r19.<java.lang.String: int lastIndexOf(int)>(46);	i8 = $i4 + 1;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r19, i8);	$r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r10 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subSuf(java.lang.CharSequence,int)>(r19, i8);	$r11 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r10);	$r12 = (java.lang.String) $r11;	$i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r12);	$i6 = $i5 - 1;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	r21 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = staticinvoke <cn.hutool.core.net.Ipv4Util: java.util.List list(java.lang.String,java.lang.String)>(r20, r21);	return $r15
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3622 0)
(declare-sort var1001 0)
(declare-sort var3482 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1001_isBlank/-1569658263 (String) Bool)
(declare-fun var1001_subBetween/172444664 (String String String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1001_subPre/839217248 (String Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1001_subBefore/-2051203380 (String String Bool) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3482) String)
(declare-fun cast-from-String-to-var3482 (String) var3482)
(declare-fun var1001_subAfter/-1956058823 (String String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var615 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var615 null-String)))
(declare-const var2162 String) ; Statement: r2 := @parameter1: java.lang.CharSequence 
(assert (not (= var2162 null-String)))
(declare-const var891 String) ; Statement: r0 := @parameter2: java.lang.CharSequence 
(assert (not (= var891 null-String)))
(define-const var305 Bool (var1001_isBlank/-1569658263 var891)) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subBetween(java.lang.CharSequence,java.lang.CharSequence,java.lang.CharSequence)>(r1, r2, r0) 
(assert (= (ite var305 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1938 String (var1001_subBetween/172444664 (cast-from-String-to-String var615) var2162 var891)) ; Statement: $r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subBetween(java.lang.CharSequence,java.lang.CharSequence,java.lang.CharSequence)>(r1, r2, r0) 
(define-const var1877 String (var1001_subPre/839217248 (cast-from-String-to-String var1938) 3)) ; Statement: r21 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>($r3, 3) 
(define-const var732 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var732)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var732!1 String)
(assert (= var732!1 ""))
(define-const var3555 String (var1001_subBefore/-2051203380 (cast-from-String-to-String var615) var2162 (ite (= 1 1) true false))) ; Statement: $r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subBefore(java.lang.CharSequence,java.lang.CharSequence,boolean)>(r1, r2, 1) 
(assert true)
(define-const var3237 String (append/672562846 var732!1 var3555)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var732!2 String)
(assert (= var732!2 (str.++ var732!1 var3555)))
(assert true)
(define-const var325 String (append/-1031950772 var3237 (cast-from-String-to-var3482 var2162))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3237!1 String)
(assert (str.prefixof var3237 var3237!1))
(assert true)
(define-const var1762 String (append/672562846 var325 var1877)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21) 
(declare-const var325!1 String)
(assert (= var325!1 (str.++ var325 var1877)))
(assert true)
(define-const var2606 String (append/-1031950772 var1762 (cast-from-String-to-var3482 var891))) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1762!1 String)
(assert (str.prefixof var1762 var1762!1))
(define-const var2308 String (var1001_subAfter/-1956058823 (cast-from-String-to-String var615) var891 (ite (= 1 1) true false))) ; Statement: $r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subAfter(java.lang.CharSequence,java.lang.CharSequence,boolean)>(r1, r0, 1) 
(assert true)
(define-const var3049 String (append/672562846 var2606 var2308)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2606!1 String)
(assert (= var2606!1 (str.++ var2606 var2308)))
(assert true)
(define-const var138 String (toString/-2075883882 var3049)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1001_isBlank/-1569658263=([java.lang.CharSequence], boolean), var1001_subBetween/172444664=([java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1001_subPre/839217248=([java.lang.CharSequence, int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1001_subBefore/-2051203380=([java.lang.CharSequence, java.lang.CharSequence, boolean], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var3482=([java.lang.CharSequence], java.lang.Object), var1001_subAfter/-1956058823=([java.lang.CharSequence, java.lang.CharSequence, boolean], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var615=r1, var3622=null_type, var2162=r2, var891=r0, var1001=cn.hutool.core.text.CharSequenceUtil, var305=$z0, var1938=$r3, var1877=r21, var732=$r4, var3555=$r5, var3237=$r6, var3482=java.lang.Object, var325=$r7, var1762=$r8, var2606=$r10, var2308=$r9, var3049=$r11, var138=$r12}
; {r1=var615, null_type=var3622, r2=var2162, r0=var891, cn.hutool.core.text.CharSequenceUtil=var1001, $z0=var305, $r3=var1938, r21=var1877, $r4=var732, $r5=var3555, $r6=var3237, java.lang.Object=var3482, $r7=var325, $r8=var1762, $r10=var2606, $r9=var2308, $r11=var3049, $r12=var138}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.CharSequence;	r0 := @parameter2: java.lang.CharSequence;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subBetween(java.lang.CharSequence,java.lang.CharSequence,java.lang.CharSequence)>(r1, r2, r0);	$r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subBetween(java.lang.CharSequence,java.lang.CharSequence,java.lang.CharSequence)>(r1, r2, r0);	r21 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>($r3, 3);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subBefore(java.lang.CharSequence,java.lang.CharSequence,boolean)>(r1, r2, 1);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subAfter(java.lang.CharSequence,java.lang.CharSequence,boolean)>(r1, r0, 1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 2
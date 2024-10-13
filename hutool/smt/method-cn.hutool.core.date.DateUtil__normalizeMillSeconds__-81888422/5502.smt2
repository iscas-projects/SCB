(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1663 0)
(declare-sort var3693 0)
(declare-sort var2492 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3693_isBlank/-1569658263 (String) Bool)
(declare-fun var3693_subAfter/-1956058823 (String String Bool) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3693_subPre/839217248 (String Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3693_subBefore/-2051203380 (String String Bool) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2492) String)
(declare-fun cast-from-String-to-var2492 (String) var2492)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1628 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1628 null-String)))
(declare-const var465 String) ; Statement: r2 := @parameter1: java.lang.CharSequence 
(assert (not (= var465 null-String)))
(declare-const var1272 String) ; Statement: r0 := @parameter2: java.lang.CharSequence 
(assert (not (= var1272 null-String)))
(define-const var1308 Bool (var3693_isBlank/-1569658263 var1272)) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subBetween(java.lang.CharSequence,java.lang.CharSequence,java.lang.CharSequence)>(r1, r2, r0) 
(assert (not (= (ite var1308 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2167 String (var3693_subAfter/-1956058823 (cast-from-String-to-String var1628) var465 (ite (= 1 1) true false))) ; Statement: $r13 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subAfter(java.lang.CharSequence,java.lang.CharSequence,boolean)>(r1, r2, 1) 
(define-const var3985 String (var3693_subPre/839217248 (cast-from-String-to-String var2167) 3)) ; Statement: r20 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>($r13, 3) 
(define-const var3888 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3888)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3888!1 String)
(assert (= var3888!1 ""))
(define-const var646 String (var3693_subBefore/-2051203380 (cast-from-String-to-String var1628) var465 (ite (= 1 1) true false))) ; Statement: $r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subBefore(java.lang.CharSequence,java.lang.CharSequence,boolean)>(r1, r2, 1) 
(assert true)
(define-const var3603 String (append/672562846 var3888!1 var646)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3888!2 String)
(assert (= var3888!2 (str.++ var3888!1 var646)))
(assert true)
(define-const var2591 String (append/-1031950772 var3603 (cast-from-String-to-var2492 var465))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3603!1 String)
(assert (str.prefixof var3603 var3603!1))
(assert true)
(define-const var275 String (append/672562846 var2591 var3985)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var2591!1 String)
(assert (= var2591!1 (str.++ var2591 var3985)))
(assert true)
(define-const var3779 String (toString/-2075883882 var275)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var3693_isBlank/-1569658263=([java.lang.CharSequence], boolean), var3693_subAfter/-1956058823=([java.lang.CharSequence, java.lang.CharSequence, boolean], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3693_subPre/839217248=([java.lang.CharSequence, int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3693_subBefore/-2051203380=([java.lang.CharSequence, java.lang.CharSequence, boolean], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var2492=([java.lang.CharSequence], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1628=r1, var1663=null_type, var465=r2, var1272=r0, var3693=cn.hutool.core.text.CharSequenceUtil, var1308=$z0, var2167=$r13, var3985=r20, var3888=$r14, var646=$r15, var3603=$r16, var2492=java.lang.Object, var2591=$r17, var275=$r18, var3779=$r19}
; {r1=var1628, null_type=var1663, r2=var465, r0=var1272, cn.hutool.core.text.CharSequenceUtil=var3693, $z0=var1308, $r13=var2167, r20=var3985, $r14=var3888, $r15=var646, $r16=var3603, java.lang.Object=var2492, $r17=var2591, $r18=var275, $r19=var3779}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.CharSequence;	r0 := @parameter2: java.lang.CharSequence;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subBetween(java.lang.CharSequence,java.lang.CharSequence,java.lang.CharSequence)>(r1, r2, r0);	$r13 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subAfter(java.lang.CharSequence,java.lang.CharSequence,boolean)>(r1, r2, 1);	r20 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>($r13, 3);	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subBefore(java.lang.CharSequence,java.lang.CharSequence,boolean)>(r1, r2, 1);	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r19
;block_num 2
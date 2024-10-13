(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1211 0)
(declare-sort var3807 0)
(declare-sort var2353 0)
(declare-sort var2191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3807-init () (Array Int var3807))
(declare-fun var2353_notNull/515149844 (var3807 String (Array Int var3807)) var3807)
(declare-fun cast-from-String-to-var3807 (String) var3807)
(declare-fun var2191_removePrefixIgnoreCase/-438703815 (String String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3466 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3466 null-String)))
(define-const var3686 (Array Int var3807) arr-var3807-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
;(assert (var2353_notNull/515149844 (cast-from-String-to-var3807 var3466) "input must not be null!" var3686)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r6, "input must not be null!", $r0) 

(declare-const var3466!1 String)
(declare-const var1138 String)
(declare-const var3686!1 (Array Int var3807))
(define-const var2622 String (var2191_removePrefixIgnoreCase/-438703815 (cast-from-String-to-String var3466!1) (cast-from-String-to-String "xn--"))) ; Statement: r7 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removePrefixIgnoreCase(java.lang.CharSequence,java.lang.CharSequence)>(r6, "xn--") 
(define-const var1731 Int 128) ; Statement: i22 = 128 
(define-const var3467 Int 0) ; Statement: i23 = 0 
(define-const var1686 Int 72) ; Statement: i24 = 72 
(define-const var2314 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2314)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2314!1 String)
(assert (= var2314!1 ""))
(assert true)
(define-const var1705 Int (lastIndexOf/-1292097097 var2622 45)) ; Statement: i25 = virtualinvoke r7.<java.lang.String: int lastIndexOf(int)>(45) 
 ; Statement: if i25 <= 0 goto i28 = 0 
(assert (<= var1705 0)) ; Cond: i25 <= 0 
(define-const var2066 Int 0) ; Statement: i28 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var192 Int (length/-134980193 var2622)) ; Statement: $i21 = virtualinvoke r7.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i28 >= $i21 goto $r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2066 var192)) ; Cond: i28 >= $i21 
(assert true)
(define-const var2933 String (toString/-2075883882 var2314!1)) ; Statement: $r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3807-init=([], java.lang.Object[]), var2353_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var3807=([java.lang.String], java.lang.Object), var2191_removePrefixIgnoreCase/-438703815=([java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), lastIndexOf/-1292097097=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3466=r6, var1211=null_type, var3807=java.lang.Object, var3686=$r0, var2353=cn.hutool.core.lang.Assert, var1138="input must not be null!", var2191=cn.hutool.core.text.CharSequenceUtil, var2622=r7, var1731=i22, var3467=i23, var1686=i24, var2314=$r8, var1705=i25, var2066=i28, var192=$i21, var2933=$r2}
; {r6=var3466, null_type=var1211, java.lang.Object=var3807, $r0=var3686, cn.hutool.core.lang.Assert=var2353, "input must not be null!"=var1138, cn.hutool.core.text.CharSequenceUtil=var2191, r7=var2622, i22=var1731, i23=var3467, i24=var1686, $r8=var2314, i25=var1705, i28=var2066, $i21=var192, $r2=var2933}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r6, "input must not be null!", $r0);	r7 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removePrefixIgnoreCase(java.lang.CharSequence,java.lang.CharSequence)>(r6, "xn--");	i22 = 128;	i23 = 0;	i24 = 72;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	i25 = virtualinvoke r7.<java.lang.String: int lastIndexOf(int)>(45);	if i25 <= 0 goto i28 = 0;	i28 = 0;	$i21 = virtualinvoke r7.<java.lang.String: int length()>();	if i28 >= $i21 goto $r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 5
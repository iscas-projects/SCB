(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1211 0)
(declare-sort var2676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1211-init () (Array Int var1211))
(declare-fun var2676_notNull/515149844 (var1211 String (Array Int var1211)) var1211)
(declare-fun cast-from-String-to-var1211 (String) var1211)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun String_length/-667254855 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2525 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2525 null-String)))
(declare-const var598 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var598 null-Bool)))
(define-const var3265 (Array Int var1211) arr-var1211-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var2676_notNull/515149844 (cast-from-String-to-var1211 var2525) "input must not be null!" var3265)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "input must not be null!", $r1) 

(declare-const var2525!1 String)
(declare-const var785 String)
(declare-const var3265!1 (Array Int var1211))
(define-const var2067 Int 128) ; Statement: i21 = 128 
(define-const var2975 Int 0) ; Statement: i22 = 0 
(define-const var1141 Int 72) ; Statement: i23 = 72 
(define-const var209 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var209)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var209!1 String)
(assert (= var209!1 ""))
(define-const var2553 Int (String_length/-667254855 var2525!1)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var3587 Int 0) ; Statement: i24 = 0 
(define-const var2249 Int 0) ; Statement: i25 = 0 
(assert true) ; Non Conditional
 ; Statement: if i25 >= i0 goto (branch) 
(assert (>= var2249 var2553)) ; Cond: i25 >= i0 
 ; Statement: if i24 <= 0 goto i27 = i24 
(assert (not (<= var3587 0))) ; Negate: Cond: i24 <= 0  
 ; Statement: if i24 != i0 goto virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(assert (not (not (= var3587 var2553)))) ; Negate: Cond: i24 != i0  
(assert true)
(define-const var1973 String (toString/-2075883882 var209!1)) ; Statement: $r6 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1211-init=([], java.lang.Object[]), var2676_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var1211=([java.lang.CharSequence], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), String_length/-667254855=([java.lang.CharSequence], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2525=r0, var598=z0, var1211=java.lang.Object, var3265=$r1, var2676=cn.hutool.core.lang.Assert, var785="input must not be null!", var2067=i21, var2975=i22, var1141=i23, var209=$r7, var2553=i0, var3587=i24, var2249=i25, var1973=$r6}
; {r0=var2525, z0=var598, java.lang.Object=var1211, $r1=var3265, cn.hutool.core.lang.Assert=var2676, "input must not be null!"=var785, i21=var2067, i22=var2975, i23=var1141, $r7=var209, i0=var2553, i24=var3587, i25=var2249, $r6=var1973}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.CharSequence: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	z0 := @parameter1: boolean;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "input must not be null!", $r1);	i21 = 128;	i22 = 0;	i23 = 72;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i24 = 0;	i25 = 0;	if i25 >= i0 goto (branch);	if i24 <= 0 goto i27 = i24;	if i24 != i0 goto virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$r6 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 5
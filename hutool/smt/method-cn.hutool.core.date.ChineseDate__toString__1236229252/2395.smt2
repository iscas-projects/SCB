(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var249 0)
(declare-sort var2232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2232-init () (Array Int var2232))
(declare-fun getCyclical/-1190661872 (var249) String)
(declare-fun cast-from-String-to-var2232 (String) var2232)
(declare-fun getChineseZodiac/1115520733 (var249) String)
(declare-fun getChineseMonthName/-181260362 (var249) String)
(declare-fun getChineseDay/965899941 (var249) String)
(declare-fun String_format/1339386452 (String (Array Int var2232)) String)
(declare-const null-var249 var249)
(declare-const null-__Array__Int__var2232__ (Array Int var2232))
(declare-const var1132 var249) ; Statement: r1 := @this: cn.hutool.core.date.ChineseDate 
(assert (not (= var1132 null-var249)))
(define-const var1601 (Array Int var2232) arr-var2232-init) ; Statement: $r0 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var1679 String (getCyclical/-1190661872 var1132)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.core.date.ChineseDate: java.lang.String getCyclical()>() 
(declare-const var1601!1 (Array Int var2232))
(assert (not (= var1601!1 null-__Array__Int__var2232__)))
(assert (= (select var1601!1 0) (cast-from-String-to-var2232 var1679))) ; Statement: $r0[0] = $r2 
(assert true)
(define-const var568 String (getChineseZodiac/1115520733 var1132)) ; Statement: $r3 = virtualinvoke r1.<cn.hutool.core.date.ChineseDate: java.lang.String getChineseZodiac()>() 
(declare-const var1601!2 (Array Int var2232))
(assert (not (= var1601!2 null-__Array__Int__var2232__)))
(assert (= (select var1601!2 1) (cast-from-String-to-var2232 var568))) ; Statement: $r0[1] = $r3 
(assert true)
(define-const var1823 String (getChineseMonthName/-181260362 var1132)) ; Statement: $r4 = virtualinvoke r1.<cn.hutool.core.date.ChineseDate: java.lang.String getChineseMonthName()>() 
(declare-const var1601!3 (Array Int var2232))
(assert (not (= var1601!3 null-__Array__Int__var2232__)))
(assert (= (select var1601!3 2) (cast-from-String-to-var2232 var1823))) ; Statement: $r0[2] = $r4 
(assert true)
(define-const var2906 String (getChineseDay/965899941 var1132)) ; Statement: $r5 = virtualinvoke r1.<cn.hutool.core.date.ChineseDate: java.lang.String getChineseDay()>() 
(declare-const var1601!4 (Array Int var2232))
(assert (not (= var1601!4 null-__Array__Int__var2232__)))
(assert (= (select var1601!4 3) (cast-from-String-to-var2232 var2906))) ; Statement: $r0[3] = $r5 
(define-const var2815 String (String_format/1339386452 "%s%s\u5e74 %s%s" var1601!4)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s%s\u5e74 %s%s", $r0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2232-init=([], java.lang.Object[]), getCyclical/-1190661872=([cn.hutool.core.date.ChineseDate], java.lang.String), cast-from-String-to-var2232=([java.lang.String], java.lang.Object), getChineseZodiac/1115520733=([cn.hutool.core.date.ChineseDate], java.lang.String), getChineseMonthName/-181260362=([cn.hutool.core.date.ChineseDate], java.lang.String), getChineseDay/965899941=([cn.hutool.core.date.ChineseDate], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var249=cn.hutool.core.date.ChineseDate, var1132=r1, var2232=java.lang.Object, var1601=$r0, var1679=$r2, var568=$r3, var1823=$r4, var2906=$r5, var2815=$r6}
; {cn.hutool.core.date.ChineseDate=var249, r1=var1132, java.lang.Object=var2232, $r0=var1601, $r2=var1679, $r3=var568, $r4=var1823, $r5=var2906, $r6=var2815}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: cn.hutool.core.date.ChineseDate;	$r0 = newarray (java.lang.Object)[4];	$r2 = virtualinvoke r1.<cn.hutool.core.date.ChineseDate: java.lang.String getCyclical()>();	$r0[0] = $r2;	$r3 = virtualinvoke r1.<cn.hutool.core.date.ChineseDate: java.lang.String getChineseZodiac()>();	$r0[1] = $r3;	$r4 = virtualinvoke r1.<cn.hutool.core.date.ChineseDate: java.lang.String getChineseMonthName()>();	$r0[2] = $r4;	$r5 = virtualinvoke r1.<cn.hutool.core.date.ChineseDate: java.lang.String getChineseDay()>();	$r0[3] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s%s\u5e74 %s%s", $r0);	return $r6
;block_num 1
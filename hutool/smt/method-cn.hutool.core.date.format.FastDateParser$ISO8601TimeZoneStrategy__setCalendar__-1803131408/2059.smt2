(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2680 0)
(declare-sort var1346 0)
(declare-sort var3687 0)
(declare-sort var3462 0)
(declare-sort var1705 0)
(declare-sort var3899 0)
(declare-sort var2075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1705_equals/1031735566 (var3899 var3899) Bool)
(declare-fun cast-from-String-to-var3899 (String) var3899)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2075_getTimeZone/1775699487 (String) var2075)
(declare-fun setTimeZone/692594535 (var3687 var2075) void)
(declare-const null-var2680 var2680)
(declare-const null-var1346 var1346)
(declare-const null-var3687 var3687)
(declare-const null-String String)
(declare-const var2677 var2680) ; Statement: r8 := @this: cn.hutool.core.date.format.FastDateParser$ISO8601TimeZoneStrategy 
(assert (not (= var2677 null-var2680)))
(declare-const var2578 var1346) ; Statement: r9 := @parameter0: cn.hutool.core.date.format.FastDateParser 
(assert (not (= var2578 null-var1346)))
(declare-const var1787 var3687) ; Statement: r1 := @parameter1: java.util.Calendar 
(assert (not (= var1787 null-var3687)))
(declare-const var1595 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1595 null-String)))
(define-const var3872 Bool (var1705_equals/1031735566 (cast-from-String-to-var3899 var1595) (cast-from-String-to-var3899 "Z"))) ; Statement: $z0 = staticinvoke <java.util.Objects: boolean equals(java.lang.Object,java.lang.Object)>(r0, "Z") 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var3872 1 0) 0)) ; Cond: $z0 == 0 
(define-const var468 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var468)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var468!1 String)
(assert (= var468!1 ""))
(assert true)
(define-const var3416 String (append/672562846 var468!1 "GMT")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("GMT") 
(declare-const var468!2 String)
(assert (= var468!2 (str.++ var468!1 "GMT")))
(assert true)
(define-const var1919 String (append/672562846 var3416 var1595)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3416!1 String)
(assert (= var3416!1 (str.++ var3416 var1595)))
(assert true)
(define-const var3380 String (toString/-2075883882 var1919)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2786 var2075 (var2075_getTimeZone/1775699487 var3380)) ; Statement: $r6 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>($r5) 
(assert true)
;(assert (setTimeZone/692594535 var1787 var2786)) ; Statement: virtualinvoke r1.<java.util.Calendar: void setTimeZone(java.util.TimeZone)>($r6) 

(declare-const var1787!1 var3687)
(declare-const var2786!1 var2075)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1705_equals/1031735566=([java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var3899=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2075_getTimeZone/1775699487=([java.lang.String], java.util.TimeZone), setTimeZone/692594535=([java.util.Calendar, java.util.TimeZone], void)}
; {var2680=cn.hutool.core.date.format.FastDateParser$ISO8601TimeZoneStrategy, var2677=r8, var1346=cn.hutool.core.date.format.FastDateParser, var2578=r9, var3687=java.util.Calendar, var1787=r1, var1595=r0, var3462=null_type, var1705=java.util.Objects, var3899=java.lang.Object, var3872=$z0, var468=$r2, var3416=$r3, var1919=$r4, var3380=$r5, var2075=java.util.TimeZone, var2786=$r6}
; {cn.hutool.core.date.format.FastDateParser$ISO8601TimeZoneStrategy=var2680, r8=var2677, cn.hutool.core.date.format.FastDateParser=var1346, r9=var2578, java.util.Calendar=var3687, r1=var1787, r0=var1595, null_type=var3462, java.util.Objects=var1705, java.lang.Object=var3899, $z0=var3872, $r2=var468, $r3=var3416, $r4=var1919, $r5=var3380, java.util.TimeZone=var2075, $r6=var2786}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: cn.hutool.core.date.format.FastDateParser$ISO8601TimeZoneStrategy;	r9 := @parameter0: cn.hutool.core.date.format.FastDateParser;	r1 := @parameter1: java.util.Calendar;	r0 := @parameter2: java.lang.String;	$z0 = staticinvoke <java.util.Objects: boolean equals(java.lang.Object,java.lang.Object)>(r0, "Z");	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("GMT");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>($r5);	virtualinvoke r1.<java.util.Calendar: void setTimeZone(java.util.TimeZone)>($r6);	return
;block_num 3
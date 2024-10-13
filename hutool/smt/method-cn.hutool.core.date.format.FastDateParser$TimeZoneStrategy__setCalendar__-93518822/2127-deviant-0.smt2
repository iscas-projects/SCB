(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3918 0)
(declare-sort var3856 0)
(declare-sort var511 0)
(declare-sort var3707 0)
(declare-sort var3422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3422_getTimeZone/1775699487 (String) var3422)
(declare-fun setTimeZone/692594535 (var511 var3422) void)
(declare-const null-var3918 var3918)
(declare-const null-var3856 var3856)
(declare-const null-var511 var511)
(declare-const null-String String)
(declare-const var660 var3918) ; Statement: r6 := @this: cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy 
(assert (not (= var660 null-var3918)))
(declare-const var852 var3856) ; Statement: r11 := @parameter0: cn.hutool.core.date.format.FastDateParser 
(assert (not (= var852 null-var3856)))
(declare-const var2603 var511) ; Statement: r5 := @parameter1: java.util.Calendar 
(assert (not (= var2603 null-var511)))
(declare-const var2964 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2964 null-String)))
(assert (not (and true (and (> (str.len var2964) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3422_getTimeZone/1775699487=([java.lang.String], java.util.TimeZone), setTimeZone/692594535=([java.util.Calendar, java.util.TimeZone], void)}
; {var3918=cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy, var660=r6, var3856=cn.hutool.core.date.format.FastDateParser, var852=r11, var511=java.util.Calendar, var2603=r5, var2964=r0, var3707=null_type, var2644=$c0, var792=$i4, var236=$r17, var2867=$r2, var1796=$r3, var3025=$r4, var3422=java.util.TimeZone, var1490=$r14}
; {cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy=var3918, r6=var660, cn.hutool.core.date.format.FastDateParser=var3856, r11=var852, java.util.Calendar=var511, r5=var2603, r0=var2964, null_type=var3707, $c0=var2644, $i4=var792, $r17=var236, $r2=var2867, $r3=var1796, $r4=var3025, java.util.TimeZone=var3422, $r14=var1490}
;seq <java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy;	r11 := @parameter0: cn.hutool.core.date.format.FastDateParser;	r5 := @parameter1: java.util.Calendar;	r0 := @parameter2: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i4 = (int) $c0;	if $i4 == 43 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("GMT");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>($r4);	virtualinvoke r5.<java.util.Calendar: void setTimeZone(java.util.TimeZone)>($r14);	goto [?= return];	return
;block_num 3
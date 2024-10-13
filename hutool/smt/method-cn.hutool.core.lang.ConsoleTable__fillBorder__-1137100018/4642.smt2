(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var975 0)
(declare-sort var2790 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun columnCharNumber/2090011118 (var975) var2790)
(declare-fun var2790_iterator/-912451715 (var2790) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var975 var975)
(declare-const null-String String)
(declare-const var61 var975) ; Statement: r1 := @this: cn.hutool.core.lang.ConsoleTable 
(assert (not (= var61 null-var975)))
(declare-const var3044 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3044 null-String)))
(assert true)
;(assert (append/-1166366385 var3044 43)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(43) 
(declare-const var3044!1 String)
(assert (str.prefixof var3044 var3044!1))
(define-const var2672 var2790 (columnCharNumber/2090011118 var61)) ; Statement: $r2 = r1.<cn.hutool.core.lang.ConsoleTable: java.util.List columnCharNumber> 
(define-const var1693 Iterator (var2790_iterator/-912451715 var2672)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var712 Bool (Iterator_hasNext/-1669924200 var1693)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(assert (= (ite var712 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/-1166366385 var3044!1 10)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3044!2 String)
(assert (str.prefixof var3044!1 var3044!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), columnCharNumber/2090011118=([cn.hutool.core.lang.ConsoleTable], java.util.List), var2790_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var975=cn.hutool.core.lang.ConsoleTable, var61=r1, var3044=r0, var2790=java.util.List, var2672=$r2, var1693=r3, var712=$z0}
; {cn.hutool.core.lang.ConsoleTable=var975, r1=var61, r0=var3044, java.util.List=var2790, $r2=var2672, r3=var1693, $z0=var712}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: cn.hutool.core.lang.ConsoleTable;	r0 := @parameter0: java.lang.StringBuilder;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(43);	$r2 = r1.<cn.hutool.core.lang.ConsoleTable: java.util.List columnCharNumber>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	return
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1513 0)
(declare-sort var3687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fillBorder/-1137100018 (var1513 String) void)
(declare-fun headerList/2090011118 (var1513) var3687)
(declare-fun fillRows/593017465 (var1513 String var3687) void)
(declare-fun bodyList/2090011118 (var1513) var3687)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1513 var1513)
(declare-const var373 var1513) ; Statement: r1 := @this: cn.hutool.core.lang.ConsoleTable 
(assert (not (= var373 null-var1513)))
(define-const var1716 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1716)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1716!1 String)
(assert (= var1716!1 ""))
(assert true)
;(assert (fillBorder/-1137100018 var373 var1716!1)) ; Statement: specialinvoke r1.<cn.hutool.core.lang.ConsoleTable: void fillBorder(java.lang.StringBuilder)>($r0) 

(declare-const var373!1 var1513)
(declare-const var1716!2 String)
(define-const var2270 var3687 (headerList/2090011118 var373!1)) ; Statement: $r2 = r1.<cn.hutool.core.lang.ConsoleTable: java.util.List headerList> 
(assert true)
;(assert (fillRows/593017465 var373!1 var1716!2 var2270)) ; Statement: specialinvoke r1.<cn.hutool.core.lang.ConsoleTable: void fillRows(java.lang.StringBuilder,java.util.List)>($r0, $r2) 

(declare-const var373!2 var1513)
(declare-const var1716!3 String)
(declare-const var2270!1 var3687)
(assert true)
;(assert (fillBorder/-1137100018 var373!2 var1716!3)) ; Statement: specialinvoke r1.<cn.hutool.core.lang.ConsoleTable: void fillBorder(java.lang.StringBuilder)>($r0) 

(declare-const var373!3 var1513)
(declare-const var1716!4 String)
(define-const var1040 var3687 (bodyList/2090011118 var373!3)) ; Statement: $r3 = r1.<cn.hutool.core.lang.ConsoleTable: java.util.List bodyList> 
(assert true)
;(assert (fillRows/593017465 var373!3 var1716!4 var1040)) ; Statement: specialinvoke r1.<cn.hutool.core.lang.ConsoleTable: void fillRows(java.lang.StringBuilder,java.util.List)>($r0, $r3) 

(declare-const var373!4 var1513)
(declare-const var1716!5 String)
(declare-const var1040!1 var3687)
(assert true)
;(assert (fillBorder/-1137100018 var373!4 var1716!5)) ; Statement: specialinvoke r1.<cn.hutool.core.lang.ConsoleTable: void fillBorder(java.lang.StringBuilder)>($r0) 

(declare-const var373!5 var1513)
(declare-const var1716!6 String)
(assert true)
(define-const var825 String (toString/-2075883882 var1716!6)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fillBorder/-1137100018=([cn.hutool.core.lang.ConsoleTable, java.lang.StringBuilder], void), headerList/2090011118=([cn.hutool.core.lang.ConsoleTable], java.util.List), fillRows/593017465=([cn.hutool.core.lang.ConsoleTable, java.lang.StringBuilder, java.util.List], void), bodyList/2090011118=([cn.hutool.core.lang.ConsoleTable], java.util.List), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1513=cn.hutool.core.lang.ConsoleTable, var373=r1, var1716=$r0, var3687=java.util.List, var2270=$r2, var1040=$r3, var825=$r4}
; {cn.hutool.core.lang.ConsoleTable=var1513, r1=var373, $r0=var1716, java.util.List=var3687, $r2=var2270, $r3=var1040, $r4=var825}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.lang.ConsoleTable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	specialinvoke r1.<cn.hutool.core.lang.ConsoleTable: void fillBorder(java.lang.StringBuilder)>($r0);	$r2 = r1.<cn.hutool.core.lang.ConsoleTable: java.util.List headerList>;	specialinvoke r1.<cn.hutool.core.lang.ConsoleTable: void fillRows(java.lang.StringBuilder,java.util.List)>($r0, $r2);	specialinvoke r1.<cn.hutool.core.lang.ConsoleTable: void fillBorder(java.lang.StringBuilder)>($r0);	$r3 = r1.<cn.hutool.core.lang.ConsoleTable: java.util.List bodyList>;	specialinvoke r1.<cn.hutool.core.lang.ConsoleTable: void fillRows(java.lang.StringBuilder,java.util.List)>($r0, $r3);	specialinvoke r1.<cn.hutool.core.lang.ConsoleTable: void fillBorder(java.lang.StringBuilder)>($r0);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1
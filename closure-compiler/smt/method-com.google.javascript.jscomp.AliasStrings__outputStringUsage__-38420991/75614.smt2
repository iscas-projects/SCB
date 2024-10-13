(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1893 0)
(declare-sort var1832 0)
(declare-sort var238 0)
(declare-sort var1698 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun stringInfoMap/-458100177 (var1893) var1832)
(declare-fun var1832_entrySet/-2135847386 (var1832) var238)
(declare-fun var238_iterator/1911472585 (var238) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fine/-535273507 (var1698 String) void)
(declare-const null-var1893 var1893)
(declare-const var1893-logger var1698)
(declare-const var1415 var1893) ; Statement: r1 := @this: com.google.javascript.jscomp.AliasStrings 
(assert (not (= var1415 null-var1893)))
(define-const var333 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var333 "Strings used more than once:\n")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Strings used more than once:\n") 
(declare-const var333!1 String)
(assert (= var333!1 "Strings used more than once:\n"))
(define-const var600 var1832 (stringInfoMap/-458100177 var1415)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.AliasStrings: java.util.SortedMap stringInfoMap> 
(define-const var3337 var238 (var1832_entrySet/-2135847386 var600)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.SortedMap: java.util.Set entrySet()>() 
(define-const var3259 Iterator (var238_iterator/1911472585 var3337)) ; Statement: r4 = interfaceinvoke $r3.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2233 Bool (Iterator_hasNext/-1669924200 var3259)) ; Statement: $z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r5 = <com.google.javascript.jscomp.AliasStrings: java.util.logging.Logger logger> 
(assert (= (ite var2233 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1197 var1698 var1893-logger) ; Statement: $r5 = <com.google.javascript.jscomp.AliasStrings: java.util.logging.Logger logger> 
(assert true)
(define-const var514 String (toString/-2075883882 var333!1)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (fine/-535273507 var1197 var514)) ; Statement: virtualinvoke $r5.<java.util.logging.Logger: void fine(java.lang.String)>($r6) 

(declare-const var1197!1 var1698)
(declare-const var514!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), stringInfoMap/-458100177=([com.google.javascript.jscomp.AliasStrings], java.util.SortedMap), var1832_entrySet/-2135847386=([java.util.SortedMap], java.util.Set), var238_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fine/-535273507=([java.util.logging.Logger, java.lang.String], void)}
; {var1893=com.google.javascript.jscomp.AliasStrings, var1415=r1, var333=$r0, var1832=java.util.SortedMap, var600=$r2, var238=java.util.Set, var3337=$r3, var3259=r4, var2233=$z0, var1698=java.util.logging.Logger, var1197=$r5, var514=$r6}
; {com.google.javascript.jscomp.AliasStrings=var1893, r1=var1415, $r0=var333, java.util.SortedMap=var1832, $r2=var600, java.util.Set=var238, $r3=var3337, r4=var3259, $z0=var2233, java.util.logging.Logger=var1698, $r5=var1197, $r6=var514}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.AliasStrings;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Strings used more than once:\n");	$r2 = r1.<com.google.javascript.jscomp.AliasStrings: java.util.SortedMap stringInfoMap>;	$r3 = interfaceinvoke $r2.<java.util.SortedMap: java.util.Set entrySet()>();	r4 = interfaceinvoke $r3.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r5 = <com.google.javascript.jscomp.AliasStrings: java.util.logging.Logger logger>;	$r5 = <com.google.javascript.jscomp.AliasStrings: java.util.logging.Logger logger>;	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<java.util.logging.Logger: void fine(java.lang.String)>($r6);	return
;block_num 3
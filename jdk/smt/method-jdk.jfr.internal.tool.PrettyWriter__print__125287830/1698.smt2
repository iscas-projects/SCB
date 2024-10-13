(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1826 0)
(declare-sort var3989 0)
(declare-sort var2926 0)
(declare-sort var2404 0)
(declare-sort var1383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/-650826721 (var2404 String) void)
(declare-fun cast-from-var1826-to-var2404 (var1826) var2404)
(declare-fun indent/-678895419 (var2404) void)
(declare-fun getFields/1088395892 (var3989) var1383)
(declare-fun var1383_iterator/-912451715 (var1383) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun retract/-1870130776 (var2404) void)
(declare-fun printIndent/679039472 (var2404) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1826 var1826)
(declare-const null-var3989 var3989)
(declare-const null-String String)
(declare-const var535 var1826) ; Statement: r0 := @this: jdk.jfr.internal.tool.PrettyWriter 
(assert (not (= var535 null-var1826)))
(declare-const var3932 var3989) ; Statement: r1 := @parameter0: jdk.jfr.consumer.RecordedObject 
(assert (not (= var3932 null-var3989)))
(declare-const var2099 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2099 null-String)))
(assert true)
;(assert (println/-650826721 (cast-from-var1826-to-var2404 var535) "{")) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>("{") 

(declare-const var535!1 var1826)
(declare-const var2903 String)
(assert true)
;(assert (indent/-678895419 (cast-from-var1826-to-var2404 var535!1))) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void indent()>() 

(declare-const var535!2 var1826)
(assert true)
(define-const var3458 var1383 (getFields/1088395892 var3932)) ; Statement: $r2 = virtualinvoke r1.<jdk.jfr.consumer.RecordedObject: java.util.List getFields()>() 
(define-const var1065 Iterator (var1383_iterator/-912451715 var3458)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3481 Bool (Iterator_hasNext/-1669924200 var1065)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void retract()>() 
(assert (= (ite var3481 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (retract/-1870130776 (cast-from-var1826-to-var2404 var535!2))) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void retract()>() 

(declare-const var535!3 var1826)
(assert true)
;(assert (printIndent/679039472 (cast-from-var1826-to-var2404 var535!3))) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void printIndent()>() 

(declare-const var535!4 var1826)
(define-const var838 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var838)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var838!1 String)
(assert (= var838!1 ""))
(assert true)
(define-const var1946 String (append/672562846 var838!1 "}")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var838!2 String)
(assert (= var838!2 (str.++ var838!1 "}")))
(assert true)
(define-const var1137 String (append/672562846 var1946 var2099)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1946!1 String)
(assert (= var1946!1 (str.++ var1946 var2099)))
(assert true)
(define-const var526 String (toString/-2075883882 var1137)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-650826721 (cast-from-var1826-to-var2404 var535!4) var526)) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>($r8) 

(declare-const var535!5 var1826)
(declare-const var526!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/-650826721=([jdk.jfr.internal.tool.StructuredWriter, java.lang.String], void), cast-from-var1826-to-var2404=([jdk.jfr.internal.tool.PrettyWriter], jdk.jfr.internal.tool.StructuredWriter), indent/-678895419=([jdk.jfr.internal.tool.StructuredWriter], void), getFields/1088395892=([jdk.jfr.consumer.RecordedObject], java.util.List), var1383_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), retract/-1870130776=([jdk.jfr.internal.tool.StructuredWriter], void), printIndent/679039472=([jdk.jfr.internal.tool.StructuredWriter], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1826=jdk.jfr.internal.tool.PrettyWriter, var535=r0, var3989=jdk.jfr.consumer.RecordedObject, var3932=r1, var2099=r5, var2926=null_type, var2404=jdk.jfr.internal.tool.StructuredWriter, var2903="{", var1383=java.util.List, var3458=$r2, var1065=r3, var3481=$z0, var838=$r4, var1946=$r6, var1137=$r7, var526=$r8}
; {jdk.jfr.internal.tool.PrettyWriter=var1826, r0=var535, jdk.jfr.consumer.RecordedObject=var3989, r1=var3932, r5=var2099, null_type=var2926, jdk.jfr.internal.tool.StructuredWriter=var2404, "{"=var2903, java.util.List=var1383, $r2=var3458, r3=var1065, $z0=var3481, $r4=var838, $r6=var1946, $r7=var1137, $r8=var526}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.tool.PrettyWriter;	r1 := @parameter0: jdk.jfr.consumer.RecordedObject;	r5 := @parameter1: java.lang.String;	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>("{");	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void indent()>();	$r2 = virtualinvoke r1.<jdk.jfr.consumer.RecordedObject: java.util.List getFields()>();	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void retract()>();	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void retract()>();	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void printIndent()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>($r8);	return
;block_num 3
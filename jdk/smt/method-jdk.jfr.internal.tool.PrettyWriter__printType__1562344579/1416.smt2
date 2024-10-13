(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var522 0)
(declare-sort var3182 0)
(declare-sort var3362 0)
(declare-sort var3289 0)
(declare-sort var28 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun showIds/114753955 (var522) Bool)
(declare-fun getName/-2081927433 (var3182) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getAnnotationElements/670051267 (var3182) var3362)
(declare-fun printAnnotations/-710165254 (var522 Int var3362) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/169216161 (var3289 String) void)
(declare-fun cast-from-var522-to-var3289 (var522) var3289)
(declare-fun getSuperType/1720819459 (var3182) String)
(declare-fun println/-650826721 (var3289 String) void)
(declare-fun indent/-678895419 (var3289) void)
(declare-fun getFields/437454704 (var3182) var3362)
(declare-fun var3362_iterator/-912451715 (var3362) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun retract/-1870130776 (var3289) void)
(declare-fun println/101786874 (var3289) void)
(declare-const null-var522 var522)
(declare-const null-var3182 var3182)
(declare-const null-String String)
(declare-const var1747 var522) ; Statement: r0 := @this: jdk.jfr.internal.tool.PrettyWriter 
(assert (not (= var1747 null-var522)))
(declare-const var2138 var3182) ; Statement: r1 := @parameter0: jdk.jfr.internal.Type 
(assert (not (= var2138 null-var3182)))
(define-const var3057 Bool (showIds/114753955 var1747)) ; Statement: $z0 = r0.<jdk.jfr.internal.tool.PrettyWriter: boolean showIds> 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r1.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert (= (ite var3057 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3285 String (getName/-2081927433 var2138)) ; Statement: $r2 = virtualinvoke r1.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert true)
(define-const var416 Int (length/-134980193 var3285)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var400 Int (+ var416 10)) ; Statement: $i3 = $i0 + 10 
(assert true)
(define-const var1988 String (getName/-2081927433 var2138)) ; Statement: $r24 = virtualinvoke r1.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert true)
(define-const var1043 Int (lastIndexOf/-618837785 var1988 ".")) ; Statement: $i4 = virtualinvoke $r24.<java.lang.String: int lastIndexOf(java.lang.String)>(".") 
(define-const var2904 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i4 == $i6 goto $r3 = virtualinvoke r1.<jdk.jfr.internal.Type: java.util.List getAnnotationElements()>() 
(assert (= var1043 var2904)) ; Cond: $i4 == $i6 
(assert true)
(define-const var613 var3362 (getAnnotationElements/670051267 var2138)) ; Statement: $r3 = virtualinvoke r1.<jdk.jfr.internal.Type: java.util.List getAnnotationElements()>() 
(assert true)
;(assert (printAnnotations/-710165254 var1747 var400 var613)) ; Statement: specialinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void printAnnotations(int,java.util.List)>($i3, $r3) 

(declare-const var1747!1 var522)
(declare-const var400!1 Int)
(declare-const var613!1 var3362)
(define-const var2267 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2267)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2267!1 String)
(assert (= var2267!1 ""))
(assert true)
(define-const var1573 String (append/672562846 var2267!1 "class ")) ; Statement: $r6 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class ") 
(declare-const var2267!2 String)
(assert (= var2267!2 (str.++ var2267!1 "class ")))
(define-const var2740 Int (+ var1043 1)) ; Statement: $i1 = $i4 + 1 
(assert (and true (and (>= var2740 0) (>= (str.len var1988) var2740))))
(define-const var3651 String (substring/850833817 var1988 var2740)) ; Statement: $r5 = virtualinvoke $r24.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true)
(define-const var3449 String (append/672562846 var1573 var3651)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1573!1 String)
(assert (= var1573!1 (str.++ var1573 var3651)))
(assert true)
(define-const var2174 String (toString/-2075883882 var3449)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/169216161 (cast-from-var522-to-var3289 var1747!1) var2174)) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void print(java.lang.String)>($r8) 

(declare-const var1747!2 var522)
(declare-const var2174!1 String)
(assert true)
(define-const var464 String (getSuperType/1720819459 var2138)) ; Statement: $r22 = virtualinvoke r1.<jdk.jfr.internal.Type: java.lang.String getSuperType()>() 
 ; Statement: if $r22 == null goto virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>(" {") 
(assert (= var464 null-String)) ; Cond: $r22 == null 
(assert true)
;(assert (println/-650826721 (cast-from-var522-to-var3289 var1747!2) " {")) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>(" {") 

(declare-const var1747!3 var522)
(declare-const var3068 String)
(assert true)
;(assert (indent/-678895419 (cast-from-var522-to-var3289 var1747!3))) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void indent()>() 

(declare-const var1747!4 var522)
(define-const var1121 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(assert true)
(define-const var3866 var3362 (getFields/437454704 var2138)) ; Statement: $r9 = virtualinvoke r1.<jdk.jfr.internal.Type: java.util.List getFields()>() 
(define-const var1759 Iterator (var3362_iterator/-912451715 var3866)) ; Statement: $r16 = interfaceinvoke $r9.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1459 Bool (Iterator_hasNext/-1669924200 var1759)) ; Statement: $z2 = interfaceinvoke $r16.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void retract()>() 
(assert (= (ite var1459 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (retract/-1870130776 (cast-from-var522-to-var3289 var1747!4))) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void retract()>() 

(declare-const var1747!5 var522)
(assert true)
;(assert (println/-650826721 (cast-from-var522-to-var3289 var1747!5) "}")) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>("}") 

(declare-const var1747!6 var522)
(declare-const var1710 String)
(assert true)
;(assert (println/101786874 (cast-from-var522-to-var3289 var1747!6))) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void println()>() 

(declare-const var1747!7 var522)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {showIds/114753955=([jdk.jfr.internal.tool.PrettyWriter], boolean), getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String), length/-134980193=([java.lang.String], int), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), getAnnotationElements/670051267=([jdk.jfr.internal.Type], java.util.List), printAnnotations/-710165254=([jdk.jfr.internal.tool.PrettyWriter, int, java.util.List], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/169216161=([jdk.jfr.internal.tool.StructuredWriter, java.lang.String], void), cast-from-var522-to-var3289=([jdk.jfr.internal.tool.PrettyWriter], jdk.jfr.internal.tool.StructuredWriter), getSuperType/1720819459=([jdk.jfr.internal.Type], java.lang.String), println/-650826721=([jdk.jfr.internal.tool.StructuredWriter, java.lang.String], void), indent/-678895419=([jdk.jfr.internal.tool.StructuredWriter], void), getFields/437454704=([jdk.jfr.internal.Type], java.util.List), var3362_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), retract/-1870130776=([jdk.jfr.internal.tool.StructuredWriter], void), println/101786874=([jdk.jfr.internal.tool.StructuredWriter], void)}
; {var522=jdk.jfr.internal.tool.PrettyWriter, var1747=r0, var3182=jdk.jfr.internal.Type, var2138=r1, var3057=$z0, var3285=$r2, var416=$i0, var400=$i3, var1988=$r24, var1043=$i4, var2904=$i6, var3362=java.util.List, var613=$r3, var2267=$r26, var1573=$r6, var2740=$i1, var3651=$r5, var3449=$r7, var2174=$r8, var3289=jdk.jfr.internal.tool.StructuredWriter, var464=$r22, var28=null_type, var3068=" {", var1121=z1, var3866=$r9, var1759=$r16, var1459=$z2, var1710="}"}
; {jdk.jfr.internal.tool.PrettyWriter=var522, r0=var1747, jdk.jfr.internal.Type=var3182, r1=var2138, $z0=var3057, $r2=var3285, $i0=var416, $i3=var400, $r24=var1988, $i4=var1043, $i6=var2904, java.util.List=var3362, $r3=var613, $r26=var2267, $r6=var1573, $i1=var2740, $r5=var3651, $r7=var3449, $r8=var2174, jdk.jfr.internal.tool.StructuredWriter=var3289, $r22=var464, null_type=var28, " {"=var3068, z1=var1121, $r9=var3866, $r16=var1759, $z2=var1459, "}"=var1710}
;seq <java.lang.String: int length()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.tool.PrettyWriter;	r1 := @parameter0: jdk.jfr.internal.Type;	$z0 = r0.<jdk.jfr.internal.tool.PrettyWriter: boolean showIds>;	if $z0 == 0 goto $r2 = virtualinvoke r1.<jdk.jfr.internal.Type: java.lang.String getName()>();	$r2 = virtualinvoke r1.<jdk.jfr.internal.Type: java.lang.String getName()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$i3 = $i0 + 10;	$r24 = virtualinvoke r1.<jdk.jfr.internal.Type: java.lang.String getName()>();	$i4 = virtualinvoke $r24.<java.lang.String: int lastIndexOf(java.lang.String)>(".");	$i6 = (int) -1;	if $i4 == $i6 goto $r3 = virtualinvoke r1.<jdk.jfr.internal.Type: java.util.List getAnnotationElements()>();	$r3 = virtualinvoke r1.<jdk.jfr.internal.Type: java.util.List getAnnotationElements()>();	specialinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void printAnnotations(int,java.util.List)>($i3, $r3);	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class ");	$i1 = $i4 + 1;	$r5 = virtualinvoke $r24.<java.lang.String: java.lang.String substring(int)>($i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void print(java.lang.String)>($r8);	$r22 = virtualinvoke r1.<jdk.jfr.internal.Type: java.lang.String getSuperType()>();	if $r22 == null goto virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>(" {");	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>(" {");	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void indent()>();	z1 = 1;	$r9 = virtualinvoke r1.<jdk.jfr.internal.Type: java.util.List getFields()>();	$r16 = interfaceinvoke $r9.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r16.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void retract()>();	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void retract()>();	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>("}");	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void println()>();	return
;block_num 6
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2835 0)
(declare-sort var1591 0)
(declare-sort var1348 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/1191568633 (var2835) Int)
(declare-fun deferredName/1632885518 (var2835) String)
(declare-fun var1348-init () var1348)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1348 String) void)
(declare-const null-var2835 var2835)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1977 var2835) ; Statement: r0 := @this: com.google.gson.stream.JsonWriter 
(assert (not (= var1977 null-var2835)))
(declare-const var3324 Int) ; Statement: i5 := @parameter0: int 
(assert (not (= var3324 null-Int)))
(declare-const var1215 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1215 null-Int)))
(declare-const var1120 Int) ; Statement: c4 := @parameter2: char 
(assert (not (= var1120 null-Int)))
(assert true)
(define-const var512 Int (peek/1191568633 var1977)) ; Statement: i0 = specialinvoke r0.<com.google.gson.stream.JsonWriter: int peek()>() 
 ; Statement: if i0 == i1 goto $r1 = r0.<com.google.gson.stream.JsonWriter: java.lang.String deferredName> 
(assert (= var512 var1215)) ; Cond: i0 == i1 
(define-const var3623 String (deferredName/1632885518 var1977)) ; Statement: $r1 = r0.<com.google.gson.stream.JsonWriter: java.lang.String deferredName> 
 ; Statement: if $r1 == null goto $i2 = r0.<com.google.gson.stream.JsonWriter: int stackSize> 
(assert (not (= var3623 null-String))) ; Negate: Cond: $r1 == null  
(define-const var915 var1348 var1348-init) ; Statement: $r12 = new java.lang.IllegalStateException 
(define-const var2081 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2081)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2081!1 String)
(assert (= var2081!1 ""))
(assert true)
(define-const var3414 String (append/672562846 var2081!1 "Dangling name: ")) ; Statement: $r6 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dangling name: ") 
(declare-const var2081!2 String)
(assert (= var2081!2 (str.++ var2081!1 "Dangling name: ")))
(define-const var2758 String (deferredName/1632885518 var1977)) ; Statement: $r5 = r0.<com.google.gson.stream.JsonWriter: java.lang.String deferredName> 
(assert true)
(define-const var1672 String (append/672562846 var3414 var2758)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3414!1 String)
(assert (= var3414!1 (str.++ var3414 var2758)))
(assert true)
(define-const var3646 String (toString/-2075883882 var1672)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var915 var3646)) ; Statement: specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var915!1 var1348)
(declare-const var3646!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/1191568633=([com.google.gson.stream.JsonWriter], int), deferredName/1632885518=([com.google.gson.stream.JsonWriter], java.lang.String), var1348-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2835=com.google.gson.stream.JsonWriter, var1977=r0, var3324=i5, var1215=i1, var1120=c4, var512=i0, var3623=$r1, var1591=null_type, var1348=java.lang.IllegalStateException, var915=$r12, var2081=$r11, var3414=$r6, var2758=$r5, var1672=$r7, var3646=$r8}
; {com.google.gson.stream.JsonWriter=var2835, r0=var1977, i5=var3324, i1=var1215, c4=var1120, i0=var512, $r1=var3623, null_type=var1591, java.lang.IllegalStateException=var1348, $r12=var915, $r11=var2081, $r6=var3414, $r5=var2758, $r7=var1672, $r8=var3646}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonWriter;	i5 := @parameter0: int;	i1 := @parameter1: int;	c4 := @parameter2: char;	i0 = specialinvoke r0.<com.google.gson.stream.JsonWriter: int peek()>();	if i0 == i1 goto $r1 = r0.<com.google.gson.stream.JsonWriter: java.lang.String deferredName>;	$r1 = r0.<com.google.gson.stream.JsonWriter: java.lang.String deferredName>;	if $r1 == null goto $i2 = r0.<com.google.gson.stream.JsonWriter: int stackSize>;	$r12 = new java.lang.IllegalStateException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dangling name: ");	$r5 = r0.<com.google.gson.stream.JsonWriter: java.lang.String deferredName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r12
;block_num 3
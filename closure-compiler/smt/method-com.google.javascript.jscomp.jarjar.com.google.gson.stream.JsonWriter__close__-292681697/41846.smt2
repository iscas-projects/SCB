(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2025 0)
(declare-sort var775 0)
(declare-sort var3233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/1988327722 (var2025) Int)
(declare-fun deferredName/-1499488963 (var2025) String)
(declare-fun var3233-init () var3233)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3233 String) void)
(declare-const null-var2025 var2025)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var399 var2025) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter 
(assert (not (= var399 null-var2025)))
(declare-const var2040 Int) ; Statement: i5 := @parameter0: int 
(assert (not (= var2040 null-Int)))
(declare-const var1522 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1522 null-Int)))
(declare-const var1401 Int) ; Statement: c4 := @parameter2: char 
(assert (not (= var1401 null-Int)))
(assert true)
(define-const var94 Int (peek/1988327722 var399)) ; Statement: i0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: int peek()>() 
 ; Statement: if i0 == i1 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String deferredName> 
(assert (= var94 var1522)) ; Cond: i0 == i1 
(define-const var2808 String (deferredName/-1499488963 var399)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String deferredName> 
 ; Statement: if $r1 == null goto $i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: int stackSize> 
(assert (not (= var2808 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3416 var3233 var3233-init) ; Statement: $r12 = new java.lang.IllegalStateException 
(define-const var3873 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3873)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3873!1 String)
(assert (= var3873!1 ""))
(assert true)
(define-const var3275 String (append/672562846 var3873!1 "Dangling name: ")) ; Statement: $r6 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dangling name: ") 
(declare-const var3873!2 String)
(assert (= var3873!2 (str.++ var3873!1 "Dangling name: ")))
(define-const var2209 String (deferredName/-1499488963 var399)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String deferredName> 
(assert true)
(define-const var2005 String (append/672562846 var3275 var2209)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3275!1 String)
(assert (= var3275!1 (str.++ var3275 var2209)))
(assert true)
(define-const var1738 String (toString/-2075883882 var2005)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3416 var1738)) ; Statement: specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var3416!1 var3233)
(declare-const var1738!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/1988327722=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter], int), deferredName/-1499488963=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter], java.lang.String), var3233-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2025=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter, var399=r0, var2040=i5, var1522=i1, var1401=c4, var94=i0, var2808=$r1, var775=null_type, var3233=java.lang.IllegalStateException, var3416=$r12, var3873=$r11, var3275=$r6, var2209=$r5, var2005=$r7, var1738=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter=var2025, r0=var399, i5=var2040, i1=var1522, c4=var1401, i0=var94, $r1=var2808, null_type=var775, java.lang.IllegalStateException=var3233, $r12=var3416, $r11=var3873, $r6=var3275, $r5=var2209, $r7=var2005, $r8=var1738}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter;	i5 := @parameter0: int;	i1 := @parameter1: int;	c4 := @parameter2: char;	i0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: int peek()>();	if i0 == i1 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String deferredName>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String deferredName>;	if $r1 == null goto $i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: int stackSize>;	$r12 = new java.lang.IllegalStateException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dangling name: ");	$r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String deferredName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r12
;block_num 3
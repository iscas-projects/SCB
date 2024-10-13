(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var270 0)
(declare-sort var2309 0)
(declare-sort var3354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3354-init () var3354)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var3354 String) void)
(declare-const null-var270 var270)
(declare-const null-var2309 var2309)
(declare-const null-ClassObject ClassObject)
(declare-const var633 var270) ; Statement: r8 := @this: com.google.gson.internal.bind.TypeAdapters$1 
(assert (not (= var633 null-var270)))
(declare-const var1259 var2309) ; Statement: r9 := @parameter0: com.google.gson.stream.JsonWriter 
(assert (not (= var1259 null-var2309)))
(declare-const var2221 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var2221 null-ClassObject)))
(define-const var366 var3354 var3354-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var1107 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1107)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1107!1 String)
(assert (= var1107!1 ""))
(assert true)
(define-const var3433 String (append/672562846 var1107!1 "Attempted to serialize java.lang.Class: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempted to serialize java.lang.Class: ") 
(declare-const var1107!2 String)
(assert (= var1107!2 (str.++ var1107!1 "Attempted to serialize java.lang.Class: ")))
(assert true)
(define-const var2890 String (getName/-1958580599 var2221)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2425 String (append/672562846 var3433 var2890)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3433!1 String)
(assert (= var3433!1 (str.++ var3433 var2890)))
(assert true)
(define-const var3465 String (append/672562846 var2425 ". Forgot to register a type adapter?")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Forgot to register a type adapter?") 
(declare-const var2425!1 String)
(assert (= var2425!1 (str.++ var2425 ". Forgot to register a type adapter?")))
(assert true)
(define-const var1585 String (toString/-2075883882 var3465)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var366 var1585)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var366!1 var3354)
(declare-const var1585!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3354-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var270=com.google.gson.internal.bind.TypeAdapters$1, var633=r8, var2309=com.google.gson.stream.JsonWriter, var1259=r9, var2221=r2, var3354=java.lang.UnsupportedOperationException, var366=$r0, var1107=$r1, var3433=$r4, var2890=$r3, var2425=$r5, var3465=$r6, var1585=$r7}
; {com.google.gson.internal.bind.TypeAdapters$1=var270, r8=var633, com.google.gson.stream.JsonWriter=var2309, r9=var1259, r2=var2221, java.lang.UnsupportedOperationException=var3354, $r0=var366, $r1=var1107, $r4=var3433, $r3=var2890, $r5=var2425, $r6=var3465, $r7=var1585}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.google.gson.internal.bind.TypeAdapters$1;	r9 := @parameter0: com.google.gson.stream.JsonWriter;	r2 := @parameter1: java.lang.Class;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempted to serialize java.lang.Class: ");	$r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Forgot to register a type adapter?");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1
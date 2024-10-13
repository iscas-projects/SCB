(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3736 0)
(declare-sort var2881 0)
(declare-sort var1447 0)
(declare-sort var1276 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/1179433192 (var3736) var2881)
(declare-fun var1447-init () var1447)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1276) String)
(declare-fun cast-from-var2881-to-var1276 (var2881) var1276)
(declare-fun locationString/-42154701 (var3736) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1447 String) void)
(declare-const null-var3736 var3736)
(declare-const var2881-NUMBER var2881)
(declare-const var2881-STRING var2881)
(declare-const var3689 var3736) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var3689 null-var3736)))
(assert true)
(define-const var3095 var2881 (peek/1179433192 var3689)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(define-const var3556 var2881 var2881-NUMBER) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NUMBER> 
 ; Statement: if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(assert (not (= var3095 var3556))) ; Negate: Cond: r1 == $r2  
(define-const var395 var2881 var2881-STRING) ; Statement: $r11 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken STRING> 
 ; Statement: if r1 == $r11 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(assert (not (= var3095 var395))) ; Negate: Cond: r1 == $r11  
(define-const var2623 var1447 var1447-init) ; Statement: $r12 = new java.lang.IllegalStateException 
(define-const var3750 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3750)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3750!1 String)
(assert (= var3750!1 ""))
(assert true)
(define-const var1915 String (append/672562846 var3750!1 "Expected ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ") 
(declare-const var3750!2 String)
(assert (= var3750!2 (str.++ var3750!1 "Expected ")))
(define-const var2905 var2881 var2881-NUMBER) ; Statement: $r14 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NUMBER> 
(assert true)
(define-const var2319 String (append/-1031950772 var1915 (cast-from-var2881-to-var1276 var2905))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14) 
(declare-const var1915!1 String)
(assert (str.prefixof var1915 var1915!1))
(assert true)
(define-const var3188 String (append/672562846 var2319 " but was ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ") 
(declare-const var2319!1 String)
(assert (= var2319!1 (str.++ var2319 " but was ")))
(assert true)
(define-const var658 String (append/-1031950772 var3188 (cast-from-var2881-to-var1276 var3095))) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3188!1 String)
(assert (str.prefixof var3188 var3188!1))
(assert true)
(define-const var668 String (locationString/-42154701 var3689)) ; Statement: $r18 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>() 
(assert true)
(define-const var2265 String (append/672562846 var658 var668)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var658!1 String)
(assert (= var658!1 (str.++ var658 var668)))
(assert true)
(define-const var2038 String (toString/-2075883882 var2265)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2623 var2038)) ; Statement: specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r21) 

(declare-const var2623!1 var1447)
(declare-const var2038!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/1179433192=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), var1447-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2881-to-var1276=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Object), locationString/-42154701=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3736=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader, var3689=r0, var2881=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var3095=r1, var3556=$r2, var395=$r11, var1447=java.lang.IllegalStateException, var2623=$r12, var3750=$r13, var1915=$r15, var2905=$r14, var1276=java.lang.Object, var2319=$r16, var3188=$r17, var658=$r19, var668=$r18, var2265=$r20, var2038=$r21}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader=var3736, r0=var3689, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var2881, r1=var3095, $r2=var3556, $r11=var395, java.lang.IllegalStateException=var1447, $r12=var2623, $r13=var3750, $r15=var1915, $r14=var2905, java.lang.Object=var1276, $r16=var2319, $r17=var3188, $r19=var658, $r18=var668, $r20=var2265, $r21=var2038}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NUMBER>;	if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r11 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken STRING>;	if r1 == $r11 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r12 = new java.lang.IllegalStateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ");	$r14 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NUMBER>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ");	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r18 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r21);	throw $r12
;block_num 3
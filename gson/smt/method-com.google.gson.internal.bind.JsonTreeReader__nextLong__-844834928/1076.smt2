(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2731 0)
(declare-sort var2942 0)
(declare-sort var1656 0)
(declare-sort var1797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-1841308090 (var2731) var2942)
(declare-fun var1656-init () var1656)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1797) String)
(declare-fun cast-from-var2942-to-var1797 (var2942) var1797)
(declare-fun locationString/-286819006 (var2731) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1656 String) void)
(declare-const null-var2731 var2731)
(declare-const var2942-NUMBER var2942)
(declare-const var2942-STRING var2942)
(declare-const var3095 var2731) ; Statement: r0 := @this: com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var3095 null-var2731)))
(assert true)
(define-const var60 var2942 (peek/-1841308090 var3095)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var2765 var2942 var2942-NUMBER) ; Statement: $r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER> 
 ; Statement: if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(assert (not (= var60 var2765))) ; Negate: Cond: r1 == $r2  
(define-const var2704 var2942 var2942-STRING) ; Statement: $r6 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken STRING> 
 ; Statement: if r1 == $r6 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(assert (not (= var60 var2704))) ; Negate: Cond: r1 == $r6  
(define-const var3368 var1656 var1656-init) ; Statement: $r7 = new java.lang.IllegalStateException 
(define-const var2587 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2587)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2587!1 String)
(assert (= var2587!1 ""))
(assert true)
(define-const var2137 String (append/672562846 var2587!1 "Expected ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ") 
(declare-const var2587!2 String)
(assert (= var2587!2 (str.++ var2587!1 "Expected ")))
(define-const var676 var2942 var2942-NUMBER) ; Statement: $r9 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER> 
(assert true)
(define-const var472 String (append/-1031950772 var2137 (cast-from-var2942-to-var1797 var676))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var2137!1 String)
(assert (str.prefixof var2137 var2137!1))
(assert true)
(define-const var2911 String (append/672562846 var472 " but was ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ") 
(declare-const var472!1 String)
(assert (= var472!1 (str.++ var472 " but was ")))
(assert true)
(define-const var2052 String (append/-1031950772 var2911 (cast-from-var2942-to-var1797 var60))) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2911!1 String)
(assert (str.prefixof var2911 var2911!1))
(assert true)
(define-const var405 String (locationString/-286819006 var3095)) ; Statement: $r13 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>() 
(assert true)
(define-const var338 String (append/672562846 var2052 var405)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2052!1 String)
(assert (= var2052!1 (str.++ var2052 var405)))
(assert true)
(define-const var2361 String (toString/-2075883882 var338)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3368 var2361)) ; Statement: specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16) 

(declare-const var3368!1 var1656)
(declare-const var2361!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-1841308090=([com.google.gson.internal.bind.JsonTreeReader], com.google.gson.stream.JsonToken), var1656-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2942-to-var1797=([com.google.gson.stream.JsonToken], java.lang.Object), locationString/-286819006=([com.google.gson.internal.bind.JsonTreeReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2731=com.google.gson.internal.bind.JsonTreeReader, var3095=r0, var2942=com.google.gson.stream.JsonToken, var60=r1, var2765=$r2, var2704=$r6, var1656=java.lang.IllegalStateException, var3368=$r7, var2587=$r8, var2137=$r10, var676=$r9, var1797=java.lang.Object, var472=$r11, var2911=$r12, var2052=$r14, var405=$r13, var338=$r15, var2361=$r16}
; {com.google.gson.internal.bind.JsonTreeReader=var2731, r0=var3095, com.google.gson.stream.JsonToken=var2942, r1=var60, $r2=var2765, $r6=var2704, java.lang.IllegalStateException=var1656, $r7=var3368, $r8=var2587, $r10=var2137, $r9=var676, java.lang.Object=var1797, $r11=var472, $r12=var2911, $r14=var2052, $r13=var405, $r15=var338, $r16=var2361}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.bind.JsonTreeReader;	r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER>;	if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r6 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken STRING>;	if r1 == $r6 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r7 = new java.lang.IllegalStateException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ");	$r9 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ");	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r13 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16);	throw $r7
;block_num 3
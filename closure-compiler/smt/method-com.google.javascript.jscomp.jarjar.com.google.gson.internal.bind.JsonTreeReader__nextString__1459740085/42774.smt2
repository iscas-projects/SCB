(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var637 0)
(declare-sort var1994 0)
(declare-sort var3909 0)
(declare-sort var1701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/1179433192 (var637) var1994)
(declare-fun var3909-init () var3909)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1701) String)
(declare-fun cast-from-var1994-to-var1701 (var1994) var1701)
(declare-fun locationString/-42154701 (var637) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3909 String) void)
(declare-const null-var637 var637)
(declare-const var1994-STRING var1994)
(declare-const var1994-NUMBER var1994)
(declare-const var988 var637) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var988 null-var637)))
(assert true)
(define-const var640 var1994 (peek/1179433192 var988)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(define-const var29 var1994 var1994-STRING) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken STRING> 
 ; Statement: if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>() 
(assert (not (= var640 var29))) ; Negate: Cond: r1 == $r2  
(define-const var2688 var1994 var1994-NUMBER) ; Statement: $r6 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NUMBER> 
 ; Statement: if r1 == $r6 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>() 
(assert (not (= var640 var2688))) ; Negate: Cond: r1 == $r6  
(define-const var2362 var3909 var3909-init) ; Statement: $r8 = new java.lang.IllegalStateException 
(define-const var230 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var230)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var230!1 String)
(assert (= var230!1 ""))
(assert true)
(define-const var3704 String (append/672562846 var230!1 "Expected ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ") 
(declare-const var230!2 String)
(assert (= var230!2 (str.++ var230!1 "Expected ")))
(define-const var1547 var1994 var1994-STRING) ; Statement: $r10 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken STRING> 
(assert true)
(define-const var3453 String (append/-1031950772 var3704 (cast-from-var1994-to-var1701 var1547))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var3704!1 String)
(assert (str.prefixof var3704 var3704!1))
(assert true)
(define-const var787 String (append/672562846 var3453 " but was ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ") 
(declare-const var3453!1 String)
(assert (= var3453!1 (str.++ var3453 " but was ")))
(assert true)
(define-const var3072 String (append/-1031950772 var787 (cast-from-var1994-to-var1701 var640))) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var787!1 String)
(assert (str.prefixof var787 var787!1))
(assert true)
(define-const var3141 String (locationString/-42154701 var988)) ; Statement: $r14 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>() 
(assert true)
(define-const var2981 String (append/672562846 var3072 var3141)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3072!1 String)
(assert (= var3072!1 (str.++ var3072 var3141)))
(assert true)
(define-const var896 String (toString/-2075883882 var2981)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2362 var896)) ; Statement: specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r17) 

(declare-const var2362!1 var3909)
(declare-const var896!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/1179433192=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), var3909-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1994-to-var1701=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Object), locationString/-42154701=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var637=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader, var988=r0, var1994=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var640=r1, var29=$r2, var2688=$r6, var3909=java.lang.IllegalStateException, var2362=$r8, var230=$r9, var3704=$r11, var1547=$r10, var1701=java.lang.Object, var3453=$r12, var787=$r13, var3072=$r15, var3141=$r14, var2981=$r16, var896=$r17}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader=var637, r0=var988, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var1994, r1=var640, $r2=var29, $r6=var2688, java.lang.IllegalStateException=var3909, $r8=var2362, $r9=var230, $r11=var3704, $r10=var1547, java.lang.Object=var1701, $r12=var3453, $r13=var787, $r15=var3072, $r14=var3141, $r16=var2981, $r17=var896}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken STRING>;	if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>();	$r6 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NUMBER>;	if r1 == $r6 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>();	$r8 = new java.lang.IllegalStateException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ");	$r10 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken STRING>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ");	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r14 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r17);	throw $r8
;block_num 3
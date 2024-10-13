(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1984 0)
(declare-sort var114 0)
(declare-sort var1823 0)
(declare-sort var128 0)
(declare-sort var3149 0)
(declare-sort var3018 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$constructor/1099874522 (var1984) var114)
(declare-fun arr-var1823-init () (Array Int var1823))
(declare-fun var3149-init () var3149)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1823) String)
(declare-fun cast-from-var114-to-var1823 (var114) var1823)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var3149 String var3018) void)
(declare-fun cast-from-var128-to-var3018 (var128) var3018)
(declare-const null-var1984 var1984)
(declare-const null-var128 var128)
(declare-const var837 var1984) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9 
(assert (not (= var837 null-var1984)))
(define-const var2498 var114 (val$constructor/1099874522 var837)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor> 
(define-const var3265 (Array Int var1823) arr-var1823-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1074 var128) ; Statement: $r14 := @caughtexception 
(assert (not (= var1074 null-var128)))
(define-const var1461 var3149 var3149-init) ; Statement: $r15 = new java.lang.RuntimeException 
(define-const var3886 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3886)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3886!1 String)
(assert (= var3886!1 ""))
(assert true)
(define-const var1836 String (append/672562846 var3886!1 "Failed to invoke ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to invoke ") 
(declare-const var3886!2 String)
(assert (= var3886!2 (str.++ var3886!1 "Failed to invoke ")))
(define-const var991 var114 (val$constructor/1099874522 var837)) ; Statement: $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor> 
(assert true)
(define-const var572 String (append/-1031950772 var1836 (cast-from-var114-to-var1823 var991))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17) 
(declare-const var1836!1 String)
(assert (str.prefixof var1836 var1836!1))
(assert true)
(define-const var1193 String (append/672562846 var572 " with no args")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with no args") 
(declare-const var572!1 String)
(assert (= var572!1 (str.++ var572 " with no args")))
(assert true)
(define-const var2185 String (toString/-2075883882 var1193)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var1461 var2185 (cast-from-var128-to-var3018 var1074))) ; Statement: specialinvoke $r15.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r21, $r14) 

(declare-const var1461!1 var3149)
(declare-const var2185!1 String)
(declare-const var1074!1 var128)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {val$constructor/1099874522=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9], java.lang.reflect.Constructor), arr-var1823-init=([], java.lang.Object[]), var3149-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var114-to-var1823=([java.lang.reflect.Constructor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var128-to-var3018=([java.lang.InstantiationException], java.lang.Throwable)}
; {var1984=com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9, var837=r0, var114=java.lang.reflect.Constructor, var2498=$r2, var1823=java.lang.Object, var3265=$r1, var128=java.lang.InstantiationException, var1074=$r14, var3149=java.lang.RuntimeException, var1461=$r15, var3886=$r16, var1836=$r18, var991=$r17, var572=$r19, var1193=$r20, var2185=$r21, var3018=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9=var1984, r0=var837, java.lang.reflect.Constructor=var114, $r2=var2498, java.lang.Object=var1823, $r1=var3265, java.lang.InstantiationException=var128, $r14=var1074, java.lang.RuntimeException=var3149, $r15=var1461, $r16=var3886, $r18=var1836, $r17=var991, $r19=var572, $r20=var1193, $r21=var2185, java.lang.Throwable=var3018}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor>;	$r1 = newarray (java.lang.Object)[0];	$r14 := @caughtexception;	$r15 = new java.lang.RuntimeException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to invoke ");	$r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with no args");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r21, $r14);	throw $r15
;block_num 2
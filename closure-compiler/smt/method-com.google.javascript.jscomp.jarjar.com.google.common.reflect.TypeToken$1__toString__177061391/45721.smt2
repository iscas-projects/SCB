(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3487 0)
(declare-sort var2570 0)
(declare-sort var271 0)
(declare-sort var3206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getOwnerType/-631418833 (var3487) var2570)
(declare-fun append/-1031950772 (String var271) String)
(declare-fun cast-from-var2570-to-var271 (var2570) var271)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-701196470 (var3206) String)
(declare-fun cast-from-var3487-to-var3206 (var3487) var3206)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3487 var3487)
(declare-const var2948 var3487) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$1 
(assert (not (= var2948 null-var3487)))
(define-const var3022 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3022)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3022!1 String)
(assert (= var3022!1 ""))
(assert true)
(define-const var1424 var2570 (getOwnerType/-631418833 var2948)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$1: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getOwnerType()>() 
(assert true)
(define-const var2287 String (append/-1031950772 var3022!1 (cast-from-var2570-to-var271 var1424))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3022!2 String)
(assert (str.prefixof var3022!1 var3022!2))
(assert true)
(define-const var2133 String (append/672562846 var2287 ".")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2287!1 String)
(assert (= var2287!1 (str.++ var2287 ".")))
(assert true)
(define-const var3560 String (toString/-701196470 (cast-from-var3487-to-var3206 var2948))) ; Statement: $r4 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable$MethodInvokable: java.lang.String toString()>() 
(assert true)
(define-const var3523 String (append/672562846 var2133 var3560)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2133!1 String)
(assert (= var2133!1 (str.++ var2133 var3560)))
(assert true)
(define-const var2176 String (toString/-2075883882 var3523)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getOwnerType/-631418833=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$1], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2570-to-var271=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-701196470=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable], java.lang.String), cast-from-var3487-to-var3206=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$1], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3487=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$1, var2948=r1, var3022=$r0, var2570=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, var1424=$r2, var271=java.lang.Object, var2287=$r3, var2133=$r5, var3206=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable, var3560=$r4, var3523=$r6, var2176=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$1=var3487, r1=var2948, $r0=var3022, com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken=var2570, $r2=var1424, java.lang.Object=var271, $r3=var2287, $r5=var2133, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable=var3206, $r4=var3560, $r6=var3523, $r7=var2176}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$1;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$1: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getOwnerType()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r4 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable$MethodInvokable: java.lang.String toString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1
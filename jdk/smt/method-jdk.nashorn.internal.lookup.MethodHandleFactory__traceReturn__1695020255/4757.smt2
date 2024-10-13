(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2634 0)
(declare-sort var3751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun isEnabled/1294310261 (var2634) Bool)
(declare-const null-var2634 var2634)
(declare-const null-var3751 var3751)
(declare-const var1932 var2634) ; Statement: r14 := @parameter0: jdk.nashorn.internal.runtime.logging.DebugLogger 
(assert (not (= var1932 null-var2634)))
(declare-const var2286 var3751) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var2286 null-var3751)))
(define-const var3447 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3447)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3447!1 String)
(assert (= var3447!1 ""))
(assert true)
(define-const var974 String (append/672562846 var3447!1 "    return")) ; Statement: $r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    return") 
(declare-const var3447!2 String)
(assert (= var3447!2 (str.++ var3447!1 "    return")))
(define-const var140 String "[VOID]") ; Statement: $r2 = "[VOID]" 
(assert true)
(define-const var1144 Bool false) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var1144 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2223 String ";") ; Statement: $r17 = ";" 
 ; Statement: goto [?= $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)] 
(assert true) ; Non Conditional
(assert true)
(define-const var19 String (append/672562846 var974 var2223)) ; Statement: $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var974!1 String)
(assert (= var974!1 (str.++ var974 var2223)))
(assert true)
(define-const var804 String (toString/-2075883882 var19)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if r14 != null goto $z1 = virtualinvoke r14.<jdk.nashorn.internal.runtime.logging.DebugLogger: boolean isEnabled()>() 
(assert (not (= var1932 null-var2634))) ; Cond: r14 != null 
(assert true)
(define-const var3729 Bool (isEnabled/1294310261 var1932)) ; Statement: $z1 = virtualinvoke r14.<jdk.nashorn.internal.runtime.logging.DebugLogger: boolean isEnabled()>() 
 ; Statement: if $z1 == 0 goto return r1 
(assert (= (ite var3729 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), isEnabled/1294310261=([jdk.nashorn.internal.runtime.logging.DebugLogger], boolean)}
; {var2634=jdk.nashorn.internal.runtime.logging.DebugLogger, var1932=r14, var3751=java.lang.Object, var2286=r1, var3447=$r0, var974=$r16, var140=$r2, var1144=$z0, var2223=$r17, var19=$r19, var804=$r20, var3729=$z1}
; {jdk.nashorn.internal.runtime.logging.DebugLogger=var2634, r14=var1932, java.lang.Object=var3751, r1=var2286, $r0=var3447, $r16=var974, $r2=var140, $z0=var1144, $r17=var2223, $r19=var19, $r20=var804, $z1=var3729}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r14 := @parameter0: jdk.nashorn.internal.runtime.logging.DebugLogger;	r1 := @parameter1: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    return");	$r2 = "[VOID]";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r17 = ";";	goto [?= $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)];	$r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	if r14 != null goto $z1 = virtualinvoke r14.<jdk.nashorn.internal.runtime.logging.DebugLogger: boolean isEnabled()>();	$z1 = virtualinvoke r14.<jdk.nashorn.internal.runtime.logging.DebugLogger: boolean isEnabled()>();	if $z1 == 0 goto return r1;	return r1
;block_num 5
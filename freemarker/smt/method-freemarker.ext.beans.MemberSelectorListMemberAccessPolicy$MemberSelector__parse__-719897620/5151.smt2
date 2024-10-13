(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var990 0)
(declare-sort var14 0)
(declare-sort var445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var445-init () var445)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var445 String) void)
(declare-const null-String String)
(declare-const null-var14 var14)
(declare-const var2343 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2343 null-String)))
(declare-const var479 var14) ; Statement: r4 := @parameter1: java.lang.ClassLoader 
(assert (not (= var479 null-var14)))
(assert true)
(define-const var3318 Bool (contains/1009244746 var2343 (cast-from-String-to-String "<"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("<") 
 ; Statement: if $z0 != 0 goto $r51 = new java.lang.IllegalArgumentException 
(assert (not (= (ite var3318 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2749 var445 var445-init) ; Statement: $r51 = new java.lang.IllegalArgumentException 
(define-const var3473 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3473)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3473!1 String)
(assert (= var3473!1 ""))
(assert true)
(define-const var2299 String (append/672562846 var3473!1 "Malformed whitelist entry (shouldn\u0027t contain \u0022<\u0022, \u0022>\u0022, \u0022...\u0022, or \u0022;\u0022): ")) ; Statement: $r44 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Malformed whitelist entry (shouldn\'t contain \"<\", \">\", \"...\", or \";\"): ") 
(declare-const var3473!2 String)
(assert (= var3473!2 (str.++ var3473!1 "Malformed whitelist entry (shouldn\u0027t contain \u0022<\u0022, \u0022>\u0022, \u0022...\u0022, or \u0022;\u0022): ")))
(assert true)
(define-const var1325 String (append/672562846 var2299 var2343)) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2299!1 String)
(assert (= var2299!1 (str.++ var2299 var2343)))
(assert true)
(define-const var1881 String (toString/-2075883882 var1325)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2749 var1881)) ; Statement: specialinvoke $r51.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r46) 

(declare-const var2749!1 var445)
(declare-const var1881!1 String)
 ; Statement: throw $r51 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var445-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2343=r0, var990=null_type, var14=java.lang.ClassLoader, var479=r4, var3318=$z0, var445=java.lang.IllegalArgumentException, var2749=$r51, var3473=$r50, var2299=$r44, var1325=$r45, var1881=$r46}
; {r0=var2343, null_type=var990, java.lang.ClassLoader=var14, r4=var479, $z0=var3318, java.lang.IllegalArgumentException=var445, $r51=var2749, $r50=var3473, $r44=var2299, $r45=var1325, $r46=var1881}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.ClassLoader;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("<");	if $z0 != 0 goto $r51 = new java.lang.IllegalArgumentException;	$r51 = new java.lang.IllegalArgumentException;	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r44 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Malformed whitelist entry (shouldn\'t contain \"<\", \">\", \"...\", or \";\"): ");	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r51.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r46);	throw $r51
;block_num 2
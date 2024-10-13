(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var318 0)
(declare-sort var2168 0)
(declare-sort var475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun concat/1917019066 ((s String) (next String)) String (str.++ s next))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var475_encode/-1991027799 (String var2168) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var2168 var2168)
(declare-const var137 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var137 null-String)))
(declare-const var3905 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3905 null-String)))
(declare-const var1778 var2168) ; Statement: r5 := @parameter2: java.nio.charset.Charset 
(assert (not (= var1778 null-var2168)))
(assert true)
(define-const var358 String (concat/1917019066 var137 ":")) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String concat(java.lang.String)>(":") 
(assert true)
(define-const var717 String (concat/1917019066 var358 var3905)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String concat(java.lang.String)>(r1) 
(define-const var1114 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1114)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1114!1 String)
(assert (= var1114!1 ""))
(assert true)
(define-const var1697 String (append/672562846 var1114!1 "Basic ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Basic ") 
(declare-const var1114!2 String)
(assert (= var1114!2 (str.++ var1114!1 "Basic ")))
(define-const var2070 String (var475_encode/-1991027799 (cast-from-String-to-String var717) var1778)) ; Statement: $r6 = staticinvoke <cn.hutool.core.codec.Base64: java.lang.String encode(java.lang.CharSequence,java.nio.charset.Charset)>(r3, r5) 
(assert true)
(define-const var2530 String (append/672562846 var1697 var2070)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1697!1 String)
(assert (= var1697!1 (str.++ var1697 var2070)))
(assert true)
(define-const var1465 String (toString/-2075883882 var2530)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {concat/1917019066=([java.lang.String, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var475_encode/-1991027799=([java.lang.CharSequence, java.nio.charset.Charset], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var137=r0, var318=null_type, var3905=r1, var2168=java.nio.charset.Charset, var1778=r5, var358=$r2, var717=r3, var1114=$r4, var1697=$r7, var475=cn.hutool.core.codec.Base64, var2070=$r6, var2530=$r8, var1465=$r9}
; {r0=var137, null_type=var318, r1=var3905, java.nio.charset.Charset=var2168, r5=var1778, $r2=var358, r3=var717, $r4=var1114, $r7=var1697, cn.hutool.core.codec.Base64=var475, $r6=var2070, $r8=var2530, $r9=var1465}
;seq <java.lang.String: java.lang.String concat(java.lang.String)>;	<java.lang.String: java.lang.String concat(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String concat(java.lang.String)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r5 := @parameter2: java.nio.charset.Charset;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String concat(java.lang.String)>(":");	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String concat(java.lang.String)>(r1);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Basic ");	$r6 = staticinvoke <cn.hutool.core.codec.Base64: java.lang.String encode(java.lang.CharSequence,java.nio.charset.Charset)>(r3, r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1
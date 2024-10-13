(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var590 0)
(declare-sort var2473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2473) String)
(declare-fun cast-from-var590-to-var2473 (var590) var2473)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const var590-DEFAULT var590)
(define-const var3144 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3144)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3144!1 String)
(assert (= var3144!1 ""))
(assert true)
(define-const var1843 String (append/672562846 var3144!1 "0;")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0;") 
(declare-const var3144!2 String)
(assert (= var3144!2 (str.++ var3144!1 "0;")))
(define-const var421 var590 var590-DEFAULT) ; Statement: $r1 = <cn.hutool.core.lang.ansi.AnsiColor: cn.hutool.core.lang.ansi.AnsiColor DEFAULT> 
(assert true)
(define-const var2488 String (append/-1031950772 var1843 (cast-from-var590-to-var2473 var421))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r1) 
(declare-const var1843!1 String)
(assert (str.prefixof var1843 var1843!1))
(assert true)
(define-const var3590 String (toString/-2075883882 var2488)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var471 String var3590) ; Statement: <cn.hutool.core.lang.ansi.AnsiEncoder: java.lang.String RESET> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var590-to-var2473=([cn.hutool.core.lang.ansi.AnsiColor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3144=$r0, var1843=$r2, var590=cn.hutool.core.lang.ansi.AnsiColor, var421=$r1, var2473=java.lang.Object, var2488=$r3, var3590=$r4, var471=<cn.hutool.core.lang.ansi.AnsiEncoder: java.lang.String RESET>}
; {$r0=var3144, $r2=var1843, cn.hutool.core.lang.ansi.AnsiColor=var590, $r1=var421, java.lang.Object=var2473, $r3=var2488, $r4=var3590, <cn.hutool.core.lang.ansi.AnsiEncoder: java.lang.String RESET>=var471}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0;");	$r1 = <cn.hutool.core.lang.ansi.AnsiColor: cn.hutool.core.lang.ansi.AnsiColor DEFAULT>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	<cn.hutool.core.lang.ansi.AnsiEncoder: java.lang.String RESET> = $r4;	return
;block_num 1
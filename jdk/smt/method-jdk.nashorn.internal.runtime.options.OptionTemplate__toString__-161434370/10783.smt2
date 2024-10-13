(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var493 0)
(declare-sort var2260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun shortName/-1654954018 (var493) String)
(declare-fun name/-1654954018 (var493) String)
(declare-fun description/-1654954018 (var493) String)
(declare-fun params/-1654954018 (var493) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var493 var493)
(declare-const null-String String)
(declare-const var722 var493) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.options.OptionTemplate 
(assert (not (= var722 null-var493)))
(define-const var2532 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2532)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2532!1 String)
(assert (= var2532!1 ""))
(assert true)
;(assert (append/-1166366385 var2532!1 9)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(9) 
(declare-const var2532!2 String)
(assert (str.prefixof var2532!1 var2532!2))
(define-const var1108 String (shortName/-1654954018 var722)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String shortName> 
 ; Statement: if $r2 == null goto $r18 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String name> 
(assert (= var1108 null-String)) ; Cond: $r2 == null 
(define-const var291 String (name/-1654954018 var722)) ; Statement: $r18 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String name> 
 ; Statement: if $r18 == null goto $r3 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String description> 
(assert (= var291 null-String)) ; Cond: $r18 == null 
(define-const var3265 String (description/-1654954018 var722)) ; Statement: $r3 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String description> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String params> 
(assert (= var3265 null-String)) ; Cond: $r3 == null 
(define-const var1936 String (params/-1654954018 var722)) ; Statement: $r4 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String params> 
 ; Statement: if $r4 == null goto $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1936 null-String)) ; Cond: $r4 == null 
(assert true)
(define-const var2563 String (toString/-2075883882 var2532!2)) ; Statement: $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), shortName/-1654954018=([jdk.nashorn.internal.runtime.options.OptionTemplate], java.lang.String), name/-1654954018=([jdk.nashorn.internal.runtime.options.OptionTemplate], java.lang.String), description/-1654954018=([jdk.nashorn.internal.runtime.options.OptionTemplate], java.lang.String), params/-1654954018=([jdk.nashorn.internal.runtime.options.OptionTemplate], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var493=jdk.nashorn.internal.runtime.options.OptionTemplate, var722=r1, var2532=$r0, var1108=$r2, var2260=null_type, var291=$r18, var3265=$r3, var1936=$r4, var2563=$r20}
; {jdk.nashorn.internal.runtime.options.OptionTemplate=var493, r1=var722, $r0=var2532, $r2=var1108, null_type=var2260, $r18=var291, $r3=var3265, $r4=var1936, $r20=var2563}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.options.OptionTemplate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(9);	$r2 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String shortName>;	if $r2 == null goto $r18 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String name>;	$r18 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String name>;	if $r18 == null goto $r3 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String description>;	$r3 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String description>;	if $r3 == null goto $r4 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String params>;	$r4 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String params>;	if $r4 == null goto $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 5
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var246 0)
(declare-sort var1633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun resource/1148431791 (var246) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var246 var246)
(declare-const null-String String)
(declare-const var890 var246) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.options.Options 
(assert (not (= var890 null-var246)))
(declare-const var866 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var866 null-String)))
(define-const var882 String var866) ; Statement: r11 = r0 
(assert true) ; Non Conditional
(assert true)
(define-const var3985 Bool (startsWith/-1785782452 var882 "-")) ; Statement: $z0 = virtualinvoke r11.<java.lang.String: boolean startsWith(java.lang.String)>("-") 
 ; Statement: if $z0 == 0 goto r12 = virtualinvoke r11.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("-", ".") 
(assert (= (ite var3985 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var900 String (replace/2138489945 var882 (cast-from-String-to-String "-") (cast-from-String-to-String "."))) ; Statement: r12 = virtualinvoke r11.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("-", ".") 
(define-const var2278 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2278)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2278!1 String)
(assert (= var2278!1 ""))
(define-const var2475 String (resource/1148431791 var890)) ; Statement: $r3 = r2.<jdk.nashorn.internal.runtime.options.Options: java.lang.String resource> 
(assert true)
(define-const var1148 String (append/672562846 var2278!1 var2475)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2278!2 String)
(assert (= var2278!2 (str.++ var2278!1 var2475)))
(assert true)
(define-const var3670 String (append/672562846 var1148 ".option.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".option.") 
(declare-const var1148!1 String)
(assert (= var1148!1 (str.++ var1148 ".option.")))
(assert true)
(define-const var651 String (toString/-2075883882 var3670)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var696 Bool (startsWith/-1785782452 var900 var651)) ; Statement: $z1 = virtualinvoke r12.<java.lang.String: boolean startsWith(java.lang.String)>(r6) 
 ; Statement: if $z1 == 0 goto $r7 = new java.lang.StringBuilder 
(assert (not (= (ite var696 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), resource/1148431791=([jdk.nashorn.internal.runtime.options.Options], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var246=jdk.nashorn.internal.runtime.options.Options, var890=r2, var866=r0, var1633=null_type, var882=r11, var3985=$z0, var900=r12, var2278=$r1, var2475=$r3, var1148=$r4, var3670=$r5, var651=r6, var696=$z1}
; {jdk.nashorn.internal.runtime.options.Options=var246, r2=var890, r0=var866, null_type=var1633, r11=var882, $z0=var3985, r12=var900, $r1=var2278, $r3=var2475, $r4=var1148, $r5=var3670, r6=var651, $z1=var696}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.options.Options;	r0 := @parameter0: java.lang.String;	r11 = r0;	$z0 = virtualinvoke r11.<java.lang.String: boolean startsWith(java.lang.String)>("-");	if $z0 == 0 goto r12 = virtualinvoke r11.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("-", ".");	r12 = virtualinvoke r11.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("-", ".");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = r2.<jdk.nashorn.internal.runtime.options.Options: java.lang.String resource>;	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".option.");	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$z1 = virtualinvoke r12.<java.lang.String: boolean startsWith(java.lang.String)>(r6);	if $z1 == 0 goto $r7 = new java.lang.StringBuilder;	return r12
;block_num 4
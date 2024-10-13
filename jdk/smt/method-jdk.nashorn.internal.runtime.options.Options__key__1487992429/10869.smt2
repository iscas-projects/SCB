(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2906 0)
(declare-sort var1972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun resource/1148431791 (var2906) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2906 var2906)
(declare-const null-String String)
(declare-const var3406 var2906) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.options.Options 
(assert (not (= var3406 null-var2906)))
(declare-const var2721 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2721 null-String)))
(define-const var1582 String var2721) ; Statement: r11 = r0 
(assert true) ; Non Conditional
(assert true)
(define-const var3419 Bool (startsWith/-1785782452 var1582 "-")) ; Statement: $z0 = virtualinvoke r11.<java.lang.String: boolean startsWith(java.lang.String)>("-") 
 ; Statement: if $z0 == 0 goto r12 = virtualinvoke r11.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("-", ".") 
(assert (= (ite var3419 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var39 String (replace/2138489945 var1582 (cast-from-String-to-String "-") (cast-from-String-to-String "."))) ; Statement: r12 = virtualinvoke r11.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("-", ".") 
(define-const var3063 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3063)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3063!1 String)
(assert (= var3063!1 ""))
(define-const var3757 String (resource/1148431791 var3406)) ; Statement: $r3 = r2.<jdk.nashorn.internal.runtime.options.Options: java.lang.String resource> 
(assert true)
(define-const var2371 String (append/672562846 var3063!1 var3757)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3063!2 String)
(assert (= var3063!2 (str.++ var3063!1 var3757)))
(assert true)
(define-const var1684 String (append/672562846 var2371 ".option.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".option.") 
(declare-const var2371!1 String)
(assert (= var2371!1 (str.++ var2371 ".option.")))
(assert true)
(define-const var840 String (toString/-2075883882 var1684)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3905 Bool (startsWith/-1785782452 var39 var840)) ; Statement: $z1 = virtualinvoke r12.<java.lang.String: boolean startsWith(java.lang.String)>(r6) 
 ; Statement: if $z1 == 0 goto $r7 = new java.lang.StringBuilder 
(assert (= (ite var3905 1 0) 0)) ; Cond: $z1 == 0 
(define-const var248 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var248)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var248!1 String)
(assert (= var248!1 ""))
(assert true)
(define-const var3160 String (append/672562846 var248!1 var840)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var248!2 String)
(assert (= var248!2 (str.++ var248!1 var840)))
(assert true)
(define-const var2772 String (append/672562846 var3160 var39)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var3160!1 String)
(assert (= var3160!1 (str.++ var3160 var39)))
(assert true)
(define-const var55 String (toString/-2075883882 var2772)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), resource/1148431791=([jdk.nashorn.internal.runtime.options.Options], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2906=jdk.nashorn.internal.runtime.options.Options, var3406=r2, var2721=r0, var1972=null_type, var1582=r11, var3419=$z0, var39=r12, var3063=$r1, var3757=$r3, var2371=$r4, var1684=$r5, var840=r6, var3905=$z1, var248=$r7, var3160=$r8, var2772=$r9, var55=$r10}
; {jdk.nashorn.internal.runtime.options.Options=var2906, r2=var3406, r0=var2721, null_type=var1972, r11=var1582, $z0=var3419, r12=var39, $r1=var3063, $r3=var3757, $r4=var2371, $r5=var1684, r6=var840, $z1=var3905, $r7=var248, $r8=var3160, $r9=var2772, $r10=var55}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: jdk.nashorn.internal.runtime.options.Options;	r0 := @parameter0: java.lang.String;	r11 = r0;	$z0 = virtualinvoke r11.<java.lang.String: boolean startsWith(java.lang.String)>("-");	if $z0 == 0 goto r12 = virtualinvoke r11.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("-", ".");	r12 = virtualinvoke r11.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("-", ".");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = r2.<jdk.nashorn.internal.runtime.options.Options: java.lang.String resource>;	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".option.");	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$z1 = virtualinvoke r12.<java.lang.String: boolean startsWith(java.lang.String)>(r6);	if $z1 == 0 goto $r7 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 4
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3940 0)
(declare-sort var3170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun key/-1095590673 (var3940) var3170)
(declare-fun toString/-522406933 (var3170) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-1095590673 (var3940) var3170)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3940 var3940)
(declare-const var3210 var3940) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap$Entry 
(assert (not (= var3210 null-var3940)))
(define-const var193 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var193)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var193!1 String)
(assert (= var193!1 ""))
(define-const var2711 var3170 (key/-1095590673 var3210)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap$Entry: java.lang.Object key> 
(assert true)
(define-const var3756 String (toString/-522406933 var2711)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1088 String (append/672562846 var193!1 var3756)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var193!2 String)
(assert (= var193!2 (str.++ var193!1 var3756)))
(assert true)
(define-const var679 String (append/672562846 var1088 ":")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1088!1 String)
(assert (= var1088!1 (str.++ var1088 ":")))
(define-const var2550 var3170 (value/-1095590673 var3210)) ; Statement: $r5 = r1.<com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap$Entry: java.lang.Object value> 
(assert true)
(define-const var395 String (toString/-522406933 var2550)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3650 String (append/672562846 var679 var395)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var679!1 String)
(assert (= var679!1 (str.++ var679 var395)))
(assert true)
(define-const var231 String (toString/-2075883882 var3650)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), key/-1095590673=([com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap$Entry], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-1095590673=([com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap$Entry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3940=com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap$Entry, var3210=r1, var193=$r0, var3170=java.lang.Object, var2711=$r2, var3756=$r3, var1088=$r4, var679=$r7, var2550=$r5, var395=$r6, var3650=$r8, var231=$r9}
; {com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap$Entry=var3940, r1=var3210, $r0=var193, java.lang.Object=var3170, $r2=var2711, $r3=var3756, $r4=var1088, $r7=var679, $r5=var2550, $r6=var395, $r8=var3650, $r9=var231}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap$Entry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap$Entry: java.lang.Object key>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap$Entry: java.lang.Object value>;	$r6 = virtualinvoke $r5.<java.lang.Object: java.lang.String toString()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1
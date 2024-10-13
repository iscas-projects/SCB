(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2877 0)
(declare-sort var3531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDescription/166697217 (var3531) String)
(declare-fun cast-from-var2877-to-var3531 (var2877) var3531)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2877 var2877)
(declare-const var3180 var2877) ; Statement: r1 := @this: freemarker.core.LegacyCFormat$LegacyCTemplateNumberFormat 
(assert (not (= var3180 null-var2877)))
(define-const var3890 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3890)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3890!1 String)
(assert (= var3890!1 ""))
(assert true)
(define-const var2804 String (append/672562846 var3890!1 "LegacyC(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("LegacyC(") 
(declare-const var3890!2 String)
(assert (= var3890!2 (str.++ var3890!1 "LegacyC(")))
(assert true)
(define-const var1825 String (getDescription/166697217 (cast-from-var2877-to-var3531 var3180))) ; Statement: $r2 = specialinvoke r1.<freemarker.core.JavaTemplateNumberFormat: java.lang.String getDescription()>() 
(assert true)
(define-const var2701 String (append/672562846 var2804 var1825)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2804!1 String)
(assert (= var2804!1 (str.++ var2804 var1825)))
(assert true)
(define-const var2057 String (append/672562846 var2701 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2701!1 String)
(assert (= var2701!1 (str.++ var2701 ")")))
(assert true)
(define-const var2985 String (toString/-2075883882 var2057)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDescription/166697217=([freemarker.core.JavaTemplateNumberFormat], java.lang.String), cast-from-var2877-to-var3531=([freemarker.core.LegacyCFormat$LegacyCTemplateNumberFormat], freemarker.core.JavaTemplateNumberFormat), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2877=freemarker.core.LegacyCFormat$LegacyCTemplateNumberFormat, var3180=r1, var3890=$r0, var2804=$r3, var3531=freemarker.core.JavaTemplateNumberFormat, var1825=$r2, var2701=$r4, var2057=$r5, var2985=$r6}
; {freemarker.core.LegacyCFormat$LegacyCTemplateNumberFormat=var2877, r1=var3180, $r0=var3890, $r3=var2804, freemarker.core.JavaTemplateNumberFormat=var3531, $r2=var1825, $r4=var2701, $r5=var2057, $r6=var2985}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.LegacyCFormat$LegacyCTemplateNumberFormat;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("LegacyC(");	$r2 = specialinvoke r1.<freemarker.core.JavaTemplateNumberFormat: java.lang.String getDescription()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
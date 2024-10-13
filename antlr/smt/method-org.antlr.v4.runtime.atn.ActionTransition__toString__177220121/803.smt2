(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ruleIndex/-2022315719 (var175) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun actionIndex/-2022315719 (var175) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var175 var175)
(declare-const var1971 var175) ; Statement: r1 := @this: org.antlr.v4.runtime.atn.ActionTransition 
(assert (not (= var1971 null-var175)))
(define-const var2164 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2164)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2164!1 String)
(assert (= var2164!1 ""))
(assert true)
(define-const var2558 String (append/672562846 var2164!1 "action_")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("action_") 
(declare-const var2164!2 String)
(assert (= var2164!2 (str.++ var2164!1 "action_")))
(define-const var1220 Int (ruleIndex/-2022315719 var1971)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.atn.ActionTransition: int ruleIndex> 
(assert true)
(define-const var3305 String (append/-1001720160 var2558 var1220)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2558!1 String)
(assert (str.prefixof var2558 var2558!1))
(assert true)
(define-const var2776 String (append/672562846 var3305 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3305!1 String)
(assert (= var3305!1 (str.++ var3305 ":")))
(define-const var2217 Int (actionIndex/-2022315719 var1971)) ; Statement: $i1 = r1.<org.antlr.v4.runtime.atn.ActionTransition: int actionIndex> 
(assert true)
(define-const var3770 String (append/-1001720160 var2776 var2217)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2776!1 String)
(assert (str.prefixof var2776 var2776!1))
(assert true)
(define-const var403 String (toString/-2075883882 var3770)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ruleIndex/-2022315719=([org.antlr.v4.runtime.atn.ActionTransition], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), actionIndex/-2022315719=([org.antlr.v4.runtime.atn.ActionTransition], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var175=org.antlr.v4.runtime.atn.ActionTransition, var1971=r1, var2164=$r0, var2558=$r2, var1220=$i0, var3305=$r3, var2776=$r4, var2217=$i1, var3770=$r5, var403=$r6}
; {org.antlr.v4.runtime.atn.ActionTransition=var175, r1=var1971, $r0=var2164, $r2=var2558, $i0=var1220, $r3=var3305, $r4=var2776, $i1=var2217, $r5=var3770, $r6=var403}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.atn.ActionTransition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("action_");	$i0 = r1.<org.antlr.v4.runtime.atn.ActionTransition: int ruleIndex>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i1 = r1.<org.antlr.v4.runtime.atn.ActionTransition: int actionIndex>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
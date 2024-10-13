(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1477) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1477 var1477)
(declare-const var1693 var1477) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1693 null-var1477)))
(declare-const var996 var1477) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var996 null-var1477)))
 ; Statement: if r0 != null goto $z0 = r0 instanceof java.lang.Class 
(assert (not (not (= var1693 null-var1477)))) ; Negate: Cond: r0 != null  
(define-const var448 String "null") ; Statement: r4 = "null" 
 ; Statement: goto [?= $r5 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3012 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3012)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3012!1 String)
(assert (= var3012!1 ""))
(assert true)
(define-const var3085 String (append/672562846 var3012!1 var448)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3012!2 String)
(assert (= var3012!2 (str.++ var3012!1 var448)))
(assert true)
(define-const var189 String (append/672562846 var3085 ".")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3085!1 String)
(assert (= var3085!1 (str.++ var3085 ".")))
(assert true)
(define-const var1800 String (append/-1031950772 var189 var996)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var189!1 String)
(assert (str.prefixof var189 var189!1))
(assert true)
(define-const var1480 String (toString/-2075883882 var1800)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1477=java.lang.Object, var1693=r0, var996=r2, var448=r4, var3012=$r5, var3085=$r6, var189=$r7, var1800=$r8, var1480=$r9}
; {java.lang.Object=var1477, r0=var1693, r2=var996, r4=var448, $r5=var3012, $r6=var3085, $r7=var189, $r8=var1800, $r9=var1480}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	if r0 != null goto $z0 = r0 instanceof java.lang.Class;	r4 = "null";	goto [?= $r5 = new java.lang.StringBuilder];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3
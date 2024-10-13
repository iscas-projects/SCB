(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3127 0)
(declare-sort var2998 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParent/-1549881890 (var3127) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3127 var3127)
(declare-const null-String String)
(declare-const var3127-separator String)
(declare-const var2450 var3127) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2450 null-var3127)))
(declare-const var369 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var369 null-String)))
(assert true)
(define-const var3565 String (getParent/-1549881890 var2450)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.lang.String getParent()>() 
 ; Statement: if r1 == null goto $r7 = r2 
(assert (not (= var3565 null-String))) ; Negate: Cond: r1 == null  
(define-const var161 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var161)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var161!1 String)
(assert (= var161!1 ""))
(assert true)
(define-const var2011 String (append/672562846 var161!1 var3565)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var161!2 String)
(assert (= var161!2 (str.++ var161!1 var3565)))
(define-const var1639 String var3127-separator) ; Statement: $r4 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var1310 String (append/672562846 var2011 var1639)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2011!1 String)
(assert (= var2011!1 (str.++ var2011 var1639)))
(assert true)
(define-const var2740 String (toString/-2075883882 var1310)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r7] 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getParent/-1549881890=([java.io.File], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3127=java.io.File, var2450=r0, var369=r2, var2998=null_type, var3565=r1, var161=$r3, var2011=$r5, var1639=$r4, var1310=$r6, var2740=$r7}
; {java.io.File=var3127, r0=var2450, r2=var369, null_type=var2998, r1=var3565, $r3=var161, $r5=var2011, $r4=var1639, $r6=var1310, $r7=var2740}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	r2 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<java.io.File: java.lang.String getParent()>();	if r1 == null goto $r7 = r2;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = <java.io.File: java.lang.String separator>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r7];	return $r7
;block_num 3
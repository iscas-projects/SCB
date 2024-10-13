(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-const null-Int Int)
(declare-const var3619 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3619 null-Int)))
(declare-const var352 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var352 null-Int)))
 ; Statement: if i0 != 2147483647 goto $r0 = new java.lang.StringBuilder 
(assert (not (not (= var3619 2147483647)))) ; Negate: Cond: i0 != 2147483647  
(define-const var2369 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2369)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2369!1 String)
(assert (= var2369!1 ""))
(assert true)
(define-const var3113 String (append/672562846 var2369!1 "")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var2369!2 String)
(assert (= var2369!2 (str.++ var2369!1 "")))
(assert true)
(define-const var3606 String (append/672562846 var3113 "inf")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("inf") 
(declare-const var3113!1 String)
(assert (= var3113!1 (str.++ var3113 "inf")))
(assert true)
(define-const var3561 String (toString/-2075883882 var3606)) ; Statement: r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r5 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2404 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2404)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2404!1 String)
(assert (= var2404!1 ""))
(assert true)
(define-const var721 String (append/672562846 var2404!1 var3561)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var2404!2 String)
(assert (= var2404!2 (str.++ var2404!1 var3561)))
(assert true)
(define-const var2839 String (append/672562846 var721 "-")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var721!1 String)
(assert (= var721!1 (str.++ var721 "-")))
(assert true)
(define-const var1622 String (toString/-2075883882 var2839)) ; Statement: $r19 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if i1 != 2147483647 goto $r8 = new java.lang.StringBuilder 
(assert (not (= var352 2147483647))) ; Cond: i1 != 2147483647 
(define-const var3126 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3126)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3126!1 String)
(assert (= var3126!1 ""))
(assert true)
(define-const var1246 String (append/672562846 var3126!1 var1622)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3126!2 String)
(assert (= var3126!2 (str.++ var3126!1 var1622)))
(assert true)
(define-const var3391 String (append/672562846 var1246 "(")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1246!1 String)
(assert (= var1246!1 (str.++ var1246 "(")))
(assert true)
(define-const var1298 String (append/-1001720160 var3391 var352)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3391!1 String)
(assert (str.prefixof var3391 var3391!1))
(assert true)
(define-const var2274 String (append/672562846 var1298 ")")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1298!1 String)
(assert (= var1298!1 (str.++ var1298 ")")))
(assert true)
(define-const var1347 String (toString/-2075883882 var2274)) ; Statement: r21 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return r21 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder)}
; {var3619=i0, var352=i1, var2369=$r16, var3113=$r17, var3606=$r18, var3561=r20, var2404=$r5, var721=$r6, var2839=$r7, var1622=$r19, var3126=$r8, var1246=$r9, var3391=$r10, var1298=$r11, var2274=$r12, var1347=r21}
; {i0=var3619, i1=var352, $r16=var2369, $r17=var3113, $r18=var3606, r20=var3561, $r5=var2404, $r6=var721, $r7=var2839, $r19=var1622, $r8=var3126, $r9=var1246, $r10=var3391, $r11=var1298, $r12=var2274, r21=var1347}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	if i0 != 2147483647 goto $r0 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("inf");	r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r5 = new java.lang.StringBuilder];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r19 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	if i1 != 2147483647 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r21 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return r21
;block_num 5
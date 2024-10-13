(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2869 0)
(declare-sort var1884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2869 var2869)
(declare-const null-String String)
(declare-const var1188 var2869) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1188 null-var2869)))
(declare-const var2344 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2344 null-String)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= var1188 null-var2869)))) ; Negate: Cond: r0 != null  
(define-const var3957 String "null") ; Statement: $r9 = "null" 
 ; Statement: goto [?= $r2 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3910 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3910)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3910!1 String)
(assert (= var3910!1 ""))
(assert true)
(define-const var2205 String (append/672562846 var3910!1 var3957)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3910!2 String)
(assert (= var3910!2 (str.++ var3910!1 var3957)))
(assert true)
(define-const var1775 String (append/672562846 var2205 "<")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var2205!1 String)
(assert (= var2205!1 (str.++ var2205 "<")))
(assert true)
(define-const var1845 String (append/672562846 var1775 var2344)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1775!1 String)
(assert (= var1775!1 (str.++ var1775 var2344)))
(assert true)
(define-const var70 String (append/672562846 var1845 ">")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1845!1 String)
(assert (= var1845!1 (str.++ var1845 ">")))
(assert true)
(define-const var2169 String (toString/-2075883882 var70)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2869=java.lang.Object, var1188=r0, var2344=r4, var1884=null_type, var3957=$r9, var3910=$r2, var2205=$r3, var1775=$r5, var1845=$r6, var70=$r7, var2169=$r8}
; {java.lang.Object=var2869, r0=var1188, r4=var2344, null_type=var1884, $r9=var3957, $r2=var3910, $r3=var2205, $r5=var1775, $r6=var1845, $r7=var70, $r8=var2169}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r4 := @parameter1: java.lang.String;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r9 = "null";	goto [?= $r2 = new java.lang.StringBuilder];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3
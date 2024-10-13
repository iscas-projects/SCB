(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1533 0)
(declare-sort var3316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3316_formatPosition/-1135250777 (Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const var1892 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1892 null-String)))
(declare-const var3172 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3172 null-String)))
(declare-const var901 String) ; Statement: r19 := @parameter2: java.lang.String 
(assert (not (= var901 null-String)))
(declare-const var3212 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var3212 null-Bool)))
(declare-const var476 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var476 null-Int)))
(declare-const var3446 Int) ; Statement: i1 := @parameter5: int 
(assert (not (= var3446 null-Int)))
 ; Statement: if i0 >= 0 goto (branch) 
(assert (not (>= var476 0))) ; Negate: Cond: i0 >= 0  
(define-const var1599 String "?eval-ed string") ; Statement: r20 = "?eval-ed string" 
(define-const var901!1 String null-String) ; Statement: r19 = null 
 ; Statement: goto [?= $r22 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3882 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3882)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3882!1 String)
(assert (= var3882!1 ""))
(assert true)
(define-const var1037 String (append/672562846 var3882!1 "in ")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("in ") 
(declare-const var3882!2 String)
(assert (= var3882!2 (str.++ var3882!1 "in ")))
(assert true)
(define-const var1714 String (append/672562846 var1037 var1599)) ; Statement: $r1 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var1037!1 String)
(assert (= var1037!1 (str.++ var1037 var1599)))
 ; Statement: if r19 == null goto $r25 = "" 
(assert (= var901!1 null-String)) ; Cond: r19 == null 
(define-const var2298 String "") ; Statement: $r25 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var3930 String (append/672562846 var1714 var2298)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var1714!1 String)
(assert (= var1714!1 (str.++ var1714 var2298)))
(assert true)
(define-const var1942 String (append/672562846 var3930 " ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3930!1 String)
(assert (= var3930!1 (str.++ var3930 " ")))
(assert true)
(define-const var2939 String (append/672562846 var1942 var1892)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1942!1 String)
(assert (= var1942!1 (str.++ var1942 var1892)))
(assert true)
(define-const var3121 String (append/672562846 var2939 " ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2939!1 String)
(assert (= var2939!1 (str.++ var2939 " ")))
(define-const var3288 String (var3316_formatPosition/-1135250777 var476 var3446)) ; Statement: $r6 = staticinvoke <freemarker.core._MessageUtil: java.lang.String formatPosition(int,int)>(i0, i1) 
(assert true)
(define-const var1762 String (append/672562846 var3121 var3288)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3121!1 String)
(assert (= var3121!1 (str.++ var3121 var3288)))
(assert true)
(define-const var1043 String (toString/-2075883882 var1762)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3316_formatPosition/-1135250777=([int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1892=r3, var1533=null_type, var3172=r0, var901=r19, var3212=z0, var476=i0, var3446=i1, var1599=r20, var3882=$r22, var1037=$r23, var1714=$r1, var2298=$r25, var3930=$r2, var1942=$r4, var2939=$r5, var3121=$r7, var3316=freemarker.core._MessageUtil, var3288=$r6, var1762=$r8, var1043=$r9}
; {r3=var1892, null_type=var1533, r0=var3172, r19=var901, z0=var3212, i0=var476, i1=var3446, r20=var1599, $r22=var3882, $r23=var1037, $r1=var1714, $r25=var2298, $r2=var3930, $r4=var1942, $r5=var2939, $r7=var3121, freemarker.core._MessageUtil=var3316, $r6=var3288, $r8=var1762, $r9=var1043}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	r19 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	i0 := @parameter4: int;	i1 := @parameter5: int;	if i0 >= 0 goto (branch);	r20 = "?eval-ed string";	r19 = null;	goto [?= $r22 = new java.lang.StringBuilder];	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("in ");	$r1 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	if r19 == null goto $r25 = "";	$r25 = "";	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r6 = staticinvoke <freemarker.core._MessageUtil: java.lang.String formatPosition(int,int)>(i0, i1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 5
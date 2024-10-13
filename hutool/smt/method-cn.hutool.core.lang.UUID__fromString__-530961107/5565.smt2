(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1437 0)
(declare-sort var292 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var292-init () var292)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var292 String) void)
(declare-const null-String String)
(declare-const var2016 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2016 null-String)))
(assert true)
(define-const var2714 (Array Int String) (split/-636890950 var2016 "-")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("-") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var2016 "-") i) (re.++ (re.* re.all) (str.to_re "-") (re.* re.all))))))
(define-const var2537 Int (getLength-Arr-String-1 var2714)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 == 5 goto i4 = 0 
(assert (not (= var2537 5))) ; Negate: Cond: $i0 == 5  
(define-const var2142 var292 var292-init) ; Statement: $r18 = new java.lang.IllegalArgumentException 
(define-const var60 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var60)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var60!1 String)
(assert (= var60!1 ""))
(assert true)
(define-const var1178 String (append/672562846 var60!1 "Invalid UUID string: ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid UUID string: ") 
(declare-const var60!2 String)
(assert (= var60!2 (str.++ var60!1 "Invalid UUID string: ")))
(assert true)
(define-const var541 String (append/672562846 var1178 var2016)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1178!1 String)
(assert (= var1178!1 (str.++ var1178 var2016)))
(assert true)
(define-const var1735 String (toString/-2075883882 var541)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2142 var1735)) ; Statement: specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r22) 

(declare-const var2142!1 var292)
(declare-const var1735!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var292-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2016=r0, var1437=null_type, var2714=r1, var2537=$i0, var292=java.lang.IllegalArgumentException, var2142=$r18, var60=$r19, var1178=$r20, var541=$r21, var1735=$r22}
; {r0=var2016, null_type=var1437, r1=var2714, $i0=var2537, java.lang.IllegalArgumentException=var292, $r18=var2142, $r19=var60, $r20=var1178, $r21=var541, $r22=var1735}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("-");	$i0 = lengthof r1;	if $i0 == 5 goto i4 = 0;	$r18 = new java.lang.IllegalArgumentException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid UUID string: ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r22);	throw $r18
;block_num 2
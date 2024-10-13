(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var360 0)
(declare-sort var3970 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/-2094448697 (var360) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun exceptionMessage/1785721196 (var360) String)
(declare-const null-var360 var360)
(declare-const null-String String)
(declare-const var2135 var360) ; Statement: r0 := @this: com.mysql.cj.exceptions.CJException 
(assert (not (= var2135 null-var360)))
(declare-const var3482 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3482 null-String)))
(define-const var2679 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2679)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2679!1 String)
(assert (= var2679!1 ""))
(assert true)
(define-const var3075 String (getMessage/-2094448697 var2135)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.exceptions.CJException: java.lang.String getMessage()>() 
(assert true)
(define-const var2509 String (append/672562846 var2679!1 var3075)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2679!2 String)
(assert (= var2679!2 (str.++ var2679!1 var3075)))
(assert true)
(define-const var2985 String (append/672562846 var2509 var3482)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2509!1 String)
(assert (= var2509!1 (str.++ var2509 var3482)))
(assert true)
(define-const var3703 String (toString/-2075883882 var2985)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2135!1 var360)
(assert (not (= var2135!1 null-var360)))
(assert (= (exceptionMessage/1785721196 var2135!1) var3703)) ; Statement: r0.<com.mysql.cj.exceptions.CJException: java.lang.String exceptionMessage> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/-2094448697=([com.mysql.cj.exceptions.CJException], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), exceptionMessage/1785721196=([com.mysql.cj.exceptions.CJException], java.lang.String)}
; {var360=com.mysql.cj.exceptions.CJException, var2135=r0, var3482=r3, var3970=null_type, var2679=$r1, var3075=$r2, var2509=$r4, var2985=$r5, var3703=$r6}
; {com.mysql.cj.exceptions.CJException=var360, r0=var2135, r3=var3482, null_type=var3970, $r1=var2679, $r2=var3075, $r4=var2509, $r5=var2985, $r6=var3703}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.exceptions.CJException;	r3 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<com.mysql.cj.exceptions.CJException: java.lang.String getMessage()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.mysql.cj.exceptions.CJException: java.lang.String exceptionMessage> = $r6;	return
;block_num 1
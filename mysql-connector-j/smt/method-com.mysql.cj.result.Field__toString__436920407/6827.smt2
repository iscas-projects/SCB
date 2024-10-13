(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1793 0)
(declare-sort var3617 0)
(declare-sort var3694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-522406933 (var3694) String)
(declare-fun cast-from-var1793-to-var3694 (var1793) var3694)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1793 var1793)
(declare-const null-var3617 var3617)
(declare-const var2781 var1793) ; Statement: r1 := @this: com.mysql.cj.result.Field 
(assert (not (= var2781 null-var1793)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2525 var3617) ; Statement: $r13 := @caughtexception 
(assert (not (= var2525 null-var3617)))
(define-const var3855 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3855)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3855!1 String)
(assert (= var3855!1 ""))
(assert true)
(define-const var3381 String (toString/-522406933 (cast-from-var1793-to-var3694 var2781))) ; Statement: $r15 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1825 String (append/672562846 var3855!1 var3381)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3855!2 String)
(assert (= var3855!2 (str.++ var3855!1 var3381)))
(assert true)
(define-const var87 String (append/672562846 var1825 "[<unable to generate contents>]")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[<unable to generate contents>]") 
(declare-const var1825!1 String)
(assert (= var1825!1 (str.++ var1825 "[<unable to generate contents>]")))
(assert true)
(define-const var2882 String (toString/-2075883882 var87)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1793-to-var3694=([com.mysql.cj.result.Field], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1793=com.mysql.cj.result.Field, var2781=r1, var3617=java.lang.Throwable, var2525=$r13, var3855=$r14, var3694=java.lang.Object, var3381=$r15, var1825=$r16, var87=$r17, var2882=$r18}
; {com.mysql.cj.result.Field=var1793, r1=var2781, java.lang.Throwable=var3617, $r13=var2525, $r14=var3855, java.lang.Object=var3694, $r15=var3381, $r16=var1825, $r17=var87, $r18=var2882}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.result.Field;	$r13 := @caughtexception;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[<unable to generate contents>]");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 2
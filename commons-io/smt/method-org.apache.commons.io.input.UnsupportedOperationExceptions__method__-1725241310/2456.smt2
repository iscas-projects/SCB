(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3307 0)
(declare-sort var626 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var626-init () var626)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var626 String) void)
(declare-const null-String String)
(declare-const var3188 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3188 null-String)))
(define-const var401 var626 var626-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var619 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var619)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var619!1 String)
(assert (= var619!1 ""))
(assert true)
(define-const var278 String (append/672562846 var619!1 var3188)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var619!2 String)
(assert (= var619!2 (str.++ var619!1 var3188)))
(assert true)
(define-const var2521 String (append/672562846 var278 " not supported")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not supported") 
(declare-const var278!1 String)
(assert (= var278!1 (str.++ var278 " not supported")))
(assert true)
(define-const var479 String (toString/-2075883882 var2521)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var401 var479)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r5) 

(declare-const var401!1 var626)
(declare-const var479!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var626-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var3188=r2, var3307=null_type, var626=java.lang.UnsupportedOperationException, var401=$r0, var619=$r1, var278=$r3, var2521=$r4, var479=$r5}
; {r2=var3188, null_type=var3307, java.lang.UnsupportedOperationException=var626, $r0=var401, $r1=var619, $r3=var278, $r4=var2521, $r5=var479}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not supported");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r5);	return $r0
;block_num 1
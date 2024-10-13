(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var284 0)
(declare-sort var1180 0)
(declare-sort var497 0)
(declare-sort var3924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var497) String)
(declare-fun cast-from-var1180-to-var497 (var1180) var497)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3924 String) void)
(declare-fun cast-from-var284-to-var3924 (var284) var3924)
(declare-const null-var284 var284)
(declare-const null-var1180 var1180)
(declare-const var1422 var284) ; Statement: r0 := @this: org.apache.commons.io.FileExistsException 
(assert (not (= var1422 null-var284)))
(declare-const var2963 var1180) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var2963 null-var1180)))
(define-const var3220 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3220)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3220!1 String)
(assert (= var3220!1 ""))
(assert true)
(define-const var282 String (append/672562846 var3220!1 "File ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File ") 
(declare-const var3220!2 String)
(assert (= var3220!2 (str.++ var3220!1 "File ")))
(assert true)
(define-const var1110 String (append/-1031950772 var282 (cast-from-var1180-to-var497 var2963))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var282!1 String)
(assert (str.prefixof var282 var282!1))
(assert true)
(define-const var3691 String (append/672562846 var1110 " exists")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" exists") 
(declare-const var1110!1 String)
(assert (= var1110!1 (str.++ var1110 " exists")))
(assert true)
(define-const var1795 String (toString/-2075883882 var3691)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 (cast-from-var284-to-var3924 var1422) var1795)) ; Statement: specialinvoke r0.<java.io.IOException: void <init>(java.lang.String)>($r6) 

(declare-const var1422!1 var284)
(declare-const var1795!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1180-to-var497=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void), cast-from-var284-to-var3924=([org.apache.commons.io.FileExistsException], java.io.IOException)}
; {var284=org.apache.commons.io.FileExistsException, var1422=r0, var1180=java.io.File, var2963=r2, var3220=$r1, var282=$r3, var497=java.lang.Object, var1110=$r4, var3691=$r5, var1795=$r6, var3924=java.io.IOException}
; {org.apache.commons.io.FileExistsException=var284, r0=var1422, java.io.File=var1180, r2=var2963, $r1=var3220, $r3=var282, java.lang.Object=var497, $r4=var1110, $r5=var3691, $r6=var1795, java.io.IOException=var3924}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.FileExistsException;	r2 := @parameter0: java.io.File;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" exists");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.io.IOException: void <init>(java.lang.String)>($r6);	return
;block_num 1
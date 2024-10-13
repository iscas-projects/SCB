(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var486 0)
(declare-sort var2598 0)
(declare-sort var2176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/-748454708 (var486 var2176) Bool)
(declare-fun cast-from-String-to-var2176 (String) var2176)
(declare-const null-var486 var486)
(declare-const null-String String)
(declare-const var422 var486) ; Statement: r0 := @parameter0: java.util.Vector 
(assert (not (= var422 null-var486)))
(declare-const var1331 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1331 null-String)))
(declare-const var2816 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var2816 null-String)))
(define-const var199 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var199)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var199!1 String)
(assert (= var199!1 ""))
(assert true)
(define-const var3021 String (append/672562846 var199!1 var1331)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var199!2 String)
(assert (= var199!2 (str.++ var199!1 var1331)))
(assert true)
(define-const var2012 String (append/672562846 var3021 "=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var3021!1 String)
(assert (= var3021!1 (str.++ var3021 "=")))
(assert true)
(define-const var433 String (append/672562846 var2012 var2816)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2012!1 String)
(assert (= var2012!1 (str.++ var2012 var2816)))
(assert true)
(define-const var3939 String (toString/-2075883882 var433)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/-748454708 var422 (cast-from-String-to-var2176 var3939))) ; Statement: virtualinvoke r0.<java.util.Vector: boolean add(java.lang.Object)>($r7) 

(declare-const var422!1 var486)
(declare-const var3939!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/-748454708=([java.util.Vector, java.lang.Object], boolean), cast-from-String-to-var2176=([java.lang.String], java.lang.Object)}
; {var486=java.util.Vector, var422=r0, var1331=r2, var2598=null_type, var2816=r4, var199=$r1, var3021=$r3, var2012=$r5, var433=$r6, var3939=$r7, var2176=java.lang.Object}
; {java.util.Vector=var486, r0=var422, r2=var1331, null_type=var2598, r4=var2816, $r1=var199, $r3=var3021, $r5=var2012, $r6=var433, $r7=var3939, java.lang.Object=var2176}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Vector;	r2 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.util.Vector: boolean add(java.lang.Object)>($r7);	return
;block_num 1
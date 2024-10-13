(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2620 0)
(declare-sort var2387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2620 var2620)
(declare-const null-String String)
(declare-const var1068 var2620) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend 
(assert (not (= var1068 null-var2620)))
(declare-const var2366 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2366 null-String)))
(declare-const var1373 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1373 null-String)))
(declare-const var3528 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3528 null-String)))
(define-const var1947 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1947)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1947!1 String)
(assert (= var1947!1 ""))
(assert true)
(define-const var2097 String (append/672562846 var1947!1 var1373)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1947!2 String)
(assert (= var1947!2 (str.++ var1947!1 var1373)))
(assert true)
(define-const var3499 String (append/672562846 var2097 var3528)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2097!1 String)
(assert (= var2097!1 (str.++ var2097 var3528)))
(assert true)
(define-const var939 String (toString/-2075883882 var3499)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var686 Bool (= var939 var2366)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2620=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend, var1068=r7, var2366=r5, var2387=null_type, var1373=r1, var3528=r2, var1947=$r0, var2097=$r3, var3499=$r4, var939=$r6, var686=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend=var2620, r7=var1068, r5=var2366, null_type=var2387, r1=var1373, r2=var3528, $r0=var1947, $r3=var2097, $r4=var3499, $r6=var939, $z0=var686}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend;	r5 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5);	return $z0
;block_num 1
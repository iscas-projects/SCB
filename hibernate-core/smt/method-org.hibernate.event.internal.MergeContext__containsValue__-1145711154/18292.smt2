(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2979 0)
(declare-sort var3529 0)
(declare-sort var3127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3127-init () var3127)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3529) ClassObject)
(declare-fun cast-from-var2979-to-var3529 (var2979) var3529)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1862440627 (var3127 String) void)
(declare-const null-var2979 var2979)
(declare-const null-var3529 var3529)
(declare-const var3203 var2979) ; Statement: r1 := @this: org.hibernate.event.internal.MergeContext 
(assert (not (= var3203 null-var2979)))
(declare-const var3014 var3529) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3014 null-var3529)))
 ; Statement: if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map managedToMergeEntityXref> 
(assert (not (not (= var3014 null-var3529)))) ; Negate: Cond: r0 != null  
(define-const var1686 var3127 var3127-init) ; Statement: $r3 = new java.lang.NullPointerException 
(define-const var1442 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1442)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1442!1 String)
(assert (= var1442!1 ""))
(assert true)
(define-const var1882 String (append/672562846 var1442!1 "null copies are not supported by ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null copies are not supported by ") 
(declare-const var1442!2 String)
(assert (= var1442!2 (str.++ var1442!1 "null copies are not supported by ")))
(assert true)
(define-const var1351 ClassObject (getClass/1258963082 (cast-from-var2979-to-var3529 var3203))) ; Statement: $r5 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var500 String (getName/-1958580599 var1351)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1322 String (append/672562846 var1882 var500)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1882!1 String)
(assert (= var1882!1 (str.++ var1882 var500)))
(assert true)
(define-const var3839 String (toString/-2075883882 var1322)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1862440627 var1686 var3839)) ; Statement: specialinvoke $r3.<java.lang.NullPointerException: void <init>(java.lang.String)>($r9) 

(declare-const var1686!1 var3127)
(declare-const var3839!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3127-init=([], java.lang.NullPointerException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2979-to-var3529=([org.hibernate.event.internal.MergeContext], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1862440627=([java.lang.NullPointerException, java.lang.String], void)}
; {var2979=org.hibernate.event.internal.MergeContext, var3203=r1, var3529=java.lang.Object, var3014=r0, var3127=java.lang.NullPointerException, var1686=$r3, var1442=$r4, var1882=$r7, var1351=$r5, var500=$r6, var1322=$r8, var3839=$r9}
; {org.hibernate.event.internal.MergeContext=var2979, r1=var3203, java.lang.Object=var3529, r0=var3014, java.lang.NullPointerException=var3127, $r3=var1686, $r4=var1442, $r7=var1882, $r5=var1351, $r6=var500, $r8=var1322, $r9=var3839}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.event.internal.MergeContext;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map managedToMergeEntityXref>;	$r3 = new java.lang.NullPointerException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null copies are not supported by ");	$r5 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.NullPointerException: void <init>(java.lang.String)>($r9);	throw $r3
;block_num 2
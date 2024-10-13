(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3763 0)
(declare-sort var120 0)
(declare-sort var3063 0)
(declare-sort var3027 0)
(declare-sort var2871 0)
(declare-sort var3886 0)
(declare-sort var3194 0)
(declare-sort var3686 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var120) void)
(declare-fun cast-from-var3763-to-var120 (var3763) var120)
(declare-fun classNames/-1914000041 (var3763) var3063)
(declare-fun var3027-init () var3027)
(declare-fun <init>/-1913910780 (var3027) void)
(declare-fun providers/-1914000041 (var3763) var3027)
(declare-fun var3886-init () var3886)
(declare-fun <init>/1912810972 (var3886 var3194) void)
(declare-fun loader/-1914000041 (var3763) var3886)
(declare-fun serviceClass/-1914000041 (var3763) ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getResources/2099495376 (var3886 String) var3063)
(declare-fun configFiles/-1914000041 (var3763) var3063)
(declare-const null-var3763 var3763)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3063 var3063)
(declare-const null-var2871 var2871)
(declare-const null-NullType var3686)
(declare-const null-var3194 var3194)
(declare-const var1160 var3763) ; Statement: r0 := @this: org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service 
(assert (not (= var1160 null-var3763)))
(declare-const var3044 ClassObject) ; Statement: r3 := @parameter0: java.lang.Class 
(assert (not (= var3044 null-ClassObject)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3763-to-var120 var1160))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1160!1 var3763)
(declare-const var1160!2 var3763)
(assert (not (= var1160!2 null-var3763)))
(assert (= (classNames/-1914000041 var1160!2) null-var3063)) ; Statement: r0.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service: java.util.Enumeration classNames> = null 
(define-const var2212 var3027 var3027-init) ; Statement: $r1 = new java.util.Vector 
(assert true)
;(assert (<init>/-1913910780 var2212)) ; Statement: specialinvoke $r1.<java.util.Vector: void <init>()>() 

(declare-const var2212!1 var3027)
(declare-const var1160!3 var3763)
(assert (not (= var1160!3 null-var3763)))
(assert (= (providers/-1914000041 var1160!3) var2212!1)) ; Statement: r0.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service: java.util.Vector providers> = $r1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var879 var2871) ; Statement: $r11 := @caughtexception 
(assert (not (= var879 null-var2871)))
(define-const var509 var3886 var3886-init) ; Statement: $r12 = new org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader 
(assert true)
;(assert (<init>/1912810972 var509 null-var3194)) ; Statement: specialinvoke $r12.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader: void <init>(org.relaxng.datatype.helpers.DatatypeLibraryLoader$1)>(null) 

(declare-const var509!1 var3886)
(declare-const var618 var3686)
(declare-const var1160!4 var3763)
(assert (not (= var1160!4 null-var3763)))
(assert (= (loader/-1914000041 var1160!4) var509!1)) ; Statement: r0.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service: org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader loader> = $r12 
(assert true) ; Non Conditional
(declare-const var1160!5 var3763)
(assert (not (= var1160!5 null-var3763)))
(assert (= (serviceClass/-1914000041 var1160!5) var3044)) ; Statement: r0.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service: java.lang.Class serviceClass> = r3 
(define-const var2444 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2444)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2444!1 String)
(assert (= var2444!1 ""))
(assert true)
(define-const var1270 String (append/672562846 var2444!1 "META-INF/services/")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("META-INF/services/") 
(declare-const var2444!2 String)
(assert (= var2444!2 (str.++ var2444!1 "META-INF/services/")))
(define-const var3760 ClassObject (serviceClass/-1914000041 var1160!5)) ; Statement: $r5 = r0.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service: java.lang.Class serviceClass> 
(assert true)
(define-const var1959 String (getName/-1958580599 var3760)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var139 String (append/672562846 var1270 var1959)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1270!1 String)
(assert (= var1270!1 (str.++ var1270 var1959)))
(assert true)
(define-const var1739 String (toString/-2075883882 var139)) ; Statement: $r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var617 var3886 (loader/-1914000041 var1160!5)) ; Statement: $r9 = r0.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service: org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader loader> 
(assert true)
(define-const var2570 var3063 (getResources/2099495376 var617 var1739)) ; Statement: $r10 = virtualinvoke $r9.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader: java.util.Enumeration getResources(java.lang.String)>($r13) 
(declare-const var1160!6 var3763)
(assert (not (= var1160!6 null-var3763)))
(assert (= (configFiles/-1914000041 var1160!6) var2570)) ; Statement: r0.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service: java.util.Enumeration configFiles> = $r10 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3763-to-var120=([org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service], java.lang.Object), classNames/-1914000041=([org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service], java.util.Enumeration), var3027-init=([], java.util.Vector), <init>/-1913910780=([java.util.Vector], void), providers/-1914000041=([org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service], java.util.Vector), var3886-init=([], org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader), <init>/1912810972=([org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader, org.relaxng.datatype.helpers.DatatypeLibraryLoader$1], void), loader/-1914000041=([org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service], org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader), serviceClass/-1914000041=([org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service], java.lang.Class), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getResources/2099495376=([org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader, java.lang.String], java.util.Enumeration), configFiles/-1914000041=([org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service], java.util.Enumeration)}
; {var3763=org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service, var1160=r0, var3044=r3, var120=java.lang.Object, var3063=java.util.Enumeration, var3027=java.util.Vector, var2212=$r1, var2871=java.lang.NoSuchMethodError, var879=$r11, var3886=org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader, var509=$r12, var3194=org.relaxng.datatype.helpers.DatatypeLibraryLoader$1, var618=null, var3686=null_type, var2444=$r4, var1270=$r7, var3760=$r5, var1959=$r6, var139=$r8, var1739=$r13, var617=$r9, var2570=$r10}
; {org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service=var3763, r0=var1160, r3=var3044, java.lang.Object=var120, java.util.Enumeration=var3063, java.util.Vector=var3027, $r1=var2212, java.lang.NoSuchMethodError=var2871, $r11=var879, org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader=var3886, $r12=var509, org.relaxng.datatype.helpers.DatatypeLibraryLoader$1=var3194, null=var618, null_type=var3686, $r4=var2444, $r7=var1270, $r5=var3760, $r6=var1959, $r8=var139, $r13=var1739, $r9=var617, $r10=var2570}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service;	r3 := @parameter0: java.lang.Class;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service: java.util.Enumeration classNames> = null;	$r1 = new java.util.Vector;	specialinvoke $r1.<java.util.Vector: void <init>()>();	r0.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service: java.util.Vector providers> = $r1;	$r11 := @caughtexception;	$r12 = new org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader;	specialinvoke $r12.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader: void <init>(org.relaxng.datatype.helpers.DatatypeLibraryLoader$1)>(null);	r0.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service: org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader loader> = $r12;	r0.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service: java.lang.Class serviceClass> = r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("META-INF/services/");	$r5 = r0.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service: java.lang.Class serviceClass>;	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = r0.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service: org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader loader>;	$r10 = virtualinvoke $r9.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service$Loader: java.util.Enumeration getResources(java.lang.String)>($r13);	r0.<org.relaxng.datatype.helpers.DatatypeLibraryLoader$Service: java.util.Enumeration configFiles> = $r10;	return
;block_num 3
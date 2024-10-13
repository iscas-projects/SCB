(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var374 0)
(declare-sort var3327 0)
(declare-sort var2211 0)
(declare-sort var2980 0)
(declare-sort var1792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3327!class ClassObject)
(declare-fun getPackage/-1841711535 (ClassObject) var2211)
(declare-fun var2980_getInternalName/1276263330 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var374_iterator/-912451715 (var374) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun length/-171891354 (String) Int)
(declare-fun var1792_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-ClassObject ClassObject)
(declare-const null-var374 var374)
(declare-const var3224 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3224 null-ClassObject)))
(declare-const var294 var374) ; Statement: r1 := @parameter1: java.util.List 
(assert (not (= var294 null-var374)))
 ; Statement: if r0 != class "Ljava/lang/Object;" goto $r11 = r0 
(assert (not (= var3224 var3327!class))) ; Cond: r0 != class "Ljava/lang/Object;" 
(define-const var1668 ClassObject var3224) ; Statement: $r11 = r0 
(assert true) ; Non Conditional
(assert true)
(define-const var446 var2211 (getPackage/-1841711535 var1668)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Class: java.lang.Package getPackage()>() 
(define-const var1472 String (var2980_getInternalName/1276263330 var1668)) ; Statement: $r13 = staticinvoke <jdk.internal.org.objectweb.asm.Type: java.lang.String getInternalName(java.lang.Class)>($r11) 
(define-const var437 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var437)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var437!1 String)
(assert (= var437!1 ""))
(assert true)
(define-const var3870 Bool (startsWith/-1785782452 var1472 "java/")) ; Statement: $z3 = virtualinvoke $r13.<java.lang.String: boolean startsWith(java.lang.String)>("java/") 
 ; Statement: if $z3 != 0 goto $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jdk/nashorn/javaadapters/") 
(assert (not (= (ite var3870 1 0) 0))) ; Cond: $z3 != 0 
(assert true)
(define-const var1684 String (append/672562846 var437!1 "jdk/nashorn/javaadapters/")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jdk/nashorn/javaadapters/") 
(declare-const var437!2 String)
(assert (= var437!2 (str.++ var437!1 "jdk/nashorn/javaadapters/")))
(assert true)
;(assert (append/672562846 var1684 var1472)) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1684!1 String)
(assert (= var1684!1 (str.++ var1684 var1472)))
 ; Statement: goto [?= $r9 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>()] 
(assert true) ; Non Conditional
(define-const var2387 Iterator (var374_iterator/-912451715 var294)) ; Statement: $r9 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: if r0 != class "Ljava/lang/Object;" goto $z4 = interfaceinvoke $r9.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= var3224 var3327!class))) ; Cond: r0 != class "Ljava/lang/Object;" 
(define-const var2028 Bool (Iterator_hasNext/-1669924200 var2387)) ; Statement: $z4 = interfaceinvoke $r9.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z4 == 0 goto $r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2028 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var3623 String (toString/-2075883882 var437!2)) ; Statement: $r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1478 Int (length/-171891354 var437!2)) ; Statement: $i0 = virtualinvoke $r14.<java.lang.StringBuilder: int length()>() 
(define-const var39 Int (var1792_min/-1112089438 255 var1478)) ; Statement: $i1 = staticinvoke <java.lang.Math: int min(int,int)>(255, $i0) 
(assert (not (and true (and (>= 0 0) (>= (str.len var3623) var39) (>= var39 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getPackage/-1841711535=([java.lang.Class], java.lang.Package), var2980_getInternalName/1276263330=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var374_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-171891354=([java.lang.StringBuilder], int), var1792_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3224=r0, var374=java.util.List, var294=r1, var3327=java.lang.Object, var1668=$r11, var2211=java.lang.Package, var446=$r12, var2980=jdk.internal.org.objectweb.asm.Type, var1472=$r13, var437=$r14, var3870=$z3, var1684=$r15, var2387=$r9, var2028=$z4, var3623=$r2, var1478=$i0, var1792=java.lang.Math, var39=$i1, var2001=$r3}
; {r0=var3224, java.util.List=var374, r1=var294, java.lang.Object=var3327, $r11=var1668, java.lang.Package=var2211, $r12=var446, jdk.internal.org.objectweb.asm.Type=var2980, $r13=var1472, $r14=var437, $z3=var3870, $r15=var1684, $r9=var2387, $z4=var2028, $r2=var3623, $i0=var1478, java.lang.Math=var1792, $i1=var39, $r3=var2001}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.util.List;	if r0 != class "Ljava/lang/Object;" goto $r11 = r0;	$r11 = r0;	$r12 = virtualinvoke $r11.<java.lang.Class: java.lang.Package getPackage()>();	$r13 = staticinvoke <jdk.internal.org.objectweb.asm.Type: java.lang.String getInternalName(java.lang.Class)>($r11);	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$z3 = virtualinvoke $r13.<java.lang.String: boolean startsWith(java.lang.String)>("java/");	if $z3 != 0 goto $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jdk/nashorn/javaadapters/");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jdk/nashorn/javaadapters/");	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	goto [?= $r9 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>()];	$r9 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	if r0 != class "Ljava/lang/Object;" goto $z4 = interfaceinvoke $r9.<java.util.Iterator: boolean hasNext()>();	$z4 = interfaceinvoke $r9.<java.util.Iterator: boolean hasNext()>();	if $z4 == 0 goto $r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$i0 = virtualinvoke $r14.<java.lang.StringBuilder: int length()>();	$i1 = staticinvoke <java.lang.Math: int min(int,int)>(255, $i0);	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	return $r3
;block_num 7
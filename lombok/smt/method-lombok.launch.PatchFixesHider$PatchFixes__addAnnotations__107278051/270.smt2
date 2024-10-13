(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2909 0)
(declare-sort var1763 0)
(declare-sort var2017 0)
(declare-sort var2794 0)
(declare-sort var2738 0)
(declare-sort var3905 0)
(declare-sort var1735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2909_iterator/-912451715 (var2909) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1763)
(declare-fun cast-from-var1763-to-var2017 (var1763) var2017)
(declare-fun var2794-init () var2794)
(declare-fun <init>/-325640736 (var2794) void)
(declare-fun isSingleMemberAnnotation/-766324261 (var2017) Bool)
(declare-fun cast-from-var2017-to-var2738 (var2017) var2738)
(declare-fun getValue/-696668769 (var2738) var3905)
(declare-fun toString/633042702 (var3905) String)
(declare-fun var2909_add/328494887 (var2909 var1763) Bool)
(declare-fun cast-from-var2794-to-var2909 (var2794) var2909)
(declare-fun cast-from-String-to-var1763 (String) var1763)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTypeName/-1187208720 (var2017) var1735)
(declare-fun getFullyQualifiedName/66504474 (var1735) String)
(declare-fun var2909_isEmpty/-153543822 (var2909) Bool)
(declare-const null-var2909 var2909)
(declare-const null-String String)
(declare-const var3928 var2909) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3928 null-var2909)))
(declare-const var3930 String) ; Statement: r5 := @parameter1: java.lang.StringBuilder 
(assert (not (= var3930 null-String)))
(define-const var92 Iterator (var2909_iterator/-912451715 var3928)) ; Statement: r1 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z6 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3439 Bool (Iterator_hasNext/-1669924200 var92)) ; Statement: $z6 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z6 != 0 goto $r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var3439 1 0) 0))) ; Cond: $z6 != 0 
(define-const var3257 var1763 (Iterator_next/-1124697587 var92)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var92!1 Iterator)
(define-const var2029 var2017 (cast-from-var1763-to-var2017 var3257)) ; Statement: r3 = (org.eclipse.jdt.core.dom.Annotation) $r2 
(define-const var3044 var2794 var2794-init) ; Statement: $r4 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3044)) ; Statement: specialinvoke $r4.<java.util.ArrayList: void <init>()>() 

(declare-const var3044!1 var2794)
(assert true)
(define-const var622 Bool (isSingleMemberAnnotation/-766324261 var2029)) ; Statement: $z0 = virtualinvoke r3.<org.eclipse.jdt.core.dom.Annotation: boolean isSingleMemberAnnotation()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r3.<org.eclipse.jdt.core.dom.Annotation: boolean isNormalAnnotation()>() 
(assert (not (= (ite var622 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1551 var2738 (cast-from-var2017-to-var2738 var2029)) ; Statement: r13 = (org.eclipse.jdt.core.dom.SingleMemberAnnotation) r3 
(assert true)
(define-const var1123 var3905 (getValue/-696668769 var1551)) ; Statement: $r11 = virtualinvoke r13.<org.eclipse.jdt.core.dom.SingleMemberAnnotation: org.eclipse.jdt.core.dom.Expression getValue()>() 
(assert true)
(define-const var3030 String (toString/633042702 var1123)) ; Statement: $r12 = virtualinvoke $r11.<org.eclipse.jdt.core.dom.Expression: java.lang.String toString()>() 
;(assert (var2909_add/328494887 (cast-from-var2794-to-var2909 var3044!1) (cast-from-String-to-var1763 var3030))) ; Statement: interfaceinvoke $r4.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var3044!2 var2794)
(declare-const var3030!1 String)
 ; Statement: goto [?= $r17 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@")] 
(assert true) ; Non Conditional
(assert true)
(define-const var169 String (append/672562846 var3930 "@")) ; Statement: $r17 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(declare-const var3930!1 String)
(assert (= var3930!1 (str.++ var3930 "@")))
(assert true)
(define-const var1826 var1735 (getTypeName/-1187208720 var2029)) ; Statement: $r18 = virtualinvoke r3.<org.eclipse.jdt.core.dom.Annotation: org.eclipse.jdt.core.dom.Name getTypeName()>() 
(assert true)
(define-const var2440 String (getFullyQualifiedName/66504474 var1826)) ; Statement: $r19 = virtualinvoke $r18.<org.eclipse.jdt.core.dom.Name: java.lang.String getFullyQualifiedName()>() 
(assert true)
;(assert (append/672562846 var169 var2440)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var169!1 String)
(assert (= var169!1 (str.++ var169 var2440)))
(define-const var2128 Bool (var2909_isEmpty/-153543822 (cast-from-var2794-to-var2909 var3044!2))) ; Statement: $z3 = interfaceinvoke $r4.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z3 != 0 goto virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(assert (not (= (ite var2128 1 0) 0))) ; Cond: $z3 != 0 
(assert true)
;(assert (append/672562846 var3930!1 " ")) ; Statement: virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3930!2 String)
(assert (= var3930!2 (str.++ var3930!1 " ")))
(assert true) ; Non Conditional
(define-const var3439!1 Bool (Iterator_hasNext/-1669924200 var92!1)) ; Statement: $z6 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z6 != 0 goto $r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var3439!1 1 0) 0)))) ; Negate: Cond: $z6 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2909_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1763-to-var2017=([java.lang.Object], org.eclipse.jdt.core.dom.Annotation), var2794-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), isSingleMemberAnnotation/-766324261=([org.eclipse.jdt.core.dom.Annotation], boolean), cast-from-var2017-to-var2738=([org.eclipse.jdt.core.dom.Annotation], org.eclipse.jdt.core.dom.SingleMemberAnnotation), getValue/-696668769=([org.eclipse.jdt.core.dom.SingleMemberAnnotation], org.eclipse.jdt.core.dom.Expression), toString/633042702=([org.eclipse.jdt.core.dom.Expression], java.lang.String), var2909_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var2794-to-var2909=([java.util.ArrayList], java.util.List), cast-from-String-to-var1763=([java.lang.String], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTypeName/-1187208720=([org.eclipse.jdt.core.dom.Annotation], org.eclipse.jdt.core.dom.Name), getFullyQualifiedName/66504474=([org.eclipse.jdt.core.dom.Name], java.lang.String), var2909_isEmpty/-153543822=([java.util.List], boolean)}
; {var2909=java.util.List, var3928=r0, var3930=r5, var92=r1, var3439=$z6, var1763=java.lang.Object, var3257=$r2, var2017=org.eclipse.jdt.core.dom.Annotation, var2029=r3, var2794=java.util.ArrayList, var3044=$r4, var622=$z0, var2738=org.eclipse.jdt.core.dom.SingleMemberAnnotation, var1551=r13, var3905=org.eclipse.jdt.core.dom.Expression, var1123=$r11, var3030=$r12, var169=$r17, var1735=org.eclipse.jdt.core.dom.Name, var1826=$r18, var2440=$r19, var2128=$z3}
; {java.util.List=var2909, r0=var3928, r5=var3930, r1=var92, $z6=var3439, java.lang.Object=var1763, $r2=var3257, org.eclipse.jdt.core.dom.Annotation=var2017, r3=var2029, java.util.ArrayList=var2794, $r4=var3044, $z0=var622, org.eclipse.jdt.core.dom.SingleMemberAnnotation=var2738, r13=var1551, org.eclipse.jdt.core.dom.Expression=var3905, $r11=var1123, $r12=var3030, $r17=var169, org.eclipse.jdt.core.dom.Name=var1735, $r18=var1826, $r19=var2440, $z3=var2128}
;seq <org.eclipse.jdt.core.dom.Expression: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r0 := @parameter0: java.util.List;	r5 := @parameter1: java.lang.StringBuilder;	r1 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z6 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>()];	$z6 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z6 != 0 goto $r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>();	$r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>();	r3 = (org.eclipse.jdt.core.dom.Annotation) $r2;	$r4 = new java.util.ArrayList;	specialinvoke $r4.<java.util.ArrayList: void <init>()>();	$z0 = virtualinvoke r3.<org.eclipse.jdt.core.dom.Annotation: boolean isSingleMemberAnnotation()>();	if $z0 == 0 goto $z1 = virtualinvoke r3.<org.eclipse.jdt.core.dom.Annotation: boolean isNormalAnnotation()>();	r13 = (org.eclipse.jdt.core.dom.SingleMemberAnnotation) r3;	$r11 = virtualinvoke r13.<org.eclipse.jdt.core.dom.SingleMemberAnnotation: org.eclipse.jdt.core.dom.Expression getValue()>();	$r12 = virtualinvoke $r11.<org.eclipse.jdt.core.dom.Expression: java.lang.String toString()>();	interfaceinvoke $r4.<java.util.List: boolean add(java.lang.Object)>($r12);	goto [?= $r17 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@")];	$r17 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$r18 = virtualinvoke r3.<org.eclipse.jdt.core.dom.Annotation: org.eclipse.jdt.core.dom.Name getTypeName()>();	$r19 = virtualinvoke $r18.<org.eclipse.jdt.core.dom.Name: java.lang.String getFullyQualifiedName()>();	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$z3 = interfaceinvoke $r4.<java.util.List: boolean isEmpty()>();	if $z3 != 0 goto virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$z6 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z6 != 0 goto $r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>();	return
;block_num 8
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2573 0)
(declare-sort var2576 0)
(declare-sort var3275 0)
(declare-sort var27 0)
(declare-sort var3111 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2573_iterator/-912451715 (var2573) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2576)
(declare-fun cast-from-var2576-to-var3275 (var2576) var3275)
(declare-fun var27-init () var27)
(declare-fun <init>/-325640736 (var27) void)
(declare-fun isSingleMemberAnnotation/-766324261 (var3275) Bool)
(declare-fun isNormalAnnotation/2036290902 (var3275) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTypeName/-1187208720 (var3275) var3111)
(declare-fun getFullyQualifiedName/66504474 (var3111) String)
(declare-fun var2573_isEmpty/-153543822 (var2573) Bool)
(declare-fun cast-from-var27-to-var2573 (var27) var2573)
(declare-const null-var2573 var2573)
(declare-const null-String String)
(declare-const var1528 var2573) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var1528 null-var2573)))
(declare-const var351 String) ; Statement: r5 := @parameter1: java.lang.StringBuilder 
(assert (not (= var351 null-String)))
(define-const var1180 Iterator (var2573_iterator/-912451715 var1528)) ; Statement: r1 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z6 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1112 Bool (Iterator_hasNext/-1669924200 var1180)) ; Statement: $z6 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z6 != 0 goto $r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var1112 1 0) 0))) ; Cond: $z6 != 0 
(define-const var2653 var2576 (Iterator_next/-1124697587 var1180)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1180!1 Iterator)
(define-const var3651 var3275 (cast-from-var2576-to-var3275 var2653)) ; Statement: r3 = (org.eclipse.jdt.core.dom.Annotation) $r2 
(define-const var156 var27 var27-init) ; Statement: $r4 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var156)) ; Statement: specialinvoke $r4.<java.util.ArrayList: void <init>()>() 

(declare-const var156!1 var27)
(assert true)
(define-const var3532 Bool (isSingleMemberAnnotation/-766324261 var3651)) ; Statement: $z0 = virtualinvoke r3.<org.eclipse.jdt.core.dom.Annotation: boolean isSingleMemberAnnotation()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r3.<org.eclipse.jdt.core.dom.Annotation: boolean isNormalAnnotation()>() 
(assert (= (ite var3532 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2699 Bool (isNormalAnnotation/2036290902 var3651)) ; Statement: $z1 = virtualinvoke r3.<org.eclipse.jdt.core.dom.Annotation: boolean isNormalAnnotation()>() 
 ; Statement: if $z1 == 0 goto $r17 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(assert (= (ite var2699 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1571 String (append/672562846 var351 "@")) ; Statement: $r17 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(declare-const var351!1 String)
(assert (= var351!1 (str.++ var351 "@")))
(assert true)
(define-const var2971 var3111 (getTypeName/-1187208720 var3651)) ; Statement: $r18 = virtualinvoke r3.<org.eclipse.jdt.core.dom.Annotation: org.eclipse.jdt.core.dom.Name getTypeName()>() 
(assert true)
(define-const var2898 String (getFullyQualifiedName/66504474 var2971)) ; Statement: $r19 = virtualinvoke $r18.<org.eclipse.jdt.core.dom.Name: java.lang.String getFullyQualifiedName()>() 
(assert true)
;(assert (append/672562846 var1571 var2898)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1571!1 String)
(assert (= var1571!1 (str.++ var1571 var2898)))
(define-const var1015 Bool (var2573_isEmpty/-153543822 (cast-from-var27-to-var2573 var156!1))) ; Statement: $z3 = interfaceinvoke $r4.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z3 != 0 goto virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(assert (not (= (ite var1015 1 0) 0))) ; Cond: $z3 != 0 
(assert true)
;(assert (append/672562846 var351!1 " ")) ; Statement: virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var351!2 String)
(assert (= var351!2 (str.++ var351!1 " ")))
(assert true) ; Non Conditional
(define-const var1112!1 Bool (Iterator_hasNext/-1669924200 var1180!1)) ; Statement: $z6 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z6 != 0 goto $r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var1112!1 1 0) 0)))) ; Negate: Cond: $z6 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2573_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2576-to-var3275=([java.lang.Object], org.eclipse.jdt.core.dom.Annotation), var27-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), isSingleMemberAnnotation/-766324261=([org.eclipse.jdt.core.dom.Annotation], boolean), isNormalAnnotation/2036290902=([org.eclipse.jdt.core.dom.Annotation], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTypeName/-1187208720=([org.eclipse.jdt.core.dom.Annotation], org.eclipse.jdt.core.dom.Name), getFullyQualifiedName/66504474=([org.eclipse.jdt.core.dom.Name], java.lang.String), var2573_isEmpty/-153543822=([java.util.List], boolean), cast-from-var27-to-var2573=([java.util.ArrayList], java.util.List)}
; {var2573=java.util.List, var1528=r0, var351=r5, var1180=r1, var1112=$z6, var2576=java.lang.Object, var2653=$r2, var3275=org.eclipse.jdt.core.dom.Annotation, var3651=r3, var27=java.util.ArrayList, var156=$r4, var3532=$z0, var2699=$z1, var1571=$r17, var3111=org.eclipse.jdt.core.dom.Name, var2971=$r18, var2898=$r19, var1015=$z3}
; {java.util.List=var2573, r0=var1528, r5=var351, r1=var1180, $z6=var1112, java.lang.Object=var2576, $r2=var2653, org.eclipse.jdt.core.dom.Annotation=var3275, r3=var3651, java.util.ArrayList=var27, $r4=var156, $z0=var3532, $z1=var2699, $r17=var1571, org.eclipse.jdt.core.dom.Name=var3111, $r18=var2971, $r19=var2898, $z3=var1015}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r0 := @parameter0: java.util.List;	r5 := @parameter1: java.lang.StringBuilder;	r1 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z6 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>()];	$z6 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z6 != 0 goto $r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>();	$r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>();	r3 = (org.eclipse.jdt.core.dom.Annotation) $r2;	$r4 = new java.util.ArrayList;	specialinvoke $r4.<java.util.ArrayList: void <init>()>();	$z0 = virtualinvoke r3.<org.eclipse.jdt.core.dom.Annotation: boolean isSingleMemberAnnotation()>();	if $z0 == 0 goto $z1 = virtualinvoke r3.<org.eclipse.jdt.core.dom.Annotation: boolean isNormalAnnotation()>();	$z1 = virtualinvoke r3.<org.eclipse.jdt.core.dom.Annotation: boolean isNormalAnnotation()>();	if $z1 == 0 goto $r17 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$r17 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$r18 = virtualinvoke r3.<org.eclipse.jdt.core.dom.Annotation: org.eclipse.jdt.core.dom.Name getTypeName()>();	$r19 = virtualinvoke $r18.<org.eclipse.jdt.core.dom.Name: java.lang.String getFullyQualifiedName()>();	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$z3 = interfaceinvoke $r4.<java.util.List: boolean isEmpty()>();	if $z3 != 0 goto virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$z6 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z6 != 0 goto $r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>();	return
;block_num 8
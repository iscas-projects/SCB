(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2284 0)
(declare-sort var827 0)
(declare-sort var1274 0)
(declare-sort var2587 0)
(declare-sort var3867 0)
(declare-sort var472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2587!class ClassObject)
(declare-const var3867!class ClassObject)
(declare-const var472!class ClassObject)
(declare-fun var827-init () var827)
(declare-fun arr-var1274-init () (Array Int var1274))
(declare-fun safeCollectionRole/865872709 (var2284) String)
(declare-fun cast-from-String-to-var1274 (String) var1274)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun String_format/1339386452 (String (Array Int var1274)) String)
(declare-fun <init>/609117640 (var827 String) void)
(declare-const null-var2284 var2284)
(declare-const null-__Array__Int__var1274__ (Array Int var1274))
(declare-const var2963 var2284) ; Statement: r2 := @this: org.hibernate.cfg.annotations.CollectionBinder 
(assert (not (= var2963 null-var2284)))
(define-const var3421 var827 var827-init) ; Statement: $r0 = new org.hibernate.AnnotationException 
(define-const var2542 (Array Int var1274) arr-var1274-init) ; Statement: $r1 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var255 String (safeCollectionRole/865872709 var2963)) ; Statement: $r3 = specialinvoke r2.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String safeCollectionRole()>() 
(declare-const var2542!1 (Array Int var1274))
(assert (not (= var2542!1 null-__Array__Int__var1274__)))
(assert (= (select var2542!1 0) (cast-from-String-to-var1274 var255))) ; Statement: $r1[0] = $r3 
(define-const var2669 ClassObject var2587!class) ; Statement: $r4 = class "Lorg/hibernate/annotations/Sort;" 
(assert true)
(define-const var3918 String (getName/-1958580599 var2669)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2542!2 (Array Int var1274))
(assert (not (= var2542!2 null-__Array__Int__var1274__)))
(assert (= (select var2542!2 1) (cast-from-String-to-var1274 var3918))) ; Statement: $r1[1] = $r5 
(define-const var2808 ClassObject var3867!class) ; Statement: $r6 = class "Lorg/hibernate/annotations/SortNatural;" 
(assert true)
(define-const var2051 String (getName/-1958580599 var2808)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2542!3 (Array Int var1274))
(assert (not (= var2542!3 null-__Array__Int__var1274__)))
(assert (= (select var2542!3 2) (cast-from-String-to-var1274 var2051))) ; Statement: $r1[2] = $r7 
(define-const var122 ClassObject var472!class) ; Statement: $r8 = class "Lorg/hibernate/annotations/SortComparator;" 
(assert true)
(define-const var2766 String (getName/-1958580599 var122)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2542!4 (Array Int var1274))
(assert (not (= var2542!4 null-__Array__Int__var1274__)))
(assert (= (select var2542!4 3) (cast-from-String-to-var1274 var2766))) ; Statement: $r1[3] = $r9 
(define-const var2508 String (String_format/1339386452 "Illegal combination of annotations on %s.  Only one of @%s, @%s and @%s can be used" var2542!4)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Illegal combination of annotations on %s.  Only one of @%s, @%s and @%s can be used", $r1) 
(assert true)
;(assert (<init>/609117640 var3421 var2508)) ; Statement: specialinvoke $r0.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r10) 

(declare-const var3421!1 var827)
(declare-const var2508!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var827-init=([], org.hibernate.AnnotationException), arr-var1274-init=([], java.lang.Object[]), safeCollectionRole/865872709=([org.hibernate.cfg.annotations.CollectionBinder], java.lang.String), cast-from-String-to-var1274=([java.lang.String], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void)}
; {var2284=org.hibernate.cfg.annotations.CollectionBinder, var2963=r2, var827=org.hibernate.AnnotationException, var3421=$r0, var1274=java.lang.Object, var2542=$r1, var255=$r3, var2587=org.hibernate.annotations.Sort, var2669=$r4, var3918=$r5, var3867=org.hibernate.annotations.SortNatural, var2808=$r6, var2051=$r7, var472=org.hibernate.annotations.SortComparator, var122=$r8, var2766=$r9, var2508=$r10}
; {org.hibernate.cfg.annotations.CollectionBinder=var2284, r2=var2963, org.hibernate.AnnotationException=var827, $r0=var3421, java.lang.Object=var1274, $r1=var2542, $r3=var255, org.hibernate.annotations.Sort=var2587, $r4=var2669, $r5=var3918, org.hibernate.annotations.SortNatural=var3867, $r6=var2808, $r7=var2051, org.hibernate.annotations.SortComparator=var472, $r8=var122, $r9=var2766, $r10=var2508}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: org.hibernate.cfg.annotations.CollectionBinder;	$r0 = new org.hibernate.AnnotationException;	$r1 = newarray (java.lang.Object)[4];	$r3 = specialinvoke r2.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String safeCollectionRole()>();	$r1[0] = $r3;	$r4 = class "Lorg/hibernate/annotations/Sort;";	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r1[1] = $r5;	$r6 = class "Lorg/hibernate/annotations/SortNatural;";	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r1[2] = $r7;	$r8 = class "Lorg/hibernate/annotations/SortComparator;";	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r1[3] = $r9;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Illegal combination of annotations on %s.  Only one of @%s, @%s and @%s can be used", $r1);	specialinvoke $r0.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r10);	return $r0
;block_num 1
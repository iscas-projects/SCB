(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3746 0)
(declare-sort var2482 0)
(declare-sort var3 0)
(declare-sort var716 0)
(declare-sort var909 0)
(declare-sort var3125 0)
(declare-sort var1878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hintsMap/1454767496 (var3746) var3)
(declare-fun var3_get/1088891777 (var3 var716) var716)
(declare-fun cast-from-String-to-var716 (String) var716)
(declare-fun cast-from-var716-to-String (var716) String)
(declare-fun var3125-init () var3125)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1911126280 (var3125 String var1878) void)
(declare-fun cast-from-var909-to-var1878 (var909) var1878)
(declare-fun cast-from-var3125-to-var1878 (var3125) var1878)
(declare-const null-var3746 var3746)
(declare-const null-String String)
(declare-const null-var909 var909)
(declare-const var3083 var3746) ; Statement: r0 := @this: org.hibernate.cfg.annotations.QueryHintDefinition 
(assert (not (= var3083 null-var3746)))
(declare-const var1566 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var1566 null-String)))
(declare-const var1759 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1759 null-String)))
(define-const var3832 var3 (hintsMap/1454767496 var3083)) ; Statement: $r2 = r0.<org.hibernate.cfg.annotations.QueryHintDefinition: java.util.Map hintsMap> 
(define-const var3512 var716 (var3_get/1088891777 var3832 (cast-from-String-to-var716 var1759))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3719 String (cast-from-var716-to-String var3512)) ; Statement: r4 = (java.lang.String) $r3 
 ; Statement: if r4 != null goto $r5 = staticinvoke <java.lang.Integer: java.lang.Integer decode(java.lang.String)>(r4) 
(assert (not (not (= var3719 null-String)))) ; Negate: Cond: r4 != null  
(declare-const var1288 var909) ; Statement: $r6 := @caughtexception 
(assert (not (= var1288 null-var909)))
(define-const var3800 var3125 var3125-init) ; Statement: $r16 = new org.hibernate.AnnotationException 
(define-const var3573 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3573)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3573!1 String)
(assert (= var3573!1 ""))
(assert true)
(define-const var3371 String (append/672562846 var3573!1 "Not an integer in hint: ")) ; Statement: $r10 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not an integer in hint: ") 
(declare-const var3573!2 String)
(assert (= var3573!2 (str.++ var3573!1 "Not an integer in hint: ")))
(assert true)
(define-const var2074 String (append/672562846 var3371 var1566)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var3371!1 String)
(assert (= var3371!1 (str.++ var3371 var1566)))
(assert true)
(define-const var112 String (append/672562846 var2074 ":")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2074!1 String)
(assert (= var2074!1 (str.++ var2074 ":")))
(assert true)
(define-const var440 String (append/672562846 var112 var1759)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var112!1 String)
(assert (= var112!1 (str.++ var112 var1759)))
(assert true)
(define-const var3446 String (toString/-2075883882 var440)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1911126280 var3800 var3446 (cast-from-var909-to-var1878 var1288))) ; Statement: specialinvoke $r16.<org.hibernate.AnnotationException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6) 

(declare-const var3800!1 var3125)
(declare-const var3446!1 String)
(declare-const var1288!1 var909)
(define-const var3063 var1878 (cast-from-var3125-to-var1878 var3800!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {hintsMap/1454767496=([org.hibernate.cfg.annotations.QueryHintDefinition], java.util.Map), var3_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var716=([java.lang.String], java.lang.Object), cast-from-var716-to-String=([java.lang.Object], java.lang.String), var3125-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1911126280=([org.hibernate.AnnotationException, java.lang.String, java.lang.Throwable], void), cast-from-var909-to-var1878=([java.lang.NumberFormatException], java.lang.Throwable), cast-from-var3125-to-var1878=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var3746=org.hibernate.cfg.annotations.QueryHintDefinition, var3083=r0, var1566=r9, var2482=null_type, var1759=r1, var3=java.util.Map, var3832=$r2, var716=java.lang.Object, var3512=$r3, var3719=r4, var909=java.lang.NumberFormatException, var1288=$r6, var3125=org.hibernate.AnnotationException, var3800=$r16, var3573=$r15, var3371=$r10, var2074=$r11, var112=$r12, var440=$r13, var3446=$r14, var1878=java.lang.Throwable, var3063=$r17}
; {org.hibernate.cfg.annotations.QueryHintDefinition=var3746, r0=var3083, r9=var1566, null_type=var2482, r1=var1759, java.util.Map=var3, $r2=var3832, java.lang.Object=var716, $r3=var3512, r4=var3719, java.lang.NumberFormatException=var909, $r6=var1288, org.hibernate.AnnotationException=var3125, $r16=var3800, $r15=var3573, $r10=var3371, $r11=var2074, $r12=var112, $r13=var440, $r14=var3446, java.lang.Throwable=var1878, $r17=var3063}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.annotations.QueryHintDefinition;	r9 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.cfg.annotations.QueryHintDefinition: java.util.Map hintsMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.String) $r3;	if r4 != null goto $r5 = staticinvoke <java.lang.Integer: java.lang.Integer decode(java.lang.String)>(r4);	$r6 := @caughtexception;	$r16 = new org.hibernate.AnnotationException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not an integer in hint: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.AnnotationException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2
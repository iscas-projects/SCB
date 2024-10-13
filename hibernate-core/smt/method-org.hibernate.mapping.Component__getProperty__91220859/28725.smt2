(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var38 0)
(declare-sort var1847 0)
(declare-sort var2477 0)
(declare-sort var3408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPropertyIterator/1485504885 (var38) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2477-init () var2477)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun componentClassName/1659079959 (var38) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2477 String) void)
(declare-fun cast-from-var2477-to-var3408 (var2477) var3408)
(declare-const null-var38 var38)
(declare-const null-String String)
(declare-const var3797 var38) ; Statement: r0 := @this: org.hibernate.mapping.Component 
(assert (not (= var3797 null-var38)))
(declare-const var768 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var768 null-String)))
(assert true)
(define-const var2384 Iterator (getPropertyIterator/1485504885 var3797)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.mapping.Component: java.util.Iterator getPropertyIterator()>() 
(assert true) ; Non Conditional
(define-const var3915 Bool (Iterator_hasNext/-1669924200 var2384)) ; Statement: $z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r15 = new org.hibernate.MappingException 
(assert (= (ite var3915 1 0) 0)) ; Cond: $z0 == 0 
(define-const var779 var2477 var2477-init) ; Statement: $r15 = new org.hibernate.MappingException 
(define-const var449 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var449)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var449!1 String)
(assert (= var449!1 ""))
(assert true)
(define-const var2223 String (append/672562846 var449!1 "component: ")) ; Statement: $r5 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("component: ") 
(declare-const var449!2 String)
(assert (= var449!2 (str.++ var449!1 "component: ")))
(define-const var806 String (componentClassName/1659079959 var3797)) ; Statement: $r4 = r0.<org.hibernate.mapping.Component: java.lang.String componentClassName> 
(assert true)
(define-const var1808 String (append/672562846 var2223 var806)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2223!1 String)
(assert (= var2223!1 (str.++ var2223 var806)))
(assert true)
(define-const var2318 String (append/672562846 var1808 " property not found: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" property not found: ") 
(declare-const var1808!1 String)
(assert (= var1808!1 (str.++ var1808 " property not found: ")))
(assert true)
(define-const var127 String (append/672562846 var2318 var768)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var2318!1 String)
(assert (= var2318!1 (str.++ var2318 var768)))
(assert true)
(define-const var2906 String (toString/-2075883882 var127)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var779 var2906)) ; Statement: specialinvoke $r15.<org.hibernate.MappingException: void <init>(java.lang.String)>($r10) 

(declare-const var779!1 var2477)
(declare-const var2906!1 String)
(define-const var1162 var3408 (cast-from-var2477-to-var3408 var779!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyIterator/1485504885=([org.hibernate.mapping.Component], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2477-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), componentClassName/1659079959=([org.hibernate.mapping.Component], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2477-to-var3408=([org.hibernate.MappingException], java.lang.Throwable)}
; {var38=org.hibernate.mapping.Component, var3797=r0, var768=r7, var1847=null_type, var2384=r1, var3915=$z0, var2477=org.hibernate.MappingException, var779=$r15, var449=$r14, var2223=$r5, var806=$r4, var1808=$r6, var2318=$r8, var127=$r9, var2906=$r10, var3408=java.lang.Throwable, var1162=$r16}
; {org.hibernate.mapping.Component=var38, r0=var3797, r7=var768, null_type=var1847, r1=var2384, $z0=var3915, org.hibernate.MappingException=var2477, $r15=var779, $r14=var449, $r5=var2223, $r4=var806, $r6=var1808, $r8=var2318, $r9=var127, $r10=var2906, java.lang.Throwable=var3408, $r16=var1162}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.Component;	r7 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<org.hibernate.mapping.Component: java.util.Iterator getPropertyIterator()>();	$z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r15 = new org.hibernate.MappingException;	$r15 = new org.hibernate.MappingException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("component: ");	$r4 = r0.<org.hibernate.mapping.Component: java.lang.String componentClassName>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" property not found: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.MappingException: void <init>(java.lang.String)>($r10);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 3
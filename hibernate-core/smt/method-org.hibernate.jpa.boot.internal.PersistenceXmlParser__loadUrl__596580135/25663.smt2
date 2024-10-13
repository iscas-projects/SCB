(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2165 0)
(declare-sort var2107 0)
(declare-sort var774 0)
(declare-sort var3450 0)
(declare-sort var1553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toExternalForm/431506284 (var2107) String)
(declare-fun var3450-init () var3450)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-663296835 (var3450 String var1553) void)
(declare-fun cast-from-var774-to-var1553 (var774) var1553)
(declare-fun cast-from-var3450-to-var1553 (var3450) var1553)
(declare-const null-var2165 var2165)
(declare-const null-var2107 var2107)
(declare-const null-var774 var774)
(declare-const var2698 var2165) ; Statement: r3 := @this: org.hibernate.jpa.boot.internal.PersistenceXmlParser 
(assert (not (= var2698 null-var2165)))
(declare-const var3744 var2107) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var3744 null-var2107)))
(assert true)
(define-const var520 String (toExternalForm/431506284 var3744)) ; Statement: r1 = virtualinvoke r0.<java.net.URL: java.lang.String toExternalForm()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var143 var774) ; Statement: $r5 := @caughtexception 
(assert (not (= var143 null-var774)))
(define-const var2371 var3450 var3450-init) ; Statement: $r41 = new javax.persistence.PersistenceException 
(define-const var1212 String String-init) ; Statement: $r40 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1212)) ; Statement: specialinvoke $r40.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1212!1 String)
(assert (= var1212!1 ""))
(assert true)
(define-const var3763 String (append/672562846 var1212!1 "Unable to access [")) ; Statement: $r8 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to access [") 
(declare-const var1212!2 String)
(assert (= var1212!2 (str.++ var1212!1 "Unable to access [")))
(assert true)
(define-const var1849 String (append/672562846 var3763 var520)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3763!1 String)
(assert (= var3763!1 (str.++ var3763 var520)))
(assert true)
(define-const var3941 String (append/672562846 var1849 "]")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1849!1 String)
(assert (= var1849!1 (str.++ var1849 "]")))
(assert true)
(define-const var3370 String (toString/-2075883882 var3941)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-663296835 var2371 var3370 (cast-from-var774-to-var1553 var143))) ; Statement: specialinvoke $r41.<javax.persistence.PersistenceException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var2371!1 var3450)
(declare-const var3370!1 String)
(declare-const var143!1 var774)
(define-const var1575 var1553 (cast-from-var3450-to-var1553 var2371!1)) ; Statement: $r45 = (java.lang.Throwable) $r41 
 ; Statement: throw $r45 
(check-sat)
(get-model)
(get-unsat-core)
; {toExternalForm/431506284=([java.net.URL], java.lang.String), var3450-init=([], javax.persistence.PersistenceException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-663296835=([javax.persistence.PersistenceException, java.lang.String, java.lang.Throwable], void), cast-from-var774-to-var1553=([java.io.IOException], java.lang.Throwable), cast-from-var3450-to-var1553=([javax.persistence.PersistenceException], java.lang.Throwable)}
; {var2165=org.hibernate.jpa.boot.internal.PersistenceXmlParser, var2698=r3, var2107=java.net.URL, var3744=r0, var520=r1, var774=java.io.IOException, var143=$r5, var3450=javax.persistence.PersistenceException, var2371=$r41, var1212=$r40, var3763=$r8, var1849=$r9, var3941=$r10, var3370=$r11, var1553=java.lang.Throwable, var1575=$r45}
; {org.hibernate.jpa.boot.internal.PersistenceXmlParser=var2165, r3=var2698, java.net.URL=var2107, r0=var3744, r1=var520, java.io.IOException=var774, $r5=var143, javax.persistence.PersistenceException=var3450, $r41=var2371, $r40=var1212, $r8=var3763, $r9=var1849, $r10=var3941, $r11=var3370, java.lang.Throwable=var1553, $r45=var1575}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.jpa.boot.internal.PersistenceXmlParser;	r0 := @parameter0: java.net.URL;	r1 = virtualinvoke r0.<java.net.URL: java.lang.String toExternalForm()>();	$r5 := @caughtexception;	$r41 = new javax.persistence.PersistenceException;	$r40 = new java.lang.StringBuilder;	specialinvoke $r40.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to access [");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r41.<javax.persistence.PersistenceException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	$r45 = (java.lang.Throwable) $r41;	throw $r45
;block_num 2
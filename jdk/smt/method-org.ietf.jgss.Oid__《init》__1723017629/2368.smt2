(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var961 0)
(declare-sort var909 0)
(declare-sort var1810 0)
(declare-sort var2939 0)
(declare-sort var3783 0)
(declare-sort var2484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1810) void)
(declare-fun cast-from-var961-to-var1810 (var961) var1810)
(declare-fun var2939-init () var2939)
(declare-fun var2484-init () var2484)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1745481082 (var2484 Int String) void)
(declare-const null-var961 var961)
(declare-const null-String String)
(declare-const null-var3783 var3783)
(declare-const var1128 var961) ; Statement: r0 := @this: org.ietf.jgss.Oid 
(assert (not (= var1128 null-var961)))
(declare-const var2483 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2483 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var961-to-var1810 var1128))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1128!1 var961)
(define-const var2135 var2939 var2939-init) ; Statement: $r1 = new sun.security.util.ObjectIdentifier 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1401 var3783) ; Statement: $r3 := @caughtexception 
(assert (not (= var1401 null-var3783)))
(define-const var2977 var2484 var2484-init) ; Statement: $r4 = new org.ietf.jgss.GSSException 
(define-const var2786 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2786)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2786!1 String)
(assert (= var2786!1 ""))
(assert true)
(define-const var3474 String (append/672562846 var2786!1 "Improperly formatted Object Identifier String - ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Improperly formatted Object Identifier String - ") 
(declare-const var2786!2 String)
(assert (= var2786!2 (str.++ var2786!1 "Improperly formatted Object Identifier String - ")))
(assert true)
(define-const var1632 String (append/672562846 var3474 var2483)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3474!1 String)
(assert (= var3474!1 (str.++ var3474 var2483)))
(assert true)
(define-const var901 String (toString/-2075883882 var1632)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1745481082 var2977 11 var901)) ; Statement: specialinvoke $r4.<org.ietf.jgss.GSSException: void <init>(int,java.lang.String)>(11, $r8) 

(declare-const var2977!1 var2484)
(declare-const var947 Int)
(declare-const var901!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var961-to-var1810=([org.ietf.jgss.Oid], java.lang.Object), var2939-init=([], sun.security.util.ObjectIdentifier), var2484-init=([], org.ietf.jgss.GSSException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1745481082=([org.ietf.jgss.GSSException, int, java.lang.String], void)}
; {var961=org.ietf.jgss.Oid, var1128=r0, var2483=r2, var909=null_type, var1810=java.lang.Object, var2939=sun.security.util.ObjectIdentifier, var2135=$r1, var3783=java.lang.Exception, var1401=$r3, var2484=org.ietf.jgss.GSSException, var2977=$r4, var2786=$r5, var3474=$r6, var1632=$r7, var901=$r8, var947=11}
; {org.ietf.jgss.Oid=var961, r0=var1128, r2=var2483, null_type=var909, java.lang.Object=var1810, sun.security.util.ObjectIdentifier=var2939, $r1=var2135, java.lang.Exception=var3783, $r3=var1401, org.ietf.jgss.GSSException=var2484, $r4=var2977, $r5=var2786, $r6=var3474, $r7=var1632, $r8=var901, 11=var947}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.ietf.jgss.Oid;	r2 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new sun.security.util.ObjectIdentifier;	$r3 := @caughtexception;	$r4 = new org.ietf.jgss.GSSException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Improperly formatted Object Identifier String - ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.ietf.jgss.GSSException: void <init>(int,java.lang.String)>(11, $r8);	throw $r4
;block_num 2
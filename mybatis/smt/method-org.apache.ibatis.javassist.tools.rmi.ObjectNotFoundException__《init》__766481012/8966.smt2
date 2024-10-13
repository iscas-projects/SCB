(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2692 0)
(declare-sort var3852 0)
(declare-sort var3767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var3767 String) void)
(declare-fun cast-from-var2692-to-var3767 (var2692) var3767)
(declare-const null-var2692 var2692)
(declare-const null-String String)
(declare-const var170 var2692) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.rmi.ObjectNotFoundException 
(assert (not (= var170 null-var2692)))
(declare-const var3395 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3395 null-String)))
(define-const var193 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var193)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var193!1 String)
(assert (= var193!1 ""))
(assert true)
(define-const var3669 String (append/672562846 var193!1 var3395)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var193!2 String)
(assert (= var193!2 (str.++ var193!1 var3395)))
(assert true)
(define-const var1732 String (append/672562846 var3669 " is not exported")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not exported") 
(declare-const var3669!1 String)
(assert (= var3669!1 (str.++ var3669 " is not exported")))
(assert true)
(define-const var2197 String (toString/-2075883882 var1732)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 (cast-from-var2692-to-var3767 var170) var2197)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r5) 

(declare-const var170!1 var2692)
(declare-const var2197!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var2692-to-var3767=([org.apache.ibatis.javassist.tools.rmi.ObjectNotFoundException], java.lang.Exception)}
; {var2692=org.apache.ibatis.javassist.tools.rmi.ObjectNotFoundException, var170=r0, var3395=r2, var3852=null_type, var193=$r1, var3669=$r3, var1732=$r4, var2197=$r5, var3767=java.lang.Exception}
; {org.apache.ibatis.javassist.tools.rmi.ObjectNotFoundException=var2692, r0=var170, r2=var3395, null_type=var3852, $r1=var193, $r3=var3669, $r4=var1732, $r5=var2197, java.lang.Exception=var3767}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.rmi.ObjectNotFoundException;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not exported");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r5);	return
;block_num 1
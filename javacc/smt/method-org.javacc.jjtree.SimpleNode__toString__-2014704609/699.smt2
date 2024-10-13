(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3036 0)
(declare-sort var1027 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/2055603450 (var3036) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3036 var3036)
(declare-const null-String String)
(declare-const var1791 var3036) ; Statement: r2 := @this: org.javacc.jjtree.SimpleNode 
(assert (not (= var1791 null-var3036)))
(declare-const var2472 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2472 null-String)))
(define-const var21 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var21)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var21!1 String)
(assert (= var21!1 ""))
(assert true)
(define-const var2542 String (append/672562846 var21!1 var2472)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var21!2 String)
(assert (= var21!2 (str.++ var21!1 var2472)))
(assert true)
(define-const var3115 String (toString/2055603450 var1791)) ; Statement: $r3 = virtualinvoke r2.<org.javacc.jjtree.SimpleNode: java.lang.String toString()>() 
(assert true)
(define-const var2229 String (append/672562846 var2542 var3115)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2542!1 String)
(assert (= var2542!1 (str.++ var2542 var3115)))
(assert true)
(define-const var2963 String (toString/-2075883882 var2229)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/2055603450=([org.javacc.jjtree.SimpleNode], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3036=org.javacc.jjtree.SimpleNode, var1791=r2, var2472=r1, var1027=null_type, var21=$r0, var2542=$r4, var3115=$r3, var2229=$r5, var2963=$r6}
; {org.javacc.jjtree.SimpleNode=var3036, r2=var1791, r1=var2472, null_type=var1027, $r0=var21, $r4=var2542, $r3=var3115, $r5=var2229, $r6=var2963}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.javacc.jjtree.SimpleNode: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.javacc.jjtree.SimpleNode;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke r2.<org.javacc.jjtree.SimpleNode: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
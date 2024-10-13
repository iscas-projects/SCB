(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2782 0)
(declare-sort var9 0)
(declare-sort var198 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var9_generateAliasRoot/-1683017442 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var198_get/91882594 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2267 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2267 null-String)))
(declare-const var3803 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3803 null-Int)))
(define-const var2846 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2846)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2846!1 String)
(assert (= var2846!1 ""))
(define-const var490 String (var9_generateAliasRoot/-1683017442 var2267)) ; Statement: $r2 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String generateAliasRoot(java.lang.String)>(r1) 
(assert true)
(define-const var1682 String (append/672562846 var2846!1 var490)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2846!2 String)
(assert (= var2846!2 (str.++ var2846!1 var490)))
(define-const var2704 String (var198_get/91882594 var3803)) ; Statement: $r3 = staticinvoke <org.hibernate.loader.internal.AliasConstantsHelper: java.lang.String get(int)>(i0) 
(assert true)
(define-const var3456 String (append/672562846 var1682 var2704)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1682!1 String)
(assert (= var1682!1 (str.++ var1682 var2704)))
(assert true)
(define-const var734 String (toString/-2075883882 var3456)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var9_generateAliasRoot/-1683017442=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var198_get/91882594=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2267=r1, var2782=null_type, var3803=i0, var2846=$r0, var9=org.hibernate.internal.util.StringHelper, var490=$r2, var1682=$r4, var198=org.hibernate.loader.internal.AliasConstantsHelper, var2704=$r3, var3456=$r5, var734=$r6}
; {r1=var2267, null_type=var2782, i0=var3803, $r0=var2846, org.hibernate.internal.util.StringHelper=var9, $r2=var490, $r4=var1682, org.hibernate.loader.internal.AliasConstantsHelper=var198, $r3=var2704, $r5=var3456, $r6=var734}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String generateAliasRoot(java.lang.String)>(r1);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = staticinvoke <org.hibernate.loader.internal.AliasConstantsHelper: java.lang.String get(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2176 0)
(declare-sort var2814 0)
(declare-sort var25 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2814-init () var2814)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var25) ClassObject)
(declare-fun cast-from-var2176-to-var25 (var2176) var25)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2814 String) void)
(declare-const null-var2176 var2176)
(declare-const null-Int Int)
(declare-const var1994 var2176) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$Builder 
(assert (not (= var1994 null-var2176)))
(declare-const var3996 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3996 null-Int)))
(define-const var31 var2814 var2814-init) ; Statement: $r0 = new java.lang.RuntimeException 
(define-const var3559 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3559)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3559!1 String)
(assert (= var3559!1 ""))
(assert true)
(define-const var1721 String (append/672562846 var3559!1 "No map fields found in ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No map fields found in ") 
(declare-const var3559!2 String)
(assert (= var3559!2 (str.++ var3559!1 "No map fields found in ")))
(assert true)
(define-const var1990 ClassObject (getClass/1258963082 (cast-from-var2176-to-var25 var1994))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var4 String (getName/-1958580599 var1990)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var11 String (append/672562846 var1721 var4)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1721!1 String)
(assert (= var1721!1 (str.++ var1721 var4)))
(assert true)
(define-const var2237 String (toString/-2075883882 var11)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var31 var2237)) ; Statement: specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7) 

(declare-const var31!1 var2814)
(declare-const var2237!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2814-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2176-to-var25=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$Builder], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2176=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$Builder, var1994=r2, var3996=i0, var2814=java.lang.RuntimeException, var31=$r0, var3559=$r1, var1721=$r5, var25=java.lang.Object, var1990=$r3, var4=$r4, var11=$r6, var2237=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$Builder=var2176, r2=var1994, i0=var3996, java.lang.RuntimeException=var2814, $r0=var31, $r1=var3559, $r5=var1721, java.lang.Object=var25, $r3=var1990, $r4=var4, $r6=var11, $r7=var2237}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$Builder;	i0 := @parameter0: int;	$r0 = new java.lang.RuntimeException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No map fields found in ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1
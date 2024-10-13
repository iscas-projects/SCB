(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3889 0)
(declare-sort var3327 0)
(declare-sort var3761 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3327-init () var3327)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3761) ClassObject)
(declare-fun cast-from-var3889-to-var3761 (var3889) var3761)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3327 String) void)
(declare-const null-var3889 var3889)
(declare-const null-Int Int)
(declare-const var987 var3889) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$Builder 
(assert (not (= var987 null-var3889)))
(declare-const var3369 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3369 null-Int)))
(define-const var1744 var3327 var3327-init) ; Statement: $r0 = new java.lang.RuntimeException 
(define-const var1497 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1497)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1497!1 String)
(assert (= var1497!1 ""))
(assert true)
(define-const var244 String (append/672562846 var1497!1 "No map fields found in ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No map fields found in ") 
(declare-const var1497!2 String)
(assert (= var1497!2 (str.++ var1497!1 "No map fields found in ")))
(assert true)
(define-const var284 ClassObject (getClass/1258963082 (cast-from-var3889-to-var3761 var987))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1214 String (getName/-1958580599 var284)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2333 String (append/672562846 var244 var1214)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var244!1 String)
(assert (= var244!1 (str.++ var244 var1214)))
(assert true)
(define-const var888 String (toString/-2075883882 var2333)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1744 var888)) ; Statement: specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7) 

(declare-const var1744!1 var3327)
(declare-const var888!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3327-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3889-to-var3761=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$Builder], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3889=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$Builder, var987=r2, var3369=i0, var3327=java.lang.RuntimeException, var1744=$r0, var1497=$r1, var244=$r5, var3761=java.lang.Object, var284=$r3, var1214=$r4, var2333=$r6, var888=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$Builder=var3889, r2=var987, i0=var3369, java.lang.RuntimeException=var3327, $r0=var1744, $r1=var1497, $r5=var244, java.lang.Object=var3761, $r3=var284, $r4=var1214, $r6=var2333, $r7=var888}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$Builder;	i0 := @parameter0: int;	$r0 = new java.lang.RuntimeException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No map fields found in ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1